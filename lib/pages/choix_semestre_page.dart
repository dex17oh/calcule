import 'package:flutter/material.dart';
import 'package:moyenne_app/widgets/appbar/appBar.dart';
import 'saisie_notes_page.dart';

class ChoixSemestrePage extends StatelessWidget {
  final String specialite;
  final String annee;

  ChoixSemestrePage({required this.specialite, required this.annee});

  @override
  Widget build(BuildContext context) {
    final semestres = annee == "M1" ? ["S1", "S2"] : ["S3", "S4"];

    return Scaffold(
      backgroundColor: const Color(0xFFF1F6F9),
      appBar: const CustomAppBar(title: "Choix du semestre"),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: semestres.length,
        itemBuilder: (context, index) {
          final s = semestres[index];

          return Card(
            color: Colors.white,
            elevation: 0.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Icon(
                Icons.calendar_month,
                color: Color(0xFF5FA8B6),
                size: 30,
              ),
              title: Text(
                s,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xFF5FA8B6),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SaisieNotesPage(
                      specialite: specialite,
                      annee: annee,
                      semestre: s,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
