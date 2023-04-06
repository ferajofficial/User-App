import 'package:assignment/others/import.dart';

import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class user_Location extends StatefulWidget {
  user_Location({Key? key}) : super(key: key);

  @override
  State<user_Location> createState() => _user_LocationState();
}

class _user_LocationState extends State<user_Location> {
  @override
  Widget build(BuildContext context) {
    String location = 'Choose Your Location';
    double latitude = 23, longitude = 90;

    chooseLoc(BuildContext context) {
      showBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
                height: getDeviceHeight(550),
                // width: double.infinity,
                // decoration: const BoxDecoration(
                //     shape: BoxShape.rectangle, color: kSecondaryColor),
                child: Center(
                  child: OpenStreetMapSearchAndPick(
                      center: LatLong(latitude, longitude),
                      buttonColor: kSecondaryColor,
                      buttonText: 'Set Location',
                      hintText: 'Search your location',
                      onPicked: (pickedData) {
                        //print("passing address");
                        Navigator.pop(context);
                        setState(() {
                          location = pickedData.address;
                          latitude = pickedData.latLong.latitude;
                          longitude = pickedData.latLong.longitude;
                        });
                      }),
                ));
          });
      //chooseLoc() {}
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location Address : ",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),

              //* ========= LOCATION ========= */
              SizedBox(height: getDeviceHeight(20)),
              Center(
                child: InkWell(
                  child: Center(
                    child: Text(
                      location,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                      )),
                    ),
                  ),
                  onTap: () {
                    chooseLoc(context);
                  },
                ),
              ),

              // child: OpenStreetMapSearchAndPick(
              //     center: LatLong(latitude, longitude),
              //     buttonColor: kSecondaryColor,
              //     buttonText: 'Set Location',
              //     hintText: 'Search your location',
              //     onPicked: (pickedData) {
              //       // Navigator.pop(context);
              //       // setState(() {
              //       //   location = pickedData.address;
              //       //   latitude = pickedData.latLong.latitude;
              //       //   longitude = pickedData.latLong.longitude;
              //       // });
              //     }),
            ],
          ),
        ),
      ),
    );
  }
}
