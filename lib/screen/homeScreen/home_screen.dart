import 'package:flutter/material.dart';
import 'package:movie/screen/addScreen/add_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddScreen()));
              },
              icon:const Icon(
                  Icons.add
              ),
          ),
        ],
      ),
      body: const HomeScreenBody()
    ) ;
  }
}


class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {


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
    return
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ReorderableListView(
            onReorder: (oldIndex, newIndex){
              setState(() {
                final element =  lsBirthDay.removeAt(oldIndex);
                lsBirthDay.insert(newIndex, element);
              });
            },
            children:   <Widget>[
                        for (int index = 0; index < lsBirthDay.length; index++)
                          ListTile(
                            key: Key('$index'),
                           leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                lsBirthDay[index].description.toString()
                            ),
                          ),
                            title: Text(
                              lsBirthDay[index].name.toString(),
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              lsBirthDay[index].birthdayDate.toString(),
                            ),
                        ),
                      ],



          ),
        );

  }
}















class Birthday{
  DateTime? birthdayDate;
  String? name;
  String? description;
  String? title;
  Birthday({this.name,this.birthdayDate,this.description, this.title});

  Birthday.fromJson(Map<String,dynamic> json, this.name, this.title, this.birthdayDate, this.description) {
    final name = json['name'].toString();
    final id = json['birthdayDate'].toString();
    final description = json['description'].toString();
    final  title = json['title'].toString();
  }
}
