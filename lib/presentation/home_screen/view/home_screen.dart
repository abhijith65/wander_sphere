import 'package:flutter/material.dart';
import 'package:wander_sphere/presentation/chat_screen/view/chat_screen.dart';
import 'package:wander_sphere/presentation/details_screeen/view/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wander Sphere'),
      ),
      body:Column(
        children: [
          Container(
                color: Colors.orangeAccent,
               height: MediaQuery.sizeOf(context).height*.4,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: 'search',
                        suffixIcon: Icon(Icons.search)
                      ),
                    ),
                  ),
                ),
              ),
          Expanded(child: Gridpage()),
        ],
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
      },child: Icon(Icons.android_rounded),),
    );
  }
}

class Gridpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));},
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2),
          children: [
            Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(20)
            ),
              child: Center(child: Text('hotels')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('tourist place')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20)
              ),child: Center(child: Text('theatures')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('theatures')),
            ),

          ],
        ),
      ),
    );
  }
}
