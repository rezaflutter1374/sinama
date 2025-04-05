// ignore_for_file: file_names

import 'dart:io';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../controllers/textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as path;
import '../ constants/app_styles.dart';
import '../pages/ login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ImagePicker picker = ImagePicker();
  String? savedImagePath;

  Future<void> _saveImage(XFile pickedFile) async {
    final directory = await getApplicationDocumentsDirectory();
    final fileName = path.basename(pickedFile.path);
    final savedImage = File('${directory.path}/$fileName');
    await pickedFile.saveTo(savedImage.path);

    setState(() {
      savedImagePath = savedImage.path;
    });

    if (kDebugMode) {
      print("Photo saved at: ${savedImage.path}");
    }
  }

  Future<void> _getImageFromCamera() async {
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      if (kDebugMode) {
        print("Photo taken from camera: ${pickedFile.path}");
      }
      await _saveImage(pickedFile);
    }
  }

  Future<void> _getImageFromGallery() async {
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      if (kDebugMode) {
        print("Photo selected from gallery: ${pickedFile.path}");
      }
      await _saveImage(pickedFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppTheme.appBarThemeLight.backgroundColor,
        iconTheme: AppTheme.appBarThemeLight.iconTheme,
        actionsIconTheme: AppTheme.appBarThemeLight.actionsIconTheme,
        titleTextStyle: AppTheme.appBarThemeLight.titleTextStyle,
        elevation: AppTheme.appBarThemeLight.elevation,
        title: Text("Profile Page"),
      ),
      body:  SingleChildScrollView(
        keyboardDismissBehavior:  ScrollViewKeyboardDismissBehavior.onDrag,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white60,
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.camera_alt,
                                  color: Colors.red,
                                ),
                                title: Text('Take a Photo'),
                                onTap: () {
                                  Navigator.pop(context);
                                  _getImageFromCamera();
                                },
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.photo_library,
                                  color: Colors.red,
                                ),
                                title: Text('Choose from Gallery'),
                                onTap: () {
                                  Navigator.pop(context);
                                  _getImageFromGallery();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black12,
                    backgroundImage: savedImagePath != null
                        ? FileImage(File(savedImagePath!))
                        : null,
                    child: savedImagePath == null
                        ? Icon(Icons.person, size: 40, color: Colors.red)
                        : null,
                  ),
                ),
                SizedBox(height: 90),
                ...StaticTextFields.getTextFields(),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                       Get.to(() =>  LoginPage());
                    },
                    style: AppStyles.redButtonStyle,
                    child: Text("Update Profile", style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
        
            ),
        
          ),
        ),
      ),
    );
  }
}
