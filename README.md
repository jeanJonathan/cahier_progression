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
  -main.dart : fichier principal de l'application.
- models : contenant les classes de l'application
    -Notes.dart
    -User.dart
- screens : contenant les écrans de l'application.
    - Home_screen.dart : l'écran d'accueil qui affichera les différentes fonctionnalités de l'application.
    - LoginScreen.dart : l'écran pour se connecter à l'application.
    - NotesScreen.dart : l'écran pour afficher et modifier les notes de l'utilisateur.
    - SignUpScreen.dart : l'écran pour s'inscrire à l'application.
    - VideoPlayerScreen.dart : l'écran pour afficher une vidéo sélectionnée.
- services: le dossier contenant les services pour interagir avec la base de données et récupérer les vidéos.
  - AuthenticationService.dart : le service pour gérer la connexion et la déconnexion des utilisateurs.
  - DatabaseService.dart : le service pour interagir avec la base de données.
  - VideoService.dart : le service pour récupérer les vidéos.

-utils: le dossier contenant des fichiers utilitaires pour votre application.
    -Constants.dart : le fichier pour les constantes de votre application.
-widgets/ : le dossier contenant les widgets réutilisables.
    -NoteCard.dart : le widget pour afficher une note.
    -VideoCard.dart : le widget pour afficher une vidéo.
-main_components/ : le dossier contenant les fichiers de configuration générale de l'application.
    -main_navigation.dart : le fichier pour la navigation entre les écrans de l'application.
    -main_theme.dart : le fichier pour la personnalisation de l'aspect visuel de l'application.

- test : ce dossier contiendra les tests unitaires et les tests d'intégration pour l'application.
- pubspec.yaml : pour les dépendances et les métad


