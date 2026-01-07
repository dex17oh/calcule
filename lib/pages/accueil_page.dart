import 'package:flutter/material.dart';
import 'choix_annee_page.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcul Moyenne Université !"),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choisissez la spécialité", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Intelligence Artificielle & Digitalisation"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChoixAnneePage(specialite: "IAD"),
                  ),
                );
              },
            ),

            SizedBox(height: 10),

            ElevatedButton(
              child: Text("Génie Logiciel"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChoixAnneePage(specialite: "GL"),
                  ),
                );
              },
            ),

            SizedBox(height: 10),

            ElevatedButton(
              child: Text("Génie Informatique"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChoixAnneePage(specialite: "GI"),
                  ),
                );
              },
            ),

            SizedBox(height: 10),

            ElevatedButton(
              child: Text("Réseaux & Télécom"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChoixAnneePage(specialite: "RT"),
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
