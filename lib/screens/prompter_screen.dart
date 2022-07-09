import 'package:fighters/screens/chat_screen.dart';
import 'package:fighters/screens/fighters_screen.dart';
import 'package:fighters/screens/filter_screen.dart';
import 'package:flutter/material.dart';
import '../components.dart';

class PrompterScreen extends StatefulWidget {
  const PrompterScreen({Key? key}) : super(key: key);

  @override
  _PrompterScreenState createState() => _PrompterScreenState();
}

class _PrompterScreenState extends State<PrompterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prompters'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(
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
            FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
            },child: Icon(Icons.filter_alt_rounded),backgroundColor: Colors.redAccent),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-3.jpg'),
                      SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                        },
                        child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-2.jpg'),
                      SizedBox(height: 10,),
                      MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                          },
                        child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
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
                      Image.asset('images/pic-4.jpg'),
                      SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                        },
                        child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-5.jpg'),
                      SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                        },
                        child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
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
                      Image.asset('images/pic-2.jpg'),
                      SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                        },
                        child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [
                      SizedBox(height: 10,),
                      Image.asset('images/pic-3.jpg'),
                      SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                        },
                        child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FightersScreen()));
                  },
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
