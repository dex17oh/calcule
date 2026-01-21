import 'package:flutter/material.dart';
import 'package:moyenne_app/widgets/appbar/appBar.dart';
import 'package:moyenne_app/widgets/textfield/textfield.dart';
import '../data/programmes.dart';
import '../models/module.dart';
import '../models/notes.dart';
import '../logic/calcul.dart';

class SaisieNotesPage extends StatefulWidget {
  final String specialite;
  final String annee;
  final String semestre;

  SaisieNotesPage({
    required this.specialite,
    required this.annee,
    required this.semestre,
  });

  @override
  State<SaisieNotesPage> createState() => _SaisieNotesPageState();
}

class _SaisieNotesPageState extends State<SaisieNotesPage> {
  late List<Module> modules;

  final Map<String, TextEditingController> examCtrl = {};
  final Map<String, TextEditingController> tdCtrl = {};
  final Map<String, TextEditingController> tpCtrl = {};

  double moyenne = 0;
  String decision = "";

  @override
  void initState() {
    super.initState();
    modules =
        programmes[widget.specialite]?[widget.annee]?[widget.semestre] ?? [];

    for (var m in modules) {
      examCtrl[m.nom] = TextEditingController();
      tdCtrl[m.nom] = TextEditingController();
      tpCtrl[m.nom] = TextEditingController();
    }
  }

  void calculer() {
    double sum = 0;
    double sumCoeff = 0;

    for (var m in modules) {
      double exam = double.tryParse(examCtrl[m.nom]!.text) ?? -1;
      double? td = m.hasTD ? double.tryParse(tdCtrl[m.nom]!.text) : null;
      double? tp = m.hasTP ? double.tryParse(tpCtrl[m.nom]!.text) : null;

      if (!noteValide(exam) ||
          (m.hasTD && (td == null || !noteValide(td))) ||
          (m.hasTP && (tp == null || !noteValide(tp)))) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Toutes les notes doivent être entre 0 et 20"),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
        return;
      }

      double noteModule = calculerNoteModule(
        m,
        Notes(exam: exam, td: td, tp: tp),
      );

      sum += noteModule * m.coeff;
      sumCoeff += m.coeff;
    }

    setState(() {
      moyenne = sum / sumCoeff;
      decision = moyenne >= 10 ? "✅ Admis" : "❌ Ajourné";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F6F9),
      appBar: CustomAppBar(
        title: "${widget.specialite} ${widget.annee} ${widget.semestre}",
      ),
      body: modules.isEmpty
          ? Center(child: Text("Semestre non encore configuré"))
          : SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ...modules.map(
                    (m) => Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(m),
                            Row(
                              children: [
                                if (m.hasTD)
                                  Expanded(
                                    child: Textfield(
                                      examCtrl: tdCtrl,
                                      m: m,
                                      label: "TD",
                                    ),
                                  ),

                                if (m.hasTP)
                                  Expanded(
                                    child: Textfield(
                                      examCtrl: tpCtrl,
                                      m: m,
                                      label: "TP",
                                    ),
                                  ),
                              ],
                            ),
                            Textfield(examCtrl: examCtrl, m: m, label: "Exams"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  actionButton("Calculer la moyenne", calculer),

                  SizedBox(height: 20),
                  Text(
                    "Moyenne : ${moyenne.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(decision, style: TextStyle(fontSize: 22)),
                ],
              ),
            ),
    );
  }

  ElevatedButton calc() =>
      ElevatedButton(onPressed: calculer, child: Text("Calculer"));

  Widget actionButton(String title, VoidCallback onTap) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: Colors.blue.shade600,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container text(Module m) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        m.nom,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
