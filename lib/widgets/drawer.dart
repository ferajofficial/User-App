import 'package:assignment/others/import.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key? key,
    required this.name,
    required this.email,
    required this.city,
    required this.country,
    required this.state,
    required this.mobilenumber,
    required this.pin,
  }) : super(key: key);
  final String name;
  final String email;
  final String city;
  final String country;
  final String state;
  final String mobilenumber;
  final String pin;

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      //  if User is not signed in
      return const Scaffold(
        body: Center(
          child: Text('User not signed in'),
        ),
      );
    }

    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Tabs()));
                          },
                          child: const Icon(Icons.arrow_back_ios_new))),
                  const CircleAvatar(
                      child: Icon(
                    Icons.person_4_outlined,
                    size: 30,
                  )),
                  Text(
                    '${user.displayName}',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: kSecondaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    '${user.email}',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: kSecondaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10.0, right: 10),
            child: Column(
              children: [
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.person_4,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.name,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.alternate_email,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.email,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(10),
                ),
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.mobilenumber,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.location_city,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.city,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.pin,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.pin,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.state,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                Container(
                  height: getDeviceHeight(55),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.location_on,
                      color: kSecondaryColor,
                    ),
                    title: Text(
                      widget.country,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kSecondaryColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(10),
                ),
                // Container(
                //   height: getDeviceHeight(55),
                //   width: double.infinity,
                //   decoration: const BoxDecoration(
                //     color: kSecondaryColor,
                //     shape: BoxShape.rectangle,
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(5),
                //       topRight: Radius.circular(5),
                //       bottomLeft: Radius.circular(5),
                //       bottomRight: Radius.circular(5),
                //     ),
                //   ),
                //   child: const ListTile(
                //     leading: Icon(
                //       Icons.location_on,
                //       color: Colors.white,
                //     ),
                //     //title: ,
                //   ),
                // ),
              ],
            ),
          )

          //),
        ],
      ),
    ));
  }
}
