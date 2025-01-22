import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery.of(context).size.width * 0.5;
    final scHeight = MediaQuery.of(context).size.height * 0.3 ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Card(
          child: Container(
            width: scWidth,
            height: scHeight,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //image
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/P1572690.JPG'),
                ),
                //name
                Text('Mr.Thanatorn Bussaket'),
                //email
                Text("Bankgtgt@gmil.com"),
                //telephone
                Text('0957369087')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
