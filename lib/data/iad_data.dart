import '../models/module.dart';

final Map<String, Map<String, List<Module>>> iadProgrammes = {
  "M1": {
    "S1": [
      Module(
        nom: "Apprentissage Artificiel",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Calcul différentiel et optimisation",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux de neurones et AP1",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Analyse de Données",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Bases de données avancées et Data Mining",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Modèles graphiques probabilistes",
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
        nom: "Python",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
    ],

    "S2": [
      Module(
        nom: "Réseaux de neurones et AP2",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Représentation des connaissances et raisonnement",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Fondements du Data Science",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Analyse et Traitement des Images Numériques",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Modélisation et simulation",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Bases de données NoSQL et Fast Data",
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
      Module(
        nom: "Programmation Orientée Objet Avancée",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
    ],
  },

  "M2": {
    "S3": [
      Module(
        nom: "Traitement Automatique des Langues Naturelles",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Intelligence décisionnelle",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Blockchain",
        coeff: 3,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Sécurité des données",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Transformation digitale",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      Module(
        nom: "Vision par ordinateur",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Systèmes multi-agents",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Méthodologie de la rédaction scientifique",
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

    // S4 = Stage → pas de saisie de notes
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
