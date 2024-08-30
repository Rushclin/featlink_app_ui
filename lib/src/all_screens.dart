import 'package:featlink_app/src/screens/_create_profile/create_profile_step_110_screen.dart';
import 'package:flutter/material.dart' show Widget;

import 'screens/_create_profile/create_profile_step_1o2_screen.dart';
import 'screens/_create_profile/create_profile_step_1o5_screen.dart';
import 'screens/_create_profile/create_profile_step_2o2_screen/create_profile_step_2o2_screen.dart';
import 'screens/_swipe/swipezone_full_screen_modal_screen/swipezone_full_screen_modal_africa_screen.dart';
import 'screens/_swipe/swipezone_full_screen_modal_screen/swipezone_full_screen_modal_screen.dart';
import 'screens/_swipe/filter_screen/filter_screen.dart';
import 'screens/welcome2_screen/welcome2_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/_create_profile/create_profile_step_1o1_screen.dart';
import 'screens/_create_profile/create_profile_step_1o3_screen.dart';
import 'screens/_auth/login_screen.dart';
import 'screens/_auth/register_screen.dart';
import 'screens/_create_profile/create_profile_step_1o4_screen.dart';
import 'screens/_create_profile/create_profile_step_1o6_screen.dart';
import 'screens/_create_profile/create_profile_step_1o7_screen.dart';
import 'screens/_create_profile/create_profile_step_1o8_screen.dart';
import 'screens/_create_profile/create_profile_step_1o9_screen/create_profile_step_1o9_screen.dart';
import 'screens/_create_profile/create_profile_step_2o1_screen.dart';
import 'screens/_create_profile/create_profile_step_2o3_screen.dart';
import 'screens/notifications_screen/notifications_screen.dart';

/// Le test unitaire va chercher toute les pages du dossier screens pour se
/// rassurer qu'il s'affiche sans erreur, seulement pour chaque fichier,
/// le tester automatique aura besion de savoir comment instancier la classe
/// qui s'y trouve, c'est pour ça que cette Map existe, pour faire le lien entre
/// chaque nom de fichier et une fonction qui retourne une instance de la classe
/// dans ce fichier.
///
/// Ce n'est valable QUE pour les SCREENS, les composants n'ont pas besion d'être ici
final Map<String, Widget Function()> allScreens = {
  'welcome_screen.dart': () => const WelcomeScreen(),
  'welcome2_screen.dart': () => const Welcome2Screen(),
  'login_screen.dart': () => const LoginScreen(),
  'register_screen.dart': () => const RegisterScreen(),
  'create_profile_step_1o1_screen.dart': () => CreateProfileStep1o1Screen(),
  'create_profile_step_1o3_screen.dart': () =>
      const CreateProfileStep1o3Screen(),
  'create_profile_step_1o4_screen.dart': () =>
      const CreateProfileStep1o4Screen(),
  'create_profile_step_1o6_screen.dart': () =>
      const CreateProfileStep1o6Screen(),
  'create_profile_step_1o7_screen.dart': () =>
      const CreateProfileStep1o7Screen(),
  'create_profile_step_1o8_screen.dart': () =>
      const CreateProfileStep1o8Screen(),
  'create_profile_step_1o9_screen.dart': () =>
      const CreateProfileStep1o9Screen(),
  'create_profile_step_2o1_screen.dart': () =>
      const CreateProfileStep2o1Screen(),
  'create_profile_step_1o2_screen.dart': () => CreateProfileStep1o2Screen(),
  'create_profile_step_2o2_screen.dart': () =>
      const CreateProfileStep2o2Screen(),
  'create_profile_step_1o5_screen.dart': () => CreateProfileStep1o5Screen(),

  'create_profile_step_2o3_screen.dart': () =>
      const CreateProfileStep2o3Screen(),

  'create_profile_step_110_screen.dart': () =>
      const CreateProfileStep110Screen(),

  'notifications_screen.dart': () => const NotificationsScreen(),
  'filter_screen.dart': () => const FilterScreen(),
  'swipezone_full_screen_modal_screen.dart': () =>
      SwipezoneFullScreenModalScreen(),
  'swipezone_full_screen_modal_africa_screen.dart': () =>
      SwipezoneFullScreenModalAfricaScreen(),

  // Ajoutez d'autres chemins de fichiers ici
};
