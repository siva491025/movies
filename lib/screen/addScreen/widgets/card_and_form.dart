import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CardAndForm extends StatelessWidget {
  const CardAndForm({
     required this.title,
    required this.hintText,
      this.feedBackTitle,
    Key? key,
    required
  }) : super(key: key);

  final String title;
  final String hintText;
  final String? feedBackTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: 10.0,
      shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(30.0)
),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
        child: Column(
            children: <Widget>[
              const SizedBox(
height: 20.0,
),
            Container(
              alignment: Alignment.topLeft,
               child: Text(
              title,
              style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold
          ),
         ),
        ),
          const SizedBox(
           height: 10.0,
           ),
          TextField(
              decoration: InputDecoration(
             hintText: hintText ,
           border: const  OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20.0))
           ),
         ),
          ),
          const SizedBox(
            height: 20.0,
          ),
             Container(
                alignment: Alignment.bottomLeft,
                child: Text(
               feedBackTitle!,
style: const TextStyle(
fontSize: 16.0,
fontWeight: FontWeight.bold
),
               ),
              ),
             const SizedBox(
             height: 10.0,
             ),
             TextField(
            decoration: InputDecoration(
            hintText: hintText ,
            border: const  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
),
),
),
 const SizedBox(
height: 20.0,
),
 const Text('Rating'),
const SizedBox(
height: 20.0,
),

RatingBar.builder(
initialRating: 3,
minRating: 1,
direction: Axis.horizontal,
allowHalfRating: true,
itemCount: 5,
itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
itemBuilder: (context, _) => const Icon(
Icons.favorite,
color: Colors.amber,
),
onRatingUpdate: (rating) {
print(rating);
},
),
SizedBox(
height: 20.0,
)
],
    ),
      ),
    );
  }
}
