import 'package:flutter/material.dart';
import 'choix_semestre_page.dart';

class ChoixAnneePage extends StatelessWidget {
  final String specialite;

  ChoixAnneePage({required this.specialite});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choix de l'année")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Master 1"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        ChoixSemestrePage(specialite: specialite, annee: "M1"),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Master 2"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        ChoixSemestrePage(specialite: specialite, annee: "M2"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
