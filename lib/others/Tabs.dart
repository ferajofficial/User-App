import 'package:assignment/others/import.dart';
import 'package:assignment/widgets/drawer.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => TabsState();
}

class TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController tabController;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: Container(
                  // height: getDeviceHeight(20),
                  // width: getDeviceWidth(20),q
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSecondaryColor,
                  ),
                  // child: ,
                ),
              ),
            ),
          ),
          backgroundColor: kPrimaryColor,
          elevation: 0,
          bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              indicatorColor: kSecondaryColor,
              indicatorPadding:
                  const EdgeInsetsDirectional.only(start: 20, end: 10),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("User Details",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(" User Location",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          //BUY PAGE
          const userProfile(),
          user_Location(),
        ]),
      ),
    );
  }
}
