import 'package:app/widgets/actionbtn.dart';
import 'package:app/widgets/createRoombtn.dart';
import 'package:app/widgets/newfeed.dart';
import 'package:app/widgets/roomAvatar.dart';
import 'package:app/widgets/smaple_Screens/screen2.dart';
import 'package:app/widgets/smaple_Screens/screen3.dart';
import 'package:app/widgets/smaple_Screens/screen4.dart';
import 'package:app/widgets/smaple_Screens/screen5.dart';
import 'package:app/widgets/smaple_Screens/screen6.dart';
import 'package:app/widgets/storytimeline.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(vsync: this, length: 6);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  List<String> avatarUrl = ["https://randomuser.me/api/portraits/men/86.jpg","https://images.unsplash.com/photo-1520810627419-35e362c5dc07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ","https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ",
  "https://m.media-amazon.com/images/M/MV5BMTM2NzI3NTU5Nl5BMl5BanBnXkFtZTcwODkxODAwNA@@._V1_UY256_CR9,0,172,256_AL_.jpg","https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&crop=faces&fit=crop&h=200&w=200"
  ];

  List<String> storyUrl = ["https://static.wikia.nocookie.net/avatar/images/7/7e/Capital_harbor.png/revision/latest/top-crop/width/200/height/150?cb=20090312231634","https://static.wikia.nocookie.net/avatar/images/6/6f/Ba_Sing_Se.png/revision/latest/top-crop/width/200/height/150?cb=20140422090139","https://static.wikia.nocookie.net/avatar/images/f/f7/Modern_Ba_Sing_Se.png/revision/latest/top-crop/width/200/height/150?cb=20140730154445",
  "https://static.wikia.nocookie.net/avatar/images/6/6d/Bolin%27s_lavish_apartment.png/revision/latest/scale-to-width-down/200?cb=20131013013716","https://static.wikia.nocookie.net/avatar/images/d/de/Mako_and_Bolin%27s_apartment_building.png/revision/latest/scale-to-width-down/200?cb=20131006140257"
  ];

  List<String> feedUrl = ["https://dailytimes.com.pk/assets/uploads/2020/11/25/6-pakistan-major-generals-promoted-to-lieutenant-general-rank-ispr-1606292826-3356.jpg","https://img.theculturetrip.com/768x432/wp-content/uploads/2017/12/quaids-tomb-web-1.jpg","https://media.istockphoto.com/photos/pakistan-monument-islamabad-picture-id535695503?k=6&m=535695503&s=612x612&w=0&h=uP8aDK4xlfjk3kEiyr9wwUiuh80UwAiICweFpiBDosk=",
  "https://webmeup.com/upload/blog/lead-image-105.png","https://sociallight.net/wp-content/uploads/2018/04/iStock-473456596.jpg"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: TabBar(
          indicatorWeight: 2.0,
          controller: controller,
          tabs: [
            Tab(icon: Icon(MdiIcons.home,color: Colors.blue,size: 35,)),
            Tab(icon: Icon(MdiIcons.accountSearch,color: Colors.grey[700],size: 35,)),
            Tab(icon: Icon(MdiIcons.chat,color: Colors.grey[700],size: 35,)),
            Tab(icon: Icon(Icons.people,color: Colors.grey[700],size: 35,)),
            Tab(icon: Icon(Icons.notification_important,color: Colors.grey[700],size: 35,)),
            Tab(icon: Icon(Icons.more_vert,color: Colors.grey[700],size: 35,)),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("facebook",style:TextStyle(color: Colors.blue,
        fontSize: 28.0,fontWeight: FontWeight.bold,letterSpacing: -1.2)),
        actions: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: (){},
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.message_outlined),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: (){},
                ),
              ),
            ],
      ),
      body: TabBarView(
        controller: controller,
        children: [
          SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // create post editor
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:8.0, vertical:10.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius:25.0,
                              backgroundImage: NetworkImage(avatarUrl[0]),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: TextField(
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left:25.0),
                                  hintText: "What's on your mind?",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(color: Colors.black26,width: 0.0)
                                  ),
                                  focusColor: Colors.black26
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
              
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,  
                ),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey[100],
                      thickness: 1.5,
                    ),
                    Row(
                      children: [
                        actionButton(Icons.live_tv, "Live", Colors.red),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.black26,
                        ),
                        actionButton(MdiIcons.image, "Photos", Colors.green),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.black26,
                        ),
                        actionButton(MdiIcons.videoPlus, "Room", Colors.deepPurpleAccent)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                child: Container(
                  width: double.infinity,
                  height: 10,
                  color: Color(0xffc0c0c0),
                ),
              ),
              // create rooms
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      roomBtn(),
                      roomavatar(avatarUrl[0]),
                      roomavatar(avatarUrl[1]),
                      roomavatar(avatarUrl[2]),
                      roomavatar(avatarUrl[3]),
                      roomavatar(avatarUrl[4]),
                      roomavatar(avatarUrl[0]),
                      roomavatar(avatarUrl[1]),
                      roomavatar(avatarUrl[2]),
                      roomavatar(avatarUrl[3]),
                      roomavatar(avatarUrl[4]),
                    ],
                  ),
                ),
              ),
              // create rooms end
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                child: Container(
                  width: double.infinity,
                  height: 10,
                  color: Color(0xffc0c0c0),
                ),
              ),
              // now create a timeline story section
              SizedBox(width: 40.0),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      StoryTile(avatarUrl[0], storyUrl[0], "Zuhad"),
                      StoryTile(avatarUrl[1], storyUrl[1], "Mariya"),
                      StoryTile(avatarUrl[2], storyUrl[2], "Bilal"),
                      StoryTile(avatarUrl[3], storyUrl[3], "Mirab"),
                      StoryTile(avatarUrl[4], storyUrl[4], "Hasan"),
                      StoryTile(avatarUrl[0], storyUrl[0], "Zuhad"),
                      StoryTile(avatarUrl[1], storyUrl[1], "Mariya"),
                      StoryTile(avatarUrl[2], storyUrl[2], "Bilal"),
                      StoryTile(avatarUrl[3], storyUrl[3], "Mirab"),
                      StoryTile(avatarUrl[4], storyUrl[4], "Hasan"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                child: Container(
                  width: double.infinity,
                  height: 10,
                  color: Color(0xffc0c0c0),
                ),
              ),
              SizedBox(width: 100.0),
              feedbox("Zuhad", avatarUrl[0], "6 min", "Conference", feedUrl[0]),        
              feedbox("Mariya", avatarUrl[1], "16 min", "Conference", feedUrl[1]),
              feedbox("Bilal", avatarUrl[2], "26 min", "Conference", feedUrl[2]),
              feedbox("Mirab", avatarUrl[3], "36 min", "Conference", feedUrl[3]),
              feedbox("Hasan", avatarUrl[4], "56 min", "Conference", feedUrl[4]),
              feedbox("Zuhad", avatarUrl[0], "6 min", "Conference", feedUrl[0]),        
              feedbox("Mariya", avatarUrl[1], "16 min", "Conference", feedUrl[1]),
              feedbox("Bilal", avatarUrl[2], "26 min", "Conference", feedUrl[2]),
              feedbox("Mirab", avatarUrl[3], "36 min", "Conference", feedUrl[3]),
              feedbox("Hasan", avatarUrl[4], "56 min", "Conference", feedUrl[4]),
            ],
          ),
        ),
        
      ),
      Home1(),
      Home2(),
      Home3(),
      Home4(),
      Home5(),
        ],
        )
    );
  }
}