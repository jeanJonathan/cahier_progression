# cahier_progression

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Architecture de dossiers et de fichiers pour cette application
- android
- ios
- lib
    - data : Dossier contenant les modèles de données et les repositories pour accéder aux données stockées
        - models : contenant les classes de l'application
            - session.dart
            - note.dart
            - video.dart
            - image.dart
            - advice.dart
        - repositories : contenant les classes qui communiqueront avec les sources de données et effectueront les opérations CRUD.
            - session_repository.dart
            - note_repository.dart
            - video_repository.dart
            - image_repository.dart
            - advice_repository.dart
    - screens : contenant les écrans de l'application.
        - home_screen.dart : l'écran d'accueil qui affichera les différentes fonctionnalités de l'application.
        - session_screen.dart : l'écran qui permettra à l'utilisateur d'enregistrer une session d'entraînement.
        - note_screen.dart : l'écran qui affichera la feuille de notes où les utilisateurs peuvent enregistrer leur progression pour chaque chapitre de leur niveau.
        - video_screen.dart : l'écran qui affichera la bibliothèque vidéo pour chaque niveau.
        - image_screen.dart : l'écran qui affichera la bibliothèque d'images pour chaque niveau.
        - advice_screen.dart : l'écran qui affichera les conseils pour chaque niveau.
        - graph_screen.dart : l'écran qui affichera les graphes et les tableaux de progression de l'utilisateur.
    - widgets : dossier contenant les widgets utilisés dans les écrans de l'application.
        - session_card.dart : le widget pour afficher les détails de la session d'entraînement.
        - note_card.dart : le widget pour afficher chaque chapitre de la feuille de notes.
        - video_card.dart : le widget pour afficher chaque vidéo.
        - image_card.dart : le widget pour afficher chaque image.
        - advice_card.dart : le widget pour afficher chaque conseil.
    - main.dart : le fichier principal de l'application.
    - constants.dart : le fichier contenant toutes les constantes utilisées dans l'application.
- test : ce dossier contiendra les tests unitaires et les tests d'intégration pour l'application.
- pubspec.yaml : pour les dépendances et les métad
