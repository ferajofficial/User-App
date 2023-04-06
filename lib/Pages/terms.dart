import 'package:assignment/others/import.dart';

class Terms extends StatefulWidget {
  Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const Tabs()));
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: kSecondaryColor,
          ),
        ),
        title: Text(
          "Terms & Condition",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Thank you for using our application! Before you start using it, please read the following terms and conditions carefully:",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: kSecondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                  "1. Acceptance of Terms and Conditions: By using our application,you agree to be bound by these"
                  '  terms and conditions. If you do not agree to these terms and conditions, please do not use the application.',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400))),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                  "2. Disclaimer of Warranties: We make no representations or warranties of any kind, express or implied,"
                  'regarding the application or its content',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400))),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                  "3. Privacy: We collect and process personal data in accordance with our privacy policy,"
                  ' which is available on our website. By using the application, you agree to the terms of our privacy policy.',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400))),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                  "4. Intellectual Property: The application and its content, including but not limited to text, graphics, images, logos,"
                  ' and software, are protected by copyright, trademark, and other laws. You may not use the application or its content in any manner that infringes upon the intellectual property rights of any third party.',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400))),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                  "5. Use of the Application: You agree not to use the application for any unlawful or abusive purpose. You also agree not to use the application in any manner that could damage,"
                  ' disable, overburden, or impair the application or interfere with any other party use and enjoyment of the application.',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400))),
              SizedBox(
                height: getDeviceHeight(10),
              ),
              Text(
                  "6. License: We grant you a limited, non-exclusive, non-transferable, revocable license to use the application for your personal,"
                  ' non-commercial use. You may not use the application for any other purpose without our prior written consent.',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400)))
              //

              //

              //
              //

              //

              //
            ],
          ),
        ),
      ),
    );
  }
}
