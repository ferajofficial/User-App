import 'package:assignment/others/import.dart';
import 'package:assignment/services/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isAgree = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/signup.png",
                    height: getDeviceHeight(170),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(10),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "SignUp",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(10),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.alternate_email,
                    ),
                    labelText: 'Email',
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),

                  //** EMail validation */

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Email";
                    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Please Enter a Valid Email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_person,
                    ),

                    // prefix: Text(""),
                    labelText: 'Password',
                    hintText: 'Password',

                    border: OutlineInputBorder(),
                  ),

                  //** password validation */
                  validator: (val) {
                    if (val!.length < 7) {
                      return "Enter a valid password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_2_rounded,
                    ),
                    labelText: 'Full Name',
                    hintText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (val) {
                    _formKey.currentState?.validate();
                  },
                  validator: (val) => val!.isEmpty ? "Enter Full Name" : null,
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Terms()));
                  },
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 13.0),
                        child: Checkbox(
                          value: isAgree,
                          activeColor: kSecondaryColor,
                          onChanged: (value) {
                            setState(() {
                              isAgree = value!;
                            });
                          },
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "By signing up, you are agree to use the\n",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: "terms and conditions.",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                SizedBox(
                  height: getDeviceHeight(50),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuthMethods(FirebaseAuth.instance)
                          .signUpWithEmail(
                              email: emailController.text,
                              password: passwordController.text,
                              context: context);

                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tabs()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryColor),
                    // if (isAgree == true) {
                    //                 ElevatedButton.styleFrom(
                    //                   backgroundColor: kSecondaryColor,
                    //                 );
                    //               } else {
                    //                 ElevatedButton.styleFrom(
                    //                   backgroundColor: Colors.grey,
                    //                 );
                    //               }

                    child: Text("Signup",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(5),
                ),
                Text(
                  "or,",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: kSecondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(5),
                ),
                GestureDetector(
                  onTap: () {
                    FirebaseAuthMethods(FirebaseAuth.instance)
                        .signInWithGoogle(context);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Tabs()));
                  },
                  child: Container(
                    height: getDeviceHeight(50),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Image.asset(
                            "assets/Gicon.png",
                            height: getDeviceHeight(35),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            " Signin with Google",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(5),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190.0),
                  child: TextButton(
                    onPressed: () {
                      FirebaseAuthMethods(FirebaseAuth.instance)
                          .loginAnonymosly(context);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tabs()));
                    },
                    child: Text(
                      "Use as a guest?",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: kSecondaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
