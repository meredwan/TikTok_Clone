import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  ///User Register
  Future<void> Singup(
      String Username, String email, String password, File? image) async {
    try {
      if (Username.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          image != null) {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        _uploadpropic(image);
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error Occurred", e.toString());
    }
  }

  Future<String> _uploadpropic(File image) async {
    Reference ref = FirebaseStorage.instance
        .ref()
        .child("Profile Pic")
        .child(FirebaseAuth.instance.currentUser!.uid);
    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snapshot = await uploadTask;
    String imageDwnurl = await snapshot.ref.getDownloadURL();
    return imageDwnurl;
  }
}
