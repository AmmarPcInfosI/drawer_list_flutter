import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  Color c1=Colors.grey;
  Color c2=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Image Button'),
      ),
      drawer: Drawer(
        child:
          Column(
              
                  children: [
                    SizedBox(
                      width: 300,
                      child: DrawerHeader(decoration: BoxDecoration(color: Colors.blue,),child: Column(
                      children: [CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://images.pexels.com/photos/18187424/pexels-photo-18187424.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
                        Text("Ammar Al Hasani"),
                      ],
                                      )),
                    ),
                  ListTile(leading: Icon(Icons.home),title: Text('Home',),trailing: Icon(Icons.arrow_forward_ios),),
                  ListTile(leading: Icon(Icons.settings),title: Text('Setting',),trailing: Icon(Icons.arrow_forward_ios),),
                  ListTile(leading: Icon(Icons.logout),title: Text('Log Out',),trailing: Icon(Icons.arrow_forward_ios),),
                  ]
                ),
                
              
            
          
            
        
      ),
    
      
      
    );
  }
}
