import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:loginuicolors/welcome_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class AuthController extends GetxController{
  //with instance AuthController would be able to the app everywhere
  //We created an instance using Get.find() inside the controller, so It will be able everywhere in the app using AuthController.instance
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;


  // You can initialize your user from firebase and bindStrem with the user, so any changes happen to user, our firebase use would be notified.
  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>LoginPage());
    }else{
      Get.offAll(()=>WelcomePage(email:user.email!));
    }
  }

// You also need to bind _user with our app lifecycle. So that, any time user logs in or log out or navigate to a different page, app would know it. This is the actualy auth controller.


//Register Function
void register(String email, password) async {
  try{
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  } catch(e) {
    Get.snackbar("About User", "User Message",
    backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Failed to Create One",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      messageText: Text(
        e.toString(),
        style: TextStyle(
          color: Colors.white
        )
      )
    );
  }
}

//Login Function
void login(String email, password)async{
  try{
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }catch(e){
    Get.snackbar("About Login", "Login message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Login failed",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        messageText: Text(
            e.toString(),
            style: TextStyle(
                color: Colors.white
            )
        )
    );
  }
}

//Logout Function
void logOut() async {
  await auth.signOut();
}

}
