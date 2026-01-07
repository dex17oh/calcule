import '../models/module.dart';

final Map<String, Map<String, List<Module>>> rtProgrammes = {
  "M1": {
    "S1": [
      Module(
        nom: "Routage et commutation",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux sans fil",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Transmission de données",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Systèmes temps réel",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Anglais technique",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],
    "S2": [
      Module(
        nom: "Sécurité des réseaux",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux optiques",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Administration réseaux",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "VoIP et multimédia",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Anglais technique 2",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],
  },

  "M2": {
    "S3": [
      Module(
        nom: "Réseaux mobiles",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Sécurité avancée des réseaux",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Cloud et virtualisation",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Supervision réseaux",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Méthodologie de recherche",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],
    "S4": [
      Module(
        nom: "PROJET FIN ETUDE",
        coeff: 5,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],
  },
};
