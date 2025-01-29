import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: SingleChildScrollView (child:Column(
          children: [
        Container (
     width: 300,
     height: 300,
     decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 59, 235),
      image: DecorationImage (image: NetworkImage ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxluyINv-ifzEcZAgPVMuGh35lLMCxNcrr4fDl7LeBs-3loHUxTQ04ll32eXagBjOyN7E&usqp=CAU"),
      fit: BoxFit.contain
     ),
     ),
        ),

 Container (
     width: 300,
     height: 300,
     decoration: BoxDecoration(
      color: const Color.fromARGB(255, 137, 59, 255),
      image: DecorationImage (image: NetworkImage ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxluyINv-ifzEcZAgPVMuGh35lLMCxNcrr4fDl7LeBs-3loHUxTQ04ll32eXagBjOyN7E&usqp=CAU"),
      fit: BoxFit.cover
     ),
     ),
 ),


      Container (
     width: 300,
     height: 300,
     decoration: BoxDecoration(
      color:  const Color.fromARGB(255, 255, 147, 59),
      image: DecorationImage (image: NetworkImage ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxluyINv-ifzEcZAgPVMuGh35lLMCxNcrr4fDl7LeBs-3loHUxTQ04ll32eXagBjOyN7E&usqp=CAU"),
      fit: BoxFit.fill
     ),
     ),
      ),

      
          Container(
            child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxluyINv-ifzEcZAgPVMuGh35lLMCxNcrr4fDl7LeBs-3loHUxTQ04ll32eXagBjOyN7E&usqp=CAU"),
          ),
      
        Container(
          child: Image.asset ("assets/images/images.jpeg"),
        ),
        Image.asset("assets/images/images.jpeg"),
        Image.asset("assets/images/images.jpeg"),
        Image.asset(
           "assets/images/images.jpeg",
          width: 100,
          height: 100,
        ),
        // after
        Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.black.withAlpha(100),
                  ),
                  Center(
                    child: Text(
                      "Welcome to Flutter",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Show SnackBar",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.green,
                        ),
                        child: Text(
                          "Go to Second Screen",
                          style: TextStyle(
                            fontSize: 16),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.black,
                      ),
                      child: Text(
                        "Toggle Image",
                        style: TextStyle(
                          fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}