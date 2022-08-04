import 'package:flutter/material.dart';
import 'package:shayari2/secound.dart';

void main()
{
  runApp(MaterialApp(home: shayari2()));
}
class shayari2 extends StatefulWidget {
  const shayari2({Key? key}) : super(key: key);

  @override
  State<shayari2> createState() => _shayari2State();
}

class _shayari2State extends State<shayari2> {

  List<String> image =[
      "my image/images (7).jpg",
    "my image/images.jpg",
    "my image/images (3).jpg",
    "my image/images (2).jpg",
    "my image/images (1).jpg",
    "my image/images.png",
    "my image/images (6).jpg",
    "my image/images (9).jpg",
    "my image/images (8).jpg",
    "my image/images (4).jpg",

  ];
  List<String> name = ["Love sayari",
    "Life sayari",
    "Best Friend sayari",
    "Sad sayari",
    "Cool shayri",
    "Broken sayari",
    "Time sayari",
    "Motivational sayari ",
     "Funny Shayari",
    "Dosti shayari"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Type of shayari"),),
    body: InkWell(
      child: ListView.separated(
          itemCount: name.length,
      separatorBuilder: (context, index){
            return Divider();
      },itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return secound(name[index],image);
                },));
                setState((){

                });
              },
              leading: Image.asset(
                image[index],
                height: 50,
                width: 50,
              ),
              title: Text(name[index]),
            );
      },
      ),
    )
    );
  }
}
