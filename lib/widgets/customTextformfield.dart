import 'package:assignment/others/import.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.hintText,
    this.keyboardType,
    this.onTap,
    this.focusNode,
    this.onFieldSubmitted,
    this.decoration, 
   
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;

  final String? hintText;
  final String? decoration;
  final TextInputType? keyboardType;
  final void Function()? onTap;
 
  final FocusNode? focusNode;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
        boxShadow: [
          // BoxShadow(
          //   color: kDeepGradientColor,
          //   spreadRadius: 5,
          //   blurRadius: 10,
          //   offset: Offset(0, 2),
          // )
        ],
      ),
      child: TextFormField(
        onTap: onTap,
        style: TextStyle(
            // fontSize: getDeviceWidth(20),
            ),
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          //hintStyle: TextStyle(fontSize: getDeviceWidth(18)),
          filled: true,
          //fillColor: kSecondaryBgColor,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
