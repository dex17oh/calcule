import 'package:flutter/material.dart';
import 'package:moyenne_app/widgets/appbar/appBar.dart';
import 'choix_semestre_page.dart';

class ChoixAnneePage extends StatelessWidget {
  final String specialite;

  ChoixAnneePage({required this.specialite});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F6F9),
      appBar: const CustomAppBar(title: "Choix de l'année"),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: Colors.white,
            elevation: 0.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Icon(Icons.school, color: Color(0xFF5FA8B6), size: 30),
              title: const Text(
                "Master 1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    builder: (_) =>
                        ChoixSemestrePage(specialite: specialite, annee: "M1"),
                  ),
                );
              },
            ),
          ),

          Card(
            color: Colors.white,
            elevation: 0.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Icon(
                Icons.school_outlined,
                color: Color(0xFF5FA8B6),
                size: 30,
              ),
              title: const Text(
                "Master 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    builder: (_) =>
                        ChoixSemestrePage(specialite: specialite, annee: "M2"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
