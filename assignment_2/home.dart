import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Poke App", style: TextStyle(fontSize: 24)),
          backgroundColor: const Color.fromARGB(255, 125, 21, 222),
          leading: Icon(Icons.menu, size: 30),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  anmals(name: "Lion", image: "assets/images/lion.jpg"),
                  anmals(name: "Tiger", image: "assets/images/tiger.jpg"),
                ],
              ),
              Row(
                children: [
                  anmals(name: "Bee", image: "assets/images/bee.jpg"),
                  anmals(name: "Bird", image: "assets/images/bird.jpg"),
                ],
              ),
              Row(
                children: [
                  anmals(name: "Cat", image: "assets/images/cat.jpg"),
                  anmals(name: "Dog", image: "assets/images/dog.jpg"),
                ],
              ),
              Row(
                children: [
                  anmals(name: "Duck", image: "assets/images/duck.jpg"),
                  anmals(name: "Elephant", image: "assets/images/elephent.jpg"),
                ],
              ),
              Row(
                children: [
                  anmals(name: "Horse", image: "assets/images/horse.jpg"),
                  anmals(name: "monkey", image: "assets/images/monkey.jpg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget anmals({name = "name", image = "assets/images/lion.jpg"}) {
    return Container(
      width: 160,
      height: 120,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 117, 183, 236),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 155, 155, 155),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
