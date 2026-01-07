import '../models/module.dart';

final Map<String, Map<String, List<Module>>> glProgrammes = {
  "M1": {
    "S1": [
      Module(
        nom: "Génie Logiciel Avancé",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Méthodes Formelles",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Conception Orientée Objet",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Bases de données avancées",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Systèmes d'information",
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
      Module(
        nom: "Programmation avancée",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
    ],
    "S2": [
      Module(
        nom: "Qualité logicielle et tests",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Architecture logicielle",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Gestion de projet logiciel",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Développement web avancé",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Sécurité des applications",
        coeff: 2,
        hasTD: true,
        hasTP: false,
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
        nom: "Ingénierie des exigences",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "DevOps",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Refactoring et maintenance",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Audit logiciel",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Méthodologie de recherche",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      Module(
        nom: "Conduite de projet",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
    ],
    "S4": [
      Module(
        nom: "PROJET FIN ETUDE",
        coeff: 5,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      )
    ],
  },
};
