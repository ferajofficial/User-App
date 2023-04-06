import 'package:assignment/others/import.dart';
import 'package:assignment/services/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isAgree = false;
  final _formKey = GlobalKey<FormState>();

  //bool isLoading = false;
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
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/Login.png",
                    height: getDeviceHeight(250),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(10),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "LogIn",
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
                SizedBox(
                  height: getDeviceHeight(50),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(
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
                    child: Text("Login",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
