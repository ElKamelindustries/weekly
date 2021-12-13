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
import '../../tutoriial_page_copy/tutoriial_page_copy_widget.dart';
import '../../would_you_rather1/would_you_rather1_widget.dart';
import '../../would_you_rather1_selected/would_you_rather1_selected_widget.dart';
import '../../wait_page/wait_page_widget.dart';
import '../../would_you_rather2/would_you_rather2_widget.dart';
import '../../would_you_rather2_selected/would_you_rather2_selected_widget.dart';
import '../../new_hint_page/new_hint_page_widget.dart';
import '../../match_profile_first_game/match_profile_first_game_widget.dart';
import '../../match_profile/match_profile_widget.dart';
import '../../chat/chat_widget.dart';
import '../../final_day/final_day_widget.dart';
import '../../social_media_share/social_media_share_widget.dart';
import '../../never_have_overview/never_have_overview_widget.dart';
import '../../forgot_password_phone/forgot_password_phone_widget.dart';
import '../../forgot_password_verify_code/forgot_password_verify_code_widget.dart';
import '../../pictionary/pictionary_widget.dart';
import '../../insert_social_media/insert_social_media_widget.dart';

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
  'TutoriialPageCopy': (data) async => TutoriialPageCopyWidget(),
  'WouldYouRather1': (data) async => WouldYouRather1Widget(),
  'WouldYouRather1Selected': (data) async => WouldYouRather1SelectedWidget(),
  'WaitPage': (data) async => WaitPageWidget(),
  'WouldYouRather2': (data) async => WouldYouRather2Widget(),
  'WouldYouRather2Selected': (data) async => WouldYouRather2SelectedWidget(),
  'NewHintPage': (data) async => NewHintPageWidget(),
  'Match_Profile_First_Game': (data) async => MatchProfileFirstGameWidget(),
  'HomePage_Full': (data) async =>
      NavBarPage(initialPage: 'HomePageFullWidget'),
  'ProfileSettings': (data) async =>
      NavBarPage(initialPage: 'ProfileSettingsWidget'),
  'Profile2': (data) async => NavBarPage(initialPage: 'Profile2Widget'),
  'MatchProfile': (data) async => MatchProfileWidget(),
  'Chat': (data) async => ChatWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
      ),
  'FinalDay': (data) async => FinalDayWidget(),
  'SocialMediaShare': (data) async => SocialMediaShareWidget(),
  'NeverHaveOverview': (data) async => NeverHaveOverviewWidget(),
  'ForgotPasswordPhone': (data) async => ForgotPasswordPhoneWidget(),
  'ForgotPasswordVerifyCode': (data) async => ForgotPasswordVerifyCodeWidget(),
  'AudioGame': (data) async => NavBarPage(initialPage: 'AudioGameWidget'),
  'Pictionary': (data) async => PictionaryWidget(),
  'InsertSocialMedia': (data) async => InsertSocialMediaWidget(),
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
