import 'package:flutter/material.dart';
import 'package:movie/screen/addScreen/widgets/card_and_form.dart';
import 'package:movie/screen/homeScreen/home_screen.dart';
import 'package:movie/screen/loginScreen/widgets/name_and_inputText.dart';

class AddScreen extends StatelessWidget {
   AddScreen({Key? key}) : super(key: key);

  List<Birthday> lsBirthDay = [
    Birthday( title: 'Today', name: 'guna',birthdayDate: DateTime.now(),description: 'https://img.freepik.com/free-vector/detailed-birthday-lettering_52683-58875.jpg?w=2000'),
    Birthday(title: 'Upcomming',name: 'dev',birthdayDate: DateTime(DateTime.thursday),description: 'https://thumbs.dreamstime.com/b/upcoming-banner-template-ribbon-label-sign-sticker-195326451.jpg'),
    Birthday(title: 'Finished', name: 'leo',birthdayDate: DateTime(DateTime.monday), description: 'https://thumbs.dreamstime.com/b/finished-grunge-vintage-stamp-isolated-white-background-finished-sign-finished-stamp-122289265.jpg'),
    Birthday(title: 'Upcomming',name: 'gana',birthdayDate: DateTime(DateTime.thursday),description: 'https://thumbs.dreamstime.com/b/upcoming-banner-template-ribbon-label-sign-sticker-195326451.jpg'),
    Birthday(title: 'Finished', name: 'bala',birthdayDate: DateTime(DateTime.thursday),description: 'https://thumbs.dreamstime.com/b/finished-grunge-vintage-stamp-isolated-white-background-finished-sign-finished-stamp-122289265.jpg'),
    Birthday(title: 'Today', name: 'Modestus',birthdayDate: DateTime.now(),description: 'https://img.freepik.com/free-vector/detailed-birthday-lettering_52683-58875.jpg?w=2000'),
    Birthday(title: 'Today', name: 'sankara',birthdayDate: DateTime.now(),description: 'https://img.freepik.com/free-vector/detailed-birthday-lettering_52683-58875.jpg?w=2000'),
    Birthday(title: 'Today', name: 'Liwen Màxim',birthdayDate: DateTime.now(),description: 'https://img.freepik.com/free-vector/detailed-birthday-lettering_52683-58875.jpg?w=2000'),
    Birthday(title: 'Finished',name: 'Cendrillon Nezih',birthdayDate: DateTime(DateTime.monday),description: 'https://thumbs.dreamstime.com/b/finished-grunge-vintage-stamp-isolated-white-background-finished-sign-finished-stamp-122289265.jpg'),
    Birthday(title: 'Finished',name: 'Wayland Alfreda',birthdayDate: DateTime(DateTime.monday),description: 'https://thumbs.dreamstime.com/b/finished-grunge-vintage-stamp-isolated-white-background-finished-sign-finished-stamp-122289265.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add'),
      ),
      body:  ListView(
        children:  <Widget>[Center(
          child: Column(
                  children: const   <Widget>[
                     SizedBox(
                      height: 80.0,
                    ),
                     CircleAvatar(
                      radius: 100.0,
                      backgroundImage: NetworkImage('https://img.freepik.com/free-vector/detailed-birthday-lettering_52683-58875.jpg?w=2000'),
                    ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CardAndForm(
                            title: 'Favourite Movies',
                            hintText: 'Enter Your Favourite Movies',
                           feedBackTitle: 'One Line of this Movie',
                        ),
                      )
                  ],
                ),
        ),
    ]
      )


    );
  }
}
