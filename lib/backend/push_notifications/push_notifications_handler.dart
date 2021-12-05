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
import '../../match_profile/match_profile_widget.dart';
import '../../chat/chat_widget.dart';
import '../../final_day/final_day_widget.dart';
import '../../game_page/game_page_widget.dart';
import '../../game_page1/game_page1_widget.dart';
import '../../never_have_overview/never_have_overview_widget.dart';
import '../../forgot_password1/forgot_password1_widget.dart';

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
  'ProfileSettings': (data) async =>
      NavBarPage(initialPage: 'ProfileSettingsWidget'),
  'Profile2': (data) async => NavBarPage(initialPage: 'Profile2Widget'),
  'AuthPage': (data) async => AuthPageWidget(),
  'SocialMedia': (data) async => SocialMediaWidget(),
  'PersonalQuestions': (data) async => PersonalQuestionsWidget(),
  'MatchProfile': (data) async => MatchProfileWidget(),
  'Chat': (data) async => ChatWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
      ),
  'FinalDay': (data) async => FinalDayWidget(),
  'GamePage': (data) async => GamePageWidget(),
  'GamePage1': (data) async => GamePage1Widget(),
  'NeverHaveOverview': (data) async => NeverHaveOverviewWidget(),
  'ForgotPassword1': (data) async => ForgotPassword1Widget(),
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
