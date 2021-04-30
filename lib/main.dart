import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

/*void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('I cant launch $command');
  }
}*/

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text(
            'Profile',
            textDirection: TextDirection.ltr,
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),*/
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.blueGrey, Colors.grey],
                )),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                ),
                Center(
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: <Widget>[
                      //FIRST CARD
                      Card(
                        margin: EdgeInsets.fromLTRB(20, 70, 20, 20),
                        elevation: 10,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              margin: EdgeInsets.only(top: 80),
                              alignment: Alignment.center,
                              child: Text(
                                'Ahmad Sayyid Kamal',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              child: Text(
                                'Abuja, Nigeria',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      //customLaunch("tel:+2348084033228");
                                    },
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Icon(Icons.call),
                                        ),
                                        Text(
                                          'Call',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Icon(Icons.message),
                                        ),
                                        Text(
                                          'Message',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Icon(Icons.mail),
                                        ),
                                        Text(
                                          'Email',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(100),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/profile2.jpeg'),
                            radius: 60.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //ABOUT
                Container(
                  decoration: BoxDecoration(),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text(
                      'I am Ahmad, developing apps gives me joy, I could call it a hubby!.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),

                //SKILLS
                Container(
                  decoration: BoxDecoration(),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skills',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //...LIST
                Container(
                  margin: EdgeInsets.all(20.0),
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('images/python.png'),
                              ),
                              Text(
                                'Python',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('images/android.png'),
                              ),
                              Text(
                                'Android',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('images/flutter.png'),
                              ),
                              Text(
                                'Flutter',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('images/react.png'),
                              ),
                              Text(
                                'React',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset('images/sql.png'),
                              ),
                              Text(
                                'Sql Oracle',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
