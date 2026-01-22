import '../models/module.dart';

final Map<String, Map<String, List<Module>>> rtProgrammes = {
  "M1": {
    "S1": [
      Module(
        //UE fondamentales 1
        nom: "Réseaux locaux & Prog système",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux sans fil",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Réseaux locaux et équipements actifs",
        coeff: 1.5,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      //UE fondamentales 2
      Module(
        nom: "Web services",
        coeff: 1.5,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Simulation à événements discrets",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE méthodologie
      Module(
        nom: "Application des graphes à la RO",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),

      Module(
        nom: "Optimisation en recherche opérationnelle",
        coeff: 2.5,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      //UE Découvert
      Module(
        nom: "Approches par composant",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),

      Module(
        nom: "Bases de données avancées",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      //UE transversale
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
        //UE fondamentales 1
        nom: "Technologies de Réseaux d'opérateurs",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Technologies de l'internet",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),
      //UE fondamentales 2
      Module(
        nom: "Télécommunications fixes et mobiles",
        coeff: 3,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Techniques et Technologie de transmission",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE méthodologie
      Module(
        nom: "Modèles mathématiques de t_signal",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),

      Module(
        nom: "Modélis & évalu performances des sys",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),

      Module(
        nom: "Mathématiques appliquées",
        coeff: 2,
        hasTD: false,
        hasTP: true,
        examOnly: false,
      ),

      // UE Découvert
      Module(
        nom: "Voix sur IP",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),

      // UE transversale
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
      //UE fondamentales 1
      Module(
        nom: "Sécurité des réseaux et du web",
        coeff: 2.5,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Qualité de service ",
        coeff: 2.5,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      //UE fondamentales 2
      Module(
        nom: "Théorie de l'information",
        coeff: 2.5,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),

      Module(
        nom: "Codage et transport de flux multimédia",
        coeff: 2,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),
      //UE méthodologie
      Module(
        nom: "Gestion de projet informatique",
        coeff: 2.5,
        hasTD: true,
        hasTP: true,
        examOnly: false,
      ),
      Module(
        nom: "Parallelisme et clustring",
        coeff: 2,
        hasTD: true,
        hasTP: false,
        examOnly: false,
      ),
      //UE Découvert
      Module(
        nom: "Recherche bibliographique",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),

      //UE transversales
      Module(
        nom: "Législation et Déontologie",
        coeff: 1,
        hasTD: false,
        hasTP: false,
        examOnly: true,
      ),

      Module(
        nom: "Ethique professionnelle en enseignement",
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
