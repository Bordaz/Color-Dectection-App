import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ColorRecognitionFirebaseUser {
  ColorRecognitionFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ColorRecognitionFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ColorRecognitionFirebaseUser> colorRecognitionFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ColorRecognitionFirebaseUser>(
      (user) {
        currentUser = ColorRecognitionFirebaseUser(user);
        return currentUser!;
      },
    );
