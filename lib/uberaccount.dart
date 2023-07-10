import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/bottomnav.dart';
import 'package:uber/model/user_model.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/utils/utils.dart';

class UberAccScroll extends StatefulWidget {
  const UberAccScroll({super.key});

  @override
  State<UberAccScroll> createState() => _UberAccScrollState();
}

class _UberAccScrollState extends State<UberAccScroll> {
  File? image;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final bioController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    bioController.dispose();
  }

  void selectImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body: SafeArea(
        child: isLoading == true
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Account info            ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberBold',
                            fontSize: 35),
                      ),
                      SizedBox(height: 40),
                      InkWell(
                        onTap: () => selectImage(),
                        child: image == null
                            ? const CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 50,
                                child: Icon(
                                  Icons.account_circle,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              )
                            : CircleAvatar(
                                backgroundImage: FileImage(image!),
                                radius: 50,
                              ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            // name
                            textField(
                                hintText: "Enter Your Name",
                                icon: Icons.account_circle,
                                inputType: TextInputType.name,
                                maxLines: 1,
                                controller: nameController),
                            // email
                            textField(
                                hintText: "Enter Your Email",
                                icon: Icons.email,
                                inputType: TextInputType.emailAddress,
                                maxLines: 1,
                                controller: emailController),
                            // bio
                            textField(
                                hintText: "Enter Your Bio Here..",
                                icon: Icons.edit,
                                inputType: TextInputType.name,
                                maxLines: 2,
                                controller: bioController),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 370,
                              child: TextButton(
                                onPressed: () => storeData(),
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'UberMed',
                                      fontSize: 20),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  Widget textField(
      {required String hintText,
      required IconData icon,
      required TextInputType inputType,
      required int maxLines,
      required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        cursorColor: Colors.black,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        decoration: InputDecoration(
            prefixIcon: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            hintText: hintText,
            alignLabelWithHint: true,
            border: InputBorder.none,
            fillColor: Colors.black12,
            filled: true),
      ),
    );
  }

  // store data to firestore database
  void storeData() async {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    UserModel userModel = UserModel(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        bio: bioController.text.trim(),
        profilePic: "",
        createdat: "",
        phoneNumber: "",
        uid: "");
    if (image != null) {
      ap.saveUserDataToFirebase(
          context: context,
          userModel: userModel,
          profilePic: image!,
          onSuccess: () {
            // once data is saved store is locally also
            ap.saveUserDataToSP().then((value) => ap.setSignIn().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNav()), (route) => false),),);
          });
    } else {
      showSnackBar(context, "Please Upload your Profile Photo");
    }
  }
}
