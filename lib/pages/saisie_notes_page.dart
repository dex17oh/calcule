import 'package:flutter/material.dart';
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
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text("Erreur"),
            content: Text("Toutes les notes doivent être entre 0 et 20"),
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
      appBar: AppBar(
        title: Text("${widget.specialite} ${widget.annee} ${widget.semestre}"),
      ),
      body: modules.isEmpty
          ? Center(child: Text("Semestre non encore configuré"))
          : SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ...modules.map(
                    (m) => Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              m.nom,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              controller: examCtrl[m.nom],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(labelText: "Examen"),
                            ),
                            if (m.hasTD)
                              TextField(
                                controller: tdCtrl[m.nom],
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(labelText: "TD"),
                              ),
                            if (m.hasTP)
                              TextField(
                                controller: tpCtrl[m.nom],
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(labelText: "TP"),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: calculer, child: Text("Calculer")),
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
}
