
import 'package:flutter/material.dart';
import 'package:navigation_project/screen_3.dart';

class HomeScreen extends StatelessWidget{
  static const routeNamed = '/home';

  HomeScreen({
    Key? key,
  }) : super(key: key);
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
   body : Column(
     children: [
       Expanded(
                flex: 2,
           child: Container(
             color: Colors.white,
             child: Column(
                  children: [

                    Image(image: AssetImage('assets/butterfly.png')
      ),
  ]
  ),

  ),
              ),
       Expanded(

                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                      color: Colors.white
                    ),
                  ),

                child: Column(
                  children: [
                    SizedBox(height: 60,),
      Text('Enter Your Name',
      style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      ),
      ),
      SizedBox(height: 7,),
      Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextFormField(
        controller: nameController,
      decoration: InputDecoration(

      border: OutlineInputBorder(
      borderSide:BorderSide(color:Colors.black87),
      ),
      ),
      ),
      ),
                    SizedBox(height: 10,),
      ElevatedButton(
      child: Text('Start Your Journey'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),
      onPressed: () {
      // Navigator.push(context, MaterialPageRoute(builder:(context)=>ScreenThree()),);
        final name = nameController.text.trim();

        Navigator.pushNamed(
            context,
            ScreenThree.routeNamed,
            arguments: name,
        );
      },
      ),
      ],
                ),
              ),
              ),


          ],
        ),


);



  }
}


