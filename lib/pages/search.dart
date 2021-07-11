import 'package:flutter/material.dart';


class Searchpage extends StatefulWidget {
  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  TextEditingController searchController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff459EFF;
  int x = 0, y = 1;
  bool inputTextNotNull = false;
  List<String> options = [
    'IGTV',
    'Shop',
    'Style',
    'Sports',
    'Auto',
    'Tech',
    'Politics',
    'Covid-19',
    'World',
    'Movies'
  ];
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                SizedBox(
                  height: deviceWidth * .01,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: deviceWidth * 0.045,
                    ),
                    SizedBox(
                      height: deviceWidth * .16,
                    ),
                    Container(
                      width: deviceWidth * .91,
                      height: deviceWidth * .12,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: TextField(
                            onChanged: (text) {},
                            controller: searchController,
                            style: TextStyle(
                              fontSize: deviceWidth * .040,
                            ),
                            decoration: InputDecoration.collapsed(
                              hintText: ' Search',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: deviceWidth * 0.15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      10,
                      (int index) {
                        return Container(
                          width: deviceWidth * 0.20,
                          height: deviceWidth * 0.10,
                          margin: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.grey,
                              width: deviceWidth * 0.003,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              '${options[index]}',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/search/s0.jpeg',),
                          SizedBox(height: deviceWidth * .005,),
                          Image.asset('assets/search/s1.jpeg'),
                        ],
                      ),
                    ),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s2.jpeg')),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/search/s20.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s15.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s5.jpeg')),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/search/s6.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/search/s7.jpeg',),
                          SizedBox(height: deviceWidth * .005,),
                          Image.asset('assets/search/s8.jpeg'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/search/s9.jpeg',),
                          SizedBox(height: deviceWidth * .005,),
                          Image.asset('assets/search/s10.jpeg'),
                        ],
                      ),
                    ),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s11.jpeg')),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/search/s12.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s13.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s14.jpeg')),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/search/s15.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/search/s16.jpeg',),
                          SizedBox(height: deviceWidth * .005,),
                          Image.asset('assets/search/s17.jpeg'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/search/s18.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s19.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/search/s20.jpeg')),
                  ],
                ),
              ],
              ),
            ),

          ],
        ),

      ),
      bottomNavigationBar: Container(
        height: deviceWidth * 0.175,
        child: BottomNavigationBar(
          iconSize: deviceWidth * 0.07,
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mainpage');
                },
                alignment: Alignment.topCenter,
                icon: Image.asset(
                  'assets/home.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0000000000001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/searchpage');
                },
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/loupe.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/reel.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/activitypage');
                },
                alignment: Alignment.center,
                icon: Image.asset(
                  'assets/heart0.png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text(
                "",
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilepage');
                },
                alignment: Alignment.center,
                icon: CircleAvatar(
                  radius: deviceWidth * 0.12,
                  backgroundImage: AssetImage(
                    "assets/dp.jpg",
                  ),
                ),
              ),
              title: Text(
                '',
                style: TextStyle(fontSize: 0.0001),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

