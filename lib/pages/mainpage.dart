import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff459EFF;
  int x=0,y=1;
  bool inputTextNotNull = false;
  List<String> likes = [
    '1,126',
    '554',
    '789',
    '428',
    '336',
    '370',
    '1,234,532',
    '374,237',
    '44,234',
    '78,556',
    '24,890',
    '156,742',
    '96,391',
    '18,654',
    '236,735',
    '45,846',
    '1,345,678'
  ];
  List<String> comments = [
    '326',
    '163',
    '226',
    '94',
    '89',
    '93',
    '63,854',
    '34,865',
    '10,746',
    '31,765',
    '8,367',
    '45.729',
    '23,850',
    '4,822',
    '99,745',
    '14,459',
    '164,964'
  ];
  List<String> timings = [
    '21 minutes',
    '45 minutes',
    '1 hour',
    '2 hour',
    '5 hour',
    '10 hour',
    '1 day',
    '5 day',
    '1 week',
    '1 week',
    '2 week',
    '3 week',
    '1 month',
    '1 month',
    '1 month',
    '2 month',
    '3 month',
  ];
  List<String> users = [
    'Your Story',
    'kiranpragya2216',
    'prrtk_',
    'singhveeru_03_',
    'shruti__.2003',
    'vaishnavi_kalhapure',
    'virat.kolhi',
    'mahi7781',
    'abhiandniyu',
    'rohitsharma45',
    'divyendu',
    'bajpayee.manoj',
    'pankajtripathi',
    'hindujasunny',
    'nidhiagerwal',
    'beerbiceps',
    'lacasadepapel',
  ];
  List<String> postusers = [
    'the_shutter_on',
    'kiranpragya2216',
    'prrtk_',
    'singhveeru_03_',
    'shruti__.2003',
    'vaishnavi_kalhapure',
    'virat.kolhi',
    'mahi7781',
    'abhiandniyu',
    'rohitsharma45',
    'divyendu',
    'bajpayee.manoj',
    'pankajtripathi',
    'hindujasunny',
    'nidhiagerwal',
    'beerbiceps',
    'lacasadepapel'
  ];
  List<String> caption = [
    'Where words are restrained,the eyes often talk a great deal    PC: @hemant_lala_m',
    '🌝🤭',
    '🖤🖤',
    'Vo bite pal bhut yaad aate hai🥺😍🥰 #dakshana',
    'Thank you for this wonderful gift🥰🥰🥰🥰',
    '😉😊😄',
    '❤',
    'Had fun watching the semi finals of the US open, a different experience together',
    'Zindagi jeene ke do hi tarike hote hai   jo ho raha hai use sehte jao,Chup rho.   Ya fir jimmedari uthao chize badalne ki!',
    '❤',
    "This is me saying,'Thank You Thank You Thank You' for all the lovely birthday whishes, 💛🤗   jinhone nahin kiya... agali baar kar dijiyega",
    '"A legacy continued. #Ray premires 25 June,only on Netflix"',
    'Sunday Special Holi Special | PC : @neil_lamba',
    'Polka dotted Sunday!!',
    '♥ Styling @nikhitaniranjan Picture @kiransaphotography',
    '💝 - If you feel this emoji, comment with it below',
    'Time to negotiate. 😏'
  ];
  List<String> address = [
    'IIT Guwahati',
    'Gandhi Sangrahalaya, Patna',
    '',
    '',
    'Jabalpur, MP',
    'Ahmednagar, Maharastra',
    'Mumbai, India',
    '',
    '',
    '',
    'La La Land',
    '',
    '',
    '',
    '',
    '',
    ''
  ];
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.0,
        centerTitle: true,
        title: SizedBox(
          height: deviceWidth * 0.12,
          child: Image.asset("assets/instagram_logo.png"),
        ),
        leading: IconButton(
          onPressed: () {},
          alignment: Alignment.centerLeft,
          icon: Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: deviceWidth * 0.08,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Image.asset(
              'assets/instagram-igtv.png',
              height: deviceWidth * 0.07,
              width: deviceWidth * 0.07,
              alignment: Alignment.centerRight,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dmpage');
            },
            alignment: Alignment.center,
            icon: Image.asset(
              'assets/sending.png',
              height: deviceWidth * 0.06,
              width: deviceWidth * 0.06,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: deviceWidth * 0.29,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    17,
                    (int index) {
                      return Column(
                        children: [
                          Container(
                            width: deviceWidth * 0.20,
                            height: deviceWidth * 0.20,
                            margin: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.pinkAccent,width: deviceWidth * 0.008,),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/users/user$index.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            users[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: deviceWidth * 0.03),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 1,
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                17,
                (int index) {
                  return Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/postusers/user$index.jpeg"),
                              radius: deviceWidth * 0.06,
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: deviceWidth * 0.03,),
                                Text(
                                  postusers[index],
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.04,
                                  ),
                                ),
                                Row(
                                  children: [

                                    Text(
                                      address[index],
                                      style: TextStyle(
                                        fontSize: deviceWidth * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: deviceWidth * 0.03,),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  size: deviceWidth * 0.07,
                                ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                          SizedBox(width: deviceWidth * 0.01,),
                        ],
                      ),
                      Container(
                        width: deviceWidth,
                        child: Image.asset(
                          "assets/posts/post$index.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: deviceWidth * 0.01,),
                          Like(),
                          IconButton(
                            onPressed: () {},
                            alignment: Alignment.topCenter,
                            icon: Image.asset(
                              'assets/comment.png',
                              height: deviceWidth * 0.07,
                              width: deviceWidth * 0.07,
                            ),
                          ),
                          IconButton(
                            onPressed: () {

                            },
                            alignment: Alignment.topCenter,
                            icon: Image.asset(
                              'assets/semd.png',
                              height: deviceWidth * 0.07,
                              width: deviceWidth * 0.07,
                            ),
                          ),
                          SizedBox(width: deviceWidth * 0.4,),
                          IconButton(
                            onPressed: () {},
                            alignment: Alignment.topCenter,
                            icon: Image.asset(
                              'assets/save.png',
                              height: deviceWidth * 0.07,
                              width: deviceWidth * 0.07,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: deviceWidth * 0.04,),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/postusers/user$index.jpeg"),
                            radius: deviceWidth * 0.03,
                          ),
                          SizedBox(width: deviceWidth * 0.01,),
                          Flexible(
                            child: Text(
                                'Liked by ${postusers[index]} and ${likes[index]} others',
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.04,
                                  fontWeight: FontWeight.w500,
                                ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceWidth * 0.01,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: deviceWidth * 0.04,),
                          Flexible(
                            child: Text(
                              '${postusers[index]} : ${caption[index]}',
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: deviceWidth * 0.039,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceWidth * 0.018,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: deviceWidth * 0.04,),
                          Text(
                            'View all ${comments[index]} comments',
                            style: TextStyle(
                              fontSize: deviceWidth * 0.037,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceWidth * 0.02,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: deviceWidth * 0.04,),
                          Expanded(
                            flex:1,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/dp.jpg"),
                              radius: deviceWidth * 0.042,
                            ),
                          ),
                          SizedBox(width: deviceWidth * 0.02,),
                          Expanded(
                            flex:8,
                            child: Text(
                              'Add a comment',
                              style: TextStyle(
                                fontSize: deviceWidth * 0.034,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: Text(
                                '❤',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.035,
                                ),
                            ),
                          ),
                          Expanded(
                          flex:1,
                          child: Text(
                                ' 🙌',
                                style: TextStyle(
                                fontSize: deviceWidth * 0.035,
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                              child: Icon(Icons.add_circle_outline,size: deviceWidth * 0.04,)),
                        ],
                      ),
                      SizedBox(height: deviceWidth * 0.02,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: deviceWidth * 0.04,),
                          Text(
                            '${timings[index]} ago ',
                            style: TextStyle(
                              fontSize: deviceWidth * 0.031,
                              color: Colors.grey[500],
                            ),
                          ),
                          Icon(Icons.circle,
                          size: deviceWidth * 0.01,
                          color: Colors.grey[500],),
                          Text(
                            ' See translation',
                            style: TextStyle(
                              fontSize: deviceWidth * 0.031,

                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
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
                  'assets/home (1).png',
                  height: deviceWidth * 0.07,
                  width: deviceWidth * 0.07,
                ),
              ),
              title: Text('',style: TextStyle(fontSize: 0.0000000000001),),
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
              title: Text('',style: TextStyle(fontSize: 0.0001),),
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
              title: Text("",style: TextStyle(fontSize: 0.0001),),
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
              title: Text("",style: TextStyle(fontSize: 0.0001),),
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
              title: Text('',style: TextStyle(fontSize: 0.0001),),
            ),
          ],
        ),
      ),
    );
  }
}

class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
   bool liked = false;
  _press() {
    setState(() {
      liked = !liked;
    });
    if(liked){
      final snackbar = SnackBar(content: Text('You have liked this post'),);
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      child: IconButton(
        onPressed: () => _press(),
        alignment: Alignment.topCenter,
        icon: Image.asset(liked ? 'assets/heart1.png' : 'assets/heart0.png',
          height: deviceWidth * 0.07,
          width: deviceWidth * 0.07,
        )
      ),
    );
  }
}



