import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movie/screen/homeScreen/home_screen.dart';
import 'package:movie/screen/loginScreen/widgets/bottom_button.dart';
import 'package:movie/screen/loginScreen/widgets/custom_text.dart';
import 'package:movie/screen/loginScreen/widgets/name_and_inputText.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              children:  <Widget>[
                const SizedBox(
                  height: 150.0,
                  child:  CustomText(
                      animatedText: 'Login'
                  ),
                ),
                const NameAndInputText(
                  editTextTitle: 'Email',
                  hintText: 'Enter Your Email',
                  prifixIcon: Icon(Icons.person_4_rounded),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                 NameAndInputText(
                    editTextTitle: 'Password',
                    hintText: 'Enter Your Password',
                    prifixIcon: const Icon(Icons.password),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined, size: 20.0,),
                    iconOnPress: () => debugPrint(
                      'Response is comming'
                    ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                BottomButton(
                    buttonName: 'Login',
                    onPress: () {
                      debugPrint(
                          'Response is comming'
                      );
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen(),),);
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
