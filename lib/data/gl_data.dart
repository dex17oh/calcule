import '../models/module.dart';

final Map<String, Map<String, List<Module>>> glProgrammes = {
  "M1": {
    "S1": [
      //UE fondamentales1
      Module(
        nom: "Génie Logiciel Avancé",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Programmation Fonctionnelle",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),

      //UE fondamentales 2
      Module(
        nom: "BDD avancées & DN",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Architecture et administration de SGBD",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      // UE méthodologie
      Module(
        nom: "Complexité Algorithmique",
        coeff: 2,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Gestion de la qualité",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE découverte
      Module(
        nom: "Logique pour l'IA",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE transversales
      Module(
        nom: "Anglais technique",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],
    "S2": [
      //UE fondamentales 1
      Module(
        nom: "Spécification et Conception Logicielle",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Architecture et Développement logicielle",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      //UE fondamentales2
      Module(
        nom: "Construction d'Applications Réparties",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Programmation web",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      Module(
        nom: "Fondements de l'Intelligence Artificielle",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE méthodologie
      Module(
        nom: "Validation formelle des sys informatique",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Mathématiques Appliquées",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE découverte
      Module(
        nom: "Sécurité Informatique",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      //UE transversale
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
      //UE fondamentales
      Module(
        nom: " dev app mob sous android",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Maintenance logicielle",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "XML Avancé et Web 2.0",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      //UE méthodologie
      Module(
        nom: "Gestion de projet",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Techniques d'expression et rédaction scientifique",
        coeff: 2,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),

      //UE découverte
      Module(
        nom: "Législation et Déontologie de travaile",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      //UE tranşversales
      Module(
        nom: "Anglais 3",
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
