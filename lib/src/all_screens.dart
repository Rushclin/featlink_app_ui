import 'package:featlink_app/src/screens/_create_profile/create_profile_step_110_screen.dart';
import 'package:featlink_app/src/screens/conversation_screen/conversation_screen.dart';
import 'package:featlink_app/src/screens/user_side_profile_screen/user_side_profile_screen.dart';
import 'package:featlink_app/src/screens/_edit_profile/edit_profile_interet_screen.dart';
import 'package:featlink_app/src/screens/d_day_zone_screen/d_day_zone_screen.dart';
import 'package:flutter/material.dart' show Widget;
import 'screens/_access/access_featlink_outsite_africa_screen/access_featlink_outsite_africa_screen.dart';

import 'screens/_chat_messages/chat_message_list_screen.dart';
import 'screens/_create_profile/create_profile_step_1o2_screen.dart';
import 'screens/_create_profile/create_profile_step_1o5_screen.dart';
import 'screens/_create_profile/create_profile_step_2o2_screen/create_profile_step_2o2_screen.dart';
import 'screens/_edit_profile/edit_user_profile_accroche_screen/edit_user_profile_accroche_screen.dart';
import 'screens/_swipe/crush_screen/crush_screen.dart';
import 'screens/_discovery/discovery_search_1_screen/discovery_search_1_screen.dart';
import 'screens/_discovery/discovery_search_2_screen/discovery_search_2_screen.dart';
import 'screens/_settings/unsubscribe_screen.dart';
import 'screens/_settings/private_mode_settings_screen.dart';
import 'screens/_settings/main_settings_screen.dart';
import 'screens/_discovery/discovery_blur_screen.dart';
import 'screens/_discovery/discovery_first_day_screen.dart';
import 'screens/_discovery/discovery_in_my_city_screen.dart';
import 'screens/_swipe/featlink_without_limits_screen/featlink_without_limits_offre_91_screen.dart';
import 'screens/_swipe/featlink_without_limits_screen/featlink_without_limits_offre_92_screen.dart';
import 'screens/_swipe/featlink_without_limits_screen/featlink_without_limits_offre_93_screen.dart';
import 'screens/_subscription/subscription_page_screen.dart';
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
import 'screens/_profile_visitor_view/profile_visitor_view_screen.dart';

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
  'crush_screen.dart': () => const CrushScreen(),
  'edit_user_profile_accroche_screen.dart': () =>
      const EditUserProfileAccrocheScreen(),
  'conversation_screen.dart': () => const ConversationScreen(),

  'user_side_profile_screen.dart': () => const UserSideProfileScreen(),

  'unsubscribe_screen.dart': () => const UnsubscribeScreen(),
  'discovery_search_1_screen.dart': () => const DiscoverySearch1Screen(),
  'discovery_search_2_screen.dart': () => const DiscoverySearch2Screen(),
  'edit_profile_interet_screen.dart': () => EditProfileInteretScreen(),
  'd_day_zone_screen.dart': () => const DDayZoneScreen(),
  'private_mode_settings_screen.dart': () => const PrivateModeSettingsScreen(),
  'main_settings_screen.dart': () => const MainSettingsScreen(),
  'discovery_in_my_city_screen.dart': () => const DiscoveryInMyCityScreen(),
  'discovery_first_day_screen.dart': () => const DiscoveryFirstDayScreen(),
  'discovery_blur_screen.dart': () => const DiscoveryBlurScreen(),
  'chat_message_list_screen.dart': () => const ChatMessageListScreen(),
  'profile_visitor_view_screen.dart': () => const ProfileVisitorViewScreen(),
  'access_featlink_outsite_africa_screen.dart': () =>
      const AccessFeatlinkOutsiteAfricaScreen(),
  'featlink_without_limits_offre_91_screen.dart': () =>
      const FeatlinkWithoutLimitsOffre91Screen(),
  'featlink_without_limits_offre_92_screen.dart': () =>
      const FeatlinkWithoutLimitsOffre92Screen(),
  'featlink_without_limits_offre_93_screen.dart': () =>
      const FeatlinkWithoutLimitsOffre93Screen(),

  'subscription_page_screen.dart': () => SubscriptionPageScreen(),

  // Ajoutez d'autres chemins de fichiers ici
};
