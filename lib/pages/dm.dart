import 'package:flutter/material.dart';

List<String> postusers = [
  'The Shutter On',
  'Pragya Kiran',
  'Pratik Choudhary',
  'VEER',
  'shruti vishwakarma',
  'Vaishnavi Kalhapure',
  'Virat Kolhi',
  'MS Dhoni',
  'abhiandniyu',
  'Rohit Sharma',
  'Divyendu Sharma',
  'Manoj Bajpayee',
  'Pankaj Tripathi',
  'Sunny Hinduja',
  'Nidhi Agerwal',
  'Ranveer Allahabadiya',
  'lacasadepapel'
];
List<String> timings = [
  '4 m',
  '8 m',
  '1 h',
  '2 h',
  '5 h',
  '10h',
  '1 d',
  '5 d',
  '1 w',
  '1 w',
  '2 w',
  '3 w',
  '1 m',
  '1 m',
  '1 m',
  '2 m',
  '3 m',
];
List<String> messages = [
  'You:Love your clicks bro,keep it',
  'Sent bussiness.minds post',
  'You: Watch it once, i am sure you will like it',
  'Sent rvcj.insta post',
  'I heard this is a good movie',
  'You:Sounds good😂😂😂',
  'You:Hello Sir',
  'You:Happy birthday our beloved mahi',
  'You:I want to work with you, please consider my request',
  'You:Congratulations sir',
  'You:How are you munna bhaiya',
  'You:Congratulation sir for family man',
  'You:Hello sir',
  'You:Sandeep bhaiya,please help',
  'You:Big fan mam🥰',
  'You:Good morning bhaiya',
  'You:Professor is best😏'
];
class Dmpage extends StatefulWidget {
  @override
  _DmpageState createState() => _DmpageState();
}

class _DmpageState extends State<Dmpage> {
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
        title: SizedBox(
          height: deviceWidth * 0.12,
          child: Column(
            children: [
              SizedBox(height: deviceWidth * .02,),
              Text(
                'anu.rag__r',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'arial',
                ),
              ),
            ],
          ),
        ),
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
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Icon(
                Icons.video_call_outlined,
                color: Colors.black,
                size: deviceWidth * 0.08,
            ),
          ),
          IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.black,
              size: deviceWidth * 0.06,
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
                      height: deviceWidth * .16,
                    ),
                    Container(
                      width: deviceWidth * .90,
                      height: deviceWidth * .12,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
              ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  17,
                      (int index) {
                    return Column(
                      children: <Widget>[
                        SizedBox(height: deviceWidth * 0.06,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(width: deviceWidth * 0.04,),
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/postusers/user$index.jpeg"),
                                radius: deviceWidth * 0.08,
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.04,),
                            Expanded(
                              flex: 7,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: deviceWidth * 0.01,),
                                  Text(
                                    '${postusers[index]}',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.041,
                                    ),
                                  ),
                                  SizedBox(height: deviceWidth * 0.02,),
                                  Text(
                                        '${messages[index]}',
                                    overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.038,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                  SizedBox(height: deviceWidth * 0.03,),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  SizedBox(height: deviceWidth * 0.045,),
                                  Text(
                                    '${timings[index]}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.038,
                                      color: Colors.grey[400],

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  size: deviceWidth * 0.08,
                                  color: Colors.grey[500],
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.04,),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: deviceWidth * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                alignment: Alignment.center,
                icon: Icon(Icons.camera_alt_rounded,
                      color: Colors.blue[300],
                      size: deviceWidth * 0.08,
                    )
            ),
            Text(
              'Camera',
              style: TextStyle(
                color: Colors.blue[300],
                fontSize: deviceWidth * 0.045,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

