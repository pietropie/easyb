import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EasybFirebaseUser {
  EasybFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

EasybFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EasybFirebaseUser> easybFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EasybFirebaseUser>((user) => currentUser = EasybFirebaseUser(user));
