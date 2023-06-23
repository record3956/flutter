// 로컬 저장소에 userID값이 있는지 확인하는 메서드
// 없으면 난수 만들고 setString 및
import 'dart:math';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> getUserID() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  String userID = pref.getString('userID') ?? makeUserID();
  // userID가 db내에 저장되어 있는지 확인
  return userID;
}

// 16자리 난수를 만드는 함수
String makeUserID() {
  String randomUnit = 'abcdefghijklmnopqrstuvwxyz0123456789';
  String userID = '';
  Random random = Random();
  for (int i = 0; i < 16; i++) {
    userID += randomUnit[random.nextInt(randomUnit.length)];
  }
  // return 값이 firebase db값에 존재하는지 확인하는 메서드 필요
  return userID;
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
