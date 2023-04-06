import 'dart:async';

import 'package:assignment/others/import.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  bool animate = false;
  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            top: 100,
            left: animate ? 70 : -80,
            right: 10,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1400),
              opacity: animate ? 1 : 0,
              child: const Text(
                "Welcome to our app! \nWe hope it brings you joy",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: kSecondaryColor),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            bottom: animate ? 350 : 0,
            left: 30,
            //top: 30,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1400),
              opacity: animate ? 1 : 0,

              child: Image.asset(
                "assets/Welcome.png",
                height: getDeviceHeight(200),
                //fit: BoxFit.fitHeight
              ),
              //),
            ),
          ),
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 5000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Signup(),
      ),
    );
  }
}
