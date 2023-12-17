import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {

  static const routeNamed = 'screenthree';
  final String name;
  const ScreenThree({Key? key, required this.name}) : super(key: key);



  // final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,
            color: Colors.black87,
          ),
              label:('Home'),
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search,
            color: Colors.black87,),
              label:('search'),
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,
            color: Colors.black87,),
              label:('cart'),
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info,
            color: Colors.black87,),
              label:('help'),
              backgroundColor: Colors.white
          ),
        ],
      ),

      body: Container(
        color: Colors.grey.withOpacity(0.25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Image(image:AssetImage('assets/plants.png')),

            Text('soien ion',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: ListTile(
                leading:CircleAvatar(
                  child:  Image.asset('assets/IMG-20230329-WA0007.jpg'),
    ),
    title: Text('Manahil'),

              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              child: ListTile(
                leading:CircleAvatar(
                  child:  Image.asset('assets/IMG-20230329-WA0008.jpg'),
                ),
                title: Text('Manahil'),
                subtitle:  Text('vermilion reci cs sem temmp ol generes pos mias arem sne ss ie rys oloons mias arem sne ss ie rys olons Regnm zol ale man'),
              ),
            ),


          ],

        ),
      ),


    );
  }
}
