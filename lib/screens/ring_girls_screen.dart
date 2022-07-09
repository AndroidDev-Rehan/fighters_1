import 'package:fighters/screens/chat_screen.dart';
import 'package:fighters/screens/ring_girl_screen.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class RingGirlsScreen extends StatelessWidget {
  const RingGirlsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ring Girls'),
        leading: Image.asset('images/logo2.jpeg',),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Expanded(
          //     child: TextField(
          //       // autofocus: true,
          //       style: TextStyle(fontSize: 15.0),
          //       decoration: InputDecoration(
          //         filled: true,
          //         fillColor: Colors.white,
          //         hintText: 'Search',
          //         prefixIcon: Icon(Icons.search),
          //         contentPadding:
          //         const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
          //         focusedBorder: OutlineInputBorder(
          //           borderSide: BorderSide(color: Colors.red),
          //           borderRadius: BorderRadius.circular(25.7),
          //         ),
          //         enabledBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white),
          //           borderRadius: BorderRadius.circular(25.7),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/ring1.jpg'),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScreen();
                            })
                            );
                          },
                          child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 25),)),
                      SizedBox(height: 10,),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RingGirlScreen();
                    })
                    );
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/ring2.jpg'),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScreen();
                            })
                            );
                          },
                          child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 25),)),
                      SizedBox(height: 10,),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RingGirlScreen();
                    })
                    );

                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/ring3.jpg'),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScreen();
                            })
                            );
                          },
                          child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 25),)),
                      SizedBox(height: 10,),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RingGirlScreen();
                    })
                    );

                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/ring5.png'),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScreen();
                            })
                            );
                          },
                          child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 25),)),
                      SizedBox(height: 10,),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RingGirlScreen();
                    })
                    );

                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/ring2.jpg'),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScreen();
                            })
                            );
                          },
                          child: Text("Chat",style: TextStyle(color: Colors.white,fontSize: 25),)),
                      SizedBox(height: 10,),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RingGirlScreen();
                    })
                    );

                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/ring3.jpg'),
                      SizedBox(height: 10,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScreen();
                            })
                            );
                          },
                          child: const Text("Chat",style: TextStyle(color: Colors.white,fontSize: 25),)),
                      const SizedBox(height: 10,),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RingGirlScreen();
                    })
                    );

                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
