import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height:200,
            child: Stack(children: <Widget>[
              Positioned(
                child: Opacity(
                  opacity: 0.75,
                  child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/wave.png")
                    )
                  ),
                ),
                ),
              )
            ],),
          ),
          SizedBox(
            height:20
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello. I'm just learning it",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  )
                ),
                SizedBox(
                  height:45
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent
                  ),
                  child: Column(children: <Widget>[
                    Container(
                      padding:EdgeInsets.all(5),
                      decoration: BoxDecoration(
                       border: Border(
                         bottom:BorderSide(
                           color: Colors.grey
                         )
                       )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.grey[300],
                          )
                        ),
                        style: TextStyle(
                          color:Colors.white,
                          )
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border(
                         bottom:BorderSide(
                           color: Colors.grey
                         )
                       ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.grey[300],
                          ),
                        ),
                        style: TextStyle(
                          color:Colors.white,
                          ),
                      ),
                    )
                  ],
                  ),
                ),
                SizedBox(
                  height:10
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.white38,
                      )
                    )
                  ),
                ),
                SizedBox(
                  height:25
                ),
                Container(
                  height:50,
                  margin:EdgeInsets.symmetric(horizontal:60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pink[800]
                  ),
                  child: Center(
                    child:Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white70
                      )
                    )
                  )
                )
              ],
            )
          )
        ],
      )
    );
  }
}

