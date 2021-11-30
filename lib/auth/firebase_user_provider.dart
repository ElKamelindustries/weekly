import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TimelineWeeklyFirebaseUser {
  TimelineWeeklyFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

TimelineWeeklyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TimelineWeeklyFirebaseUser> timelineWeeklyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TimelineWeeklyFirebaseUser>(
            (user) => currentUser = TimelineWeeklyFirebaseUser(user));
