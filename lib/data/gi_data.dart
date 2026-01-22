import '../models/module.dart';

final Map<String, Map<String, List<Module>>> giProgrammes = {
  "M1": {
    "S1": [
      //UE Fondamentales 1
      Module(
        nom: "Logique pour intelligence artificielle",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Systèmes à Base de Connaissances",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      //UE Fondamentales 2
      Module(
        nom: "Methd simulation Evént discrets",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Application des graphes à la RO",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      Module(
        nom: "Optimisation en RO",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE méthodologie
      Module(
        nom: "Méthodes et outils de Modélisation",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      Module(
        nom: "Méthd formelles & outils vérification",
        coeff: 3,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      // UE Découverte
      Module(
        nom: "Sécurité Web e-learning ",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      //UE transversale
      Module(
        nom: "Anglais technique 1",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
    ],

    "S2": [
      Module(
        nom: "Web services",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Ontologies et web sémantique",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Ergonomie Web",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      Module(
        nom: "Traitement et analyse des d'image",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Vision artificielle",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux et Télécommunication",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Bases de données avancées & DM",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Modèles mathématiques du traitement de signa",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      Module(
        nom: " Micro-contrôleur Analyse Sys logiques",
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
        nom: "Théories avancées du traitement de signal",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Parallélisme et Clustering",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Systèmes Temps Réel",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Gestion de projet informatique",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Recherche bibliographique",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Législation et déontologie du travail",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      Module(
        nom: "Anglais Technique 3",
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
