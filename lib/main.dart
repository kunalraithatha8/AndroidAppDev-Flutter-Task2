import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class SecondRoute extends StatelessWidget {
  final String text;
      SecondRoute({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(text+"thank you Kunal for submitting",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height:87),
            ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Previous Page')),
            ],
        ),
        
       
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      theme: ThemeData(
        
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'appdev_task2'),
      debugShowCheckedModeBanner: false,
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  String title="task2";
  TextEditingController name = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(title),
        actions: [
         InkWell(
           child:Icon(Icons.ac_unit),
           onTap:(){
             setState(() {
               title="hello user";
             });
           },
         ),
          
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
        children:<Widget> [
            DrawerHeader(
            decoration: BoxDecoration(
          color: Colors.lightGreenAccent,
          
            
          ),
           child: Text("Hello Users"),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("User Login"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text("Kit Kat Version"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("User Logout"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          
        ],  
        ),
        
      ),
      body: Center(
      
          child: Column(
              
          mainAxisAlignment: MainAxisAlignment.center,
          
       
          children: [
            Row(
              children:  [

                Image.asset('assets/bird8.png'),
                Image.network('https://picsum.photos/250?image=9',width:175,height:280),
               
              ],
              
            ),
            Text("Task 2 for App Developers",style:TextStyle(fontSize:18)),
            SizedBox(height:8),
            
            Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Icon(Icons.library_books_rounded: 50,),
                Icon(Icons.developer_mode,size: 50,),
                Icon(Icons.developer_board,size: 50,),
                
              ],
            
            ),
           
           Padding(padding: EdgeInsets.symmetric(vertical:20,horizontal: 20),
           child: TextFormField(
              controller: name,
             decoration: InputDecoration(
               border : UnderlineInputBorder(),
               labelText: 'enter name'
               
               ),
              

           ),
           ),
           
           ElevatedButton(onPressed:(){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute( text:name.text.toString())),
            );

           }, 
           child: const Text('Submit')),
          ],
        
         
        ),
        
        
      ),
      
    );
  }

}
