import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: deviceHeight*0.050,),
            Center(child: Image.asset("assets/images/login_image.png",width: deviceWidth*0.80,)),
            SizedBox(
              height: deviceHeight * 0.050,
            ),
            const Text(
              "Let,s begin",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: deviceHeight * 0.010,
            ),
            const Text(
              "Login with your google account to continue journey to world of Electronics gadgets ",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: deviceHeight * 0.150,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google_icon.png",
                      height: 20,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "Continue with Google",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
