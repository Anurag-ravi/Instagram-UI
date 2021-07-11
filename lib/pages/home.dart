import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int buttonColor = 0xff459EFF;

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 90,
          ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: deviceWidth * .2,),
                      Image.asset(
                        'assets/instagram_logo.png',
                        height: deviceWidth * .20,
                      ),
                      SizedBox(height: deviceWidth * .25,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Container(
                          width: deviceWidth * .90,
                          height: deviceWidth * .14,
                          decoration: BoxDecoration(
                            color: Color(buttonColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: deviceWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: deviceWidth * .2,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Container(
                          width: deviceWidth * .90,
                          height: deviceWidth * .14,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(buttonColor)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color(buttonColor),
                                fontSize: deviceWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),



                      SizedBox(height: deviceWidth * .25,),

                      SizedBox(height: deviceWidth * .06,),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}