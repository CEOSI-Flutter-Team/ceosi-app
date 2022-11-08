import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;

firebase_storage.FirebaseStorage storage =
    firebase_storage.FirebaseStorage.instance;

String fileName = '';
bool hasLoaded = false;

late File imageFile;
late String imageURL;

Future<void> uploadPicture(String inputSource, BuildContext context) async {
  final picker = ImagePicker();
  XFile pickedImage;
  try {
    pickedImage = (await picker.pickImage(
        source:
            inputSource == 'camera' ? ImageSource.camera : ImageSource.gallery,
        maxWidth: 1920))!;

    fileName = path.basename(pickedImage.path);
    imageFile = File(pickedImage.path);

    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: AlertDialog(
              title: Row(
            children: const [
              CircularProgressIndicator(
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Loading . . .',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'QRegular'),
              ),
            ],
          )),
        ),
      );

      await firebase_storage.FirebaseStorage.instance
          .ref('Rewards/Items/$fileName')
          .putFile(imageFile);
      imageURL = await firebase_storage.FirebaseStorage.instance
          .ref('Rewards/Items/$fileName')
          .getDownloadURL();

      hasLoaded = true;

      // ignore: use_build_context_synchronously
      Navigator.of(context).pop();
    } on firebase_storage.FirebaseException catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  } catch (err) {
    if (kDebugMode) {
      print(err);
    }
  }
}
