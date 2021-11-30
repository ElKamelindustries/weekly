import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WeeklyFirebaseUser {
  WeeklyFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

WeeklyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WeeklyFirebaseUser> weeklyFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<WeeklyFirebaseUser>((user) => currentUser = WeeklyFirebaseUser(user));
