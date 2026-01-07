import '../models/module.dart';

final Map<String, Map<String, List<Module>>> giProgrammes = {
  "M1": {
    "S1": [
      Module(
        nom: "Architecture des ordinateurs avancée",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Systèmes d'exploitation avancés",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Compilation",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux informatiques",
        coeff: 2,
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
        nom: "Anglais technique",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],
    "S2": [
      Module(
        nom: "Systèmes distribués",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Sécurité informatique",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Virtualisation et cloud",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Développement mobile",
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
        nom: "Systèmes embarqués",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Sécurité avancée",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Big Data",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Administration systèmes",
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
