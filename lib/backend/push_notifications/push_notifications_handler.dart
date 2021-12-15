import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../auth_page/auth_page_widget.dart';
import '../../social_media/social_media_widget.dart';
import '../../personal_questions/personal_questions_widget.dart';
import '../../personal_questions2/personal_questions2_widget.dart';
import '../../personal_questions3/personal_questions3_widget.dart';
import '../../profile_landing_page/profile_landing_page_widget.dart';
import '../../profile_new/profile_new_widget.dart';
import '../../tutoriial_page/tutoriial_page_widget.dart';
import '../../home_page_first/home_page_first_widget.dart';
import '../../would_you_rather_question/would_you_rather_question_widget.dart';
import '../../wait_page_q1/wait_page_q1_widget.dart';
import '../../would_you_rather_question2/would_you_rather_question2_widget.dart';
import '../../wait_page_q2/wait_page_q2_widget.dart';
import '../../q2_result/q2_result_widget.dart';
import '../../would_you_rather_option/would_you_rather_option_widget.dart';
import '../../wait_page1_option/wait_page1_option_widget.dart';
import '../../would_you_rather2_option/would_you_rather2_option_widget.dart';
import '../../o2_result_present/o2_result_present_widget.dart';
import '../../o2_results_hints/o2_results_hints_widget.dart';
import '../../match_profile_first_game/match_profile_first_game_widget.dart';
import '../../to_part_two/to_part_two_widget.dart';
import '../../pictionary_greeter/pictionary_greeter_widget.dart';
import '../../pictionary_select/pictionary_select_widget.dart';
import '../../pictionary1/pictionary1_widget.dart';
import '../../pictionary2/pictionary2_widget.dart';
import '../../pictionary_three/pictionary_three_widget.dart';
import '../../pictionary/pictionary_widget.dart';
import '../../final_day/final_day_widget.dart';
import '../../would_you_rather1/would_you_rather1_widget.dart';
import '../../would_you_rather1_selected/would_you_rather1_selected_widget.dart';
import '../../wait_page/wait_page_widget.dart';
import '../../would_you_rather2/would_you_rather2_widget.dart';
import '../../would_you_rather2_selected/would_you_rather2_selected_widget.dart';
import '../../new_hint_page/new_hint_page_widget.dart';
import '../../chat/chat_widget.dart';
import '../../social_media_share/social_media_share_widget.dart';
import '../../never_have_overview/never_have_overview_widget.dart';
import '../../forgot_password_phone/forgot_password_phone_widget.dart';
import '../../forgot_password_verify_code/forgot_password_verify_code_widget.dart';
import '../../audio_game/audio_game_widget.dart';
import '../../insert_social_media/insert_social_media_widget.dart';
import '../../pictionary_copy/pictionary_copy_widget.dart';
import '../../final_day_copy/final_day_copy_widget.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler(
      {Key key, this.handlePushNotification, this.child})
      : super(key: key);

  final Function(BuildContext) handlePushNotification;
  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/Screen_Shot_2021-11-30_at_18.48.11.png',
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'AuthPage': (data) async => AuthPageWidget(),
  'SocialMedia': (data) async => SocialMediaWidget(),
  'PersonalQuestions': (data) async => PersonalQuestionsWidget(),
  'PersonalQuestions2': (data) async => PersonalQuestions2Widget(),
  'PersonalQuestions3': (data) async => PersonalQuestions3Widget(),
  'Profile_Landing_Page': (data) async => ProfileLandingPageWidget(),
  'Profile_New': (data) async => ProfileNewWidget(),
  'TutoriialPage': (data) async => TutoriialPageWidget(),
  'HomePage_First': (data) async => HomePageFirstWidget(),
  'WouldYouRatherQuestion': (data) async => WouldYouRatherQuestionWidget(),
  'WaitPageQ1': (data) async => WaitPageQ1Widget(),
  'WouldYouRatherQuestion2': (data) async => WouldYouRatherQuestion2Widget(),
  'WaitPageQ2': (data) async => WaitPageQ2Widget(),
  'Q2Result': (data) async => Q2ResultWidget(),
  'WouldYouRatherOption': (data) async => WouldYouRatherOptionWidget(),
  'WaitPage1Option': (data) async => WaitPage1OptionWidget(),
  'WouldYouRather2Option': (data) async => WouldYouRather2OptionWidget(),
  'O2ResultPresent': (data) async => O2ResultPresentWidget(),
  'O2ResultsHints': (data) async => O2ResultsHintsWidget(),
  'Match_Profile_First_Game': (data) async => MatchProfileFirstGameWidget(),
  'ToPartTwo': (data) async => ToPartTwoWidget(),
  'Profile_Full': (data) async => NavBarPage(initialPage: 'ProfileFullWidget'),
  'Match_Profile_Full': (data) async =>
      NavBarPage(initialPage: 'MatchProfileFullWidget'),
  'PictionaryGreeter': (data) async => PictionaryGreeterWidget(),
  'PictionarySelect': (data) async => PictionarySelectWidget(),
  'Pictionary1': (data) async => Pictionary1Widget(),
  'Pictionary2': (data) async => Pictionary2Widget(),
  'PictionaryThree': (data) async => PictionaryThreeWidget(),
  'Pictionary': (data) async => PictionaryWidget(),
  'FinalDay': (data) async => FinalDayWidget(),
  'WouldYouRather1': (data) async => WouldYouRather1Widget(),
  'WouldYouRather1Selected': (data) async => WouldYouRather1SelectedWidget(),
  'WaitPage': (data) async => WaitPageWidget(),
  'WouldYouRather2': (data) async => WouldYouRather2Widget(),
  'WouldYouRather2Selected': (data) async => WouldYouRather2SelectedWidget(),
  'NewHintPage': (data) async => NewHintPageWidget(),
  'Chat': (data) async => ChatWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
      ),
  'SocialMediaShare': (data) async => SocialMediaShareWidget(),
  'NeverHaveOverview': (data) async => NeverHaveOverviewWidget(),
  'ForgotPasswordPhone': (data) async => ForgotPasswordPhoneWidget(),
  'ForgotPasswordVerifyCode': (data) async => ForgotPasswordVerifyCodeWidget(),
  'AudioGame': (data) async => AudioGameWidget(),
  'InsertSocialMedia': (data) async => InsertSocialMediaWidget(),
  'PictionaryCopy': (data) async => PictionaryCopyWidget(),
  'FinalDayCopy': (data) async => FinalDayCopyWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
