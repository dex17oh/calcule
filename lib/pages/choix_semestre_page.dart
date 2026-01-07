import 'package:flutter/material.dart';
import 'saisie_notes_page.dart';

class ChoixSemestrePage extends StatelessWidget {
  final String specialite;
  final String annee;

  ChoixSemestrePage({required this.specialite, required this.annee});

  @override
  Widget build(BuildContext context) {
    final semestres = annee == "M1" ? ["S1", "S2"] : ["S3", "S4"];

    return Scaffold(
      appBar: AppBar(title: Text("Choix du semestre")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: semestres
              .map(
                (s) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text(s),
                    onPressed: () {
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
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
