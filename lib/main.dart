import 'package:flutter/material.dart';
import 'package:navigation_project/screen_3.dart';

import 'homescreen.dart';

void main()=>runApp(
  MaterialApp(

    home: navigation(),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      ScreenThree.routeNamed: (ctx) => const ScreenThree(
        name: '',
      ),
      navigation.routeNamed: (ctx) => const navigation(),
      HomeScreen.routeNamed: (ctx) => HomeScreen(),
    },

  ),
);
class navigation  extends StatelessWidget {
  static const routeNamed = 'navigation';


  const navigation ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [


              Image(image: AssetImage('assets/red lake.png')),
          SizedBox(height: 15,),
          Text('Welcome!',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 160.0,),
          new SizedBox(
            width: 150,
            height: 50,
            child:ElevatedButton(

            onPressed: () {
              {Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );}

            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),




            child: Text('Lets Go'),
          ),),


        ],
      )
    );
  }
}




