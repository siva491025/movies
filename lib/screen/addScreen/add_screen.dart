import 'package:flutter/material.dart';
import 'package:movie/screen/homeScreen/home_screen.dart';

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
      body: Column(
        children:  <Widget>[
          const SizedBox(
            height: 50,
          ),
          ListView.builder(
              itemCount: lsBirthDay.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const <Widget>[

                    ],
                  ),
                );
              },
          )
        ],
      ),
    );
  }
}
