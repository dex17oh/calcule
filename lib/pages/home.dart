import 'package:flutter/material.dart';
import 'package:moyenne_app/pages/profile/profile.dart';
import 'package:moyenne_app/widgets/bottomNavigationBare/bar_item.dart';
import 'package:moyenne_app/widgets/bottomNavigationBare/build_nav_bar.dart';
import 'choix_annee_page.dart';

class AccueilPage extends StatefulWidget {
  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  int selectedIndex = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F6F9),
      appBar: appBar(),

      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [buildSpecialites(), Profile()],
      ),

      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: Colors.white,
        selectedIndex: selectedIndex,
        onItemSelected: (index) {
          setState(() => selectedIndex = index);
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutQuad,
          );
        },
        barItems: [
          BarItem(
            filledIcon: Icons.home_rounded,
            outlinedIcon: Icons.home_outlined,
          ),
          BarItem(
            filledIcon: Icons.person_rounded,
            outlinedIcon: Icons.person_outline,
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: Colors.white, size: 24),
      ),
      backgroundColor: Color(0xFF2F6690),
      title: Text(
        selectedIndex == 0 ? "Home" : "Profile",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontFamily: "Roboto"
        ),
      ),
      centerTitle: true,
      toolbarHeight: 52,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, color: Colors.white, size: 24),
        ),
      ],
    );
  }

  Widget buildSpecialites() {
    final List<Map<String, dynamic>> specialites = [
      {
        "name": "Intelligence Artificielle & Digitalisation",
        "code": "IAD",
        "icon": Icons.psychology_alt,
      },
      {"name": "Génie Logiciel", "code": "GL", "icon": Icons.code},
      {"name": "Génie Informatique", "code": "GI", "icon": Icons.computer},
      {"name": "Réseaux & Télécom", "code": "RT", "icon": Icons.wifi},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: specialites.length,
      itemBuilder: (context, index) {
        final sp = specialites[index];

        return Card(
          color: Colors.white,
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            leading: Icon(
              sp["icon"],
              color: Color.fromARGB(255, 66, 112, 147),
              size: 30,
            ),
            title: Text(
              sp["name"],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFF2F6690),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChoixAnneePage(specialite: sp["code"]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
