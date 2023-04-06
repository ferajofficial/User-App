import 'package:assignment/others/import.dart';
import 'package:assignment/widgets/drawer.dart';

// ignore: camel_case_types
class userProfile extends StatefulWidget {
  const userProfile({Key? key}) : super(key: key);

  @override
  State<userProfile> createState() => _userProfileState();
}

// ignore: camel_case_types
class _userProfileState extends State<userProfile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 10, top: 10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    hintText: 'Name', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 10, top: 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 10, top: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: mobileController,
                decoration: const InputDecoration(
                    hintText: 'Mobile Number', border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'About', border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 160,
                    //height: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'AT', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'PO', border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 160,
                    //height: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: pincodeController,
                      decoration: const InputDecoration(
                          hintText: 'PIN', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      controller: cityController,
                      decoration: const InputDecoration(
                          hintText: 'City', border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 160,
                    //height: 100,
                    child: TextField(
                      controller: stateController,
                      decoration: const InputDecoration(
                          hintText: 'State', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      controller: countryController,
                      decoration: const InputDecoration(
                          hintText: 'Country', border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: ' Current Company Name',
                    border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, bottom: 10, top: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Experience', border: OutlineInputBorder()),
              ),
            ),
            SizedBox(height: getDeviceHeight(10)),
            ElevatedButton(
              onPressed: () {
                
                Navigator.pushReplacement(context,
                
                    MaterialPageRoute(builder: (context) =>  AppDrawer(
                     name: nameController.text,
                      email: emailController.text,
                      city: cityController.text,
                      country: countryController.text,
                      pin: pincodeController.text,
                      state: stateController.text,
                      mobilenumber: mobileController.text,
                      
                    )));
              },
              // },
              style: ElevatedButton.styleFrom(
                backgroundColor: kSecondaryColor,
              ),
              child: const Text(
                "Save Data",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: getDeviceHeight(20)),
          ],
        ),
      ),
    );
  }
}
