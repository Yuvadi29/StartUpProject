import 'package:flutter/material.dart';

import 'auth_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? required, required email this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
        Container(
        width: w,
        height: h * 0.3,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/signup.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.18,
            ),
            CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 50,
              backgroundImage: AssetImage("img/profile.png"),
            )
          ],
        ),
      ),
      SizedBox(
        height: 70,
      ),
      Container(
        width: w,
        margin: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Dear Investor/User",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              email,
              // "@/@",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 200,),
      GestureDetector(
        onTap: () {
          AuthController.instance.logOut();
        },
        child: Container(
          width: w * 0.5,
          height: h * 0.08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover)),
          child: Center(
            child: Text(
              "SignOut",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      ],
      ),
    );
  }
}
