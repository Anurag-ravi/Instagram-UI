import 'package:flutter/material.dart';
List<String> high =[
  'clicks',
  '😎',
  'writings',
  'New',
];

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  TextEditingController searchController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff459EFF;
  int x = 0, y = 1;
  bool inputTextNotNull = false;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/mainpage');
          },
          alignment: Alignment.centerLeft,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: deviceWidth * 0.08,
          ),
        ),
        title: SizedBox(
          height: deviceWidth * 0.12,
          child: Column(
            children: [
              SizedBox(height: deviceWidth * .02,),
              Row(
                children: [
                  Text(
                    '     anu.rag__r',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'arial',
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: deviceWidth * 0.07,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: deviceWidth * 0.07,
            ),
          ),
          IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.black,
              size: deviceWidth * 0.09,
            ),
          ),
        ],
      ),
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
                      height: deviceWidth * .26,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/dp.jpg"),
                      radius: deviceWidth * 0.12,
                    ),
                    SizedBox(width: deviceWidth * .09,),
                    Column(
                      children: <Widget>[
                        Text(
                            '5',
                          style: TextStyle(
                            fontSize: deviceWidth *.05,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: deviceWidth * .01,),
                        Text(
                            'Posts',
                          style: TextStyle(
                            fontSize: deviceWidth *.04,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: deviceWidth * .04,),
                    Column(
                      children: <Widget>[
                        Text('407',style: TextStyle(
                          fontSize: deviceWidth *.05,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: deviceWidth * .01,),
                        Text('Followers',style: TextStyle(
                          fontSize: deviceWidth *.04,
                          fontWeight: FontWeight.w300,
                        ),),
                      ],
                    ),
                    SizedBox(width: deviceWidth * .04,),
                    Column(
                      children: <Widget>[
                        Text('705',style: TextStyle(
                          fontSize: deviceWidth *.05,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: deviceWidth * .01,),
                        Text('Following',style: TextStyle(
                          fontSize: deviceWidth *.04,
                          fontWeight: FontWeight.w300,
                        ),),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: deviceWidth * 0.04,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: deviceWidth * 0.02,),
                        Text('Anurag Ravi',style: TextStyle(
                          fontSize: deviceWidth *.037,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                        ),),
                        SizedBox(height: deviceWidth * 0.01,),
                        Text('Navodayan+Dakshanite(20)😎',style: TextStyle(
                          fontSize: deviceWidth *.037,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                        ),),
                        SizedBox(height: deviceWidth * 0.01,),
                        Text('IITG CSE 24❤',style: TextStyle(
                          fontSize: deviceWidth *.037,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                        ),),
                        SizedBox(height: deviceWidth * 0.01,),
                        Row(
                          children: [
                            Text('😎Passionate for photography(page:-@the...',
                              style: TextStyle(
                                fontSize: deviceWidth *.037,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.1,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text('more',style: TextStyle(
                              color: Colors.grey,
                              fontSize: deviceWidth *.037,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                        SizedBox(height: deviceWidth * 0.01,),
                      ],
                    ),
                    SizedBox(width: deviceWidth * 0.05,),
                  ],
                ),
                SizedBox(height: deviceWidth * .07,),
                Row(
                  children: <Widget>[
                    SizedBox(width: deviceWidth * 0.03,),
                    Container(
                      width: deviceWidth * .81,
                      height: deviceWidth * .11,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: deviceWidth * .039,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: deviceWidth * .02,),
                    Container(
                      width: deviceWidth * .11,
                      height: deviceWidth * .11,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_down,color: Colors.grey[600],),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceWidth * .05,),
                Container(
                  height: deviceWidth * 0.29,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      4,
                          (int index) {
                        return Column(
                          children: [
                            Container(
                              width: deviceWidth * 0.22,
                              height: deviceWidth * 0.20,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey,width: deviceWidth * 0.005,),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/highlights/h$index.jpeg',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '${high[index]}',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: deviceWidth * 0.03),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: deviceWidth * .05,),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Icon(Icons.view_module_outlined,
                          size: deviceWidth * 0.11,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Icon(Icons.person_pin_outlined,
                          size: deviceWidth * 0.1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 2,
                        width: deviceWidth * .5,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 2,
                        width: deviceWidth * .5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceWidth * .01,),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/profile/p0.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/profile/p1.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/profile/p2.jpeg')),
                  ],
                ),
                SizedBox(height: deviceWidth * 0.005,),
                Row(
                  children: <Widget>[
                    Expanded(flex: 8,child: Image.asset('assets/profile/p3.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Image.asset('assets/profile/p4.jpeg')),
                    SizedBox(width: deviceWidth * .005,),
                    Expanded(flex: 8,child: Text('d',style: TextStyle(color: Colors.white),),),
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
                  'assets/search.png',
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

