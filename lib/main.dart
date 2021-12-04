import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portfólio: Vinicius de Almeida Nunes'),
          backgroundColor: Colors.teal.shade500,
        ),
        backgroundColor: Colors.teal.shade600,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://static.wikia.nocookie.net/tudosobrehoradeaventura/images/7/7e/Finn_with_bionic_arm-0.png/revision/latest?cb=20201206194722&path-prefix=pt-br'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('../img/eu.png'),
                  radius: 65,
                ),
              ),
              Text(
                'Vinicius de Almeida Nunes',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Programador Front-end',
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RoadRage',
                    letterSpacing: 3.5),
              ),
              SizedBox(
                height: 20,
                width: 400,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 35,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+11 95780-6515',
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'RoadRage',
                        fontSize: 25,
                        letterSpacing: 1.5),
                  ),
                  subtitle: Text(
                    'Número de telefone',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 35,
                    color: Colors.black,
                  ),
                  title: Text(
                    'estudosviny@gmail.com',
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'RoadRage',
                        fontSize: 25,
                        letterSpacing: 1.5),
                  ),
                  subtitle: Text(
                    'Email para contato',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      '../img/facebook.png',
                      width: 50,
                    ),
                    
                    Image.asset(
                      '../img/insta.png',
                      width: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
