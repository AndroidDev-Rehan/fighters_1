import 'package:flutter/material.dart';
import '../components.dart';

class RingGirlScreen extends StatelessWidget {
  const RingGirlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ring Girl Screen'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ReusableCard(
                color: Color(0xFF1D1E33),
                cardChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Image.asset('images/ring2.jpg'),
                      SizedBox(height: 20,),
                      Text("NAME : Girl name",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("AGE : 30",style: TextStyle(color: Colors.white,fontSize: 20)),
                      SizedBox(height: 20,),
                      Text("Arm Strength : 90",style: TextStyle(color: Colors.white,fontSize: 20)),
                      SizedBox(height: 20,),
                      Text("More : any other info",style: TextStyle(color: Colors.white,fontSize: 20)),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
                onPress: () {}
            ),
            FloatingActionButton(onPressed: () {  },child: Icon(Icons.arrow_forward_outlined),backgroundColor: Colors.redAccent,),
          ],
        ),
      ),
    );
  }
}
