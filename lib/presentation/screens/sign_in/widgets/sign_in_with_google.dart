import 'package:chat_app/core/configs/app_cache.dart';
import 'package:chat_app/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  final UserCredential authResult =
      await FirebaseAuth.instance.signInWithCredential(credential);

  final User? user = authResult.user;
  UserEntity userEntity = UserEntity(
      uid: user!.uid,
      displayName: user.displayName,
      email: user.email,
      photoURL: user.photoURL);
  print("User Entity: $userEntity");
  await saveUserToSharedPreferences(userEntity);
  print('signInWithGoogle succeeded: $user');
  return user;
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Signed Out");
}
