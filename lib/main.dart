

import 'package:day13/chatpage.dart';
import 'package:day13/profile.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() async {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  String? get name => null;

  @override
  Widget build(BuildContext context) {
    String imgurl;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen()
      // home:ProfilePage().......COMPLETED
      // ChatPage()
    );
  }
}

class Homescreen extends StatefulWidget {
  //rebuild entire ui
  Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState(); //create state
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _controller = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  //used tomanage state
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      ///remove unwanted topbar
      child: Scaffold(
          appBar: AppBar(
            // title: const Text(
            //   'chat',
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            actions: [
              const SizedBox(
                width: 8,
              ),
              // IconButton(
              //     onPressed: () {
              //       print('hii');
              //     },
              //  icon: Icon(Icons.more_vert)),

              const SizedBox(
                //spacing
                width: 8,
              )
            ],
            bottom: TabBar(
              controller: _controller,
              tabs: const [Text('Edit'), Text('Chats'),
              
               Icon(Icons.note_alt)],
            ),
            
            backgroundColor: Color(0xFF075E54),
          ),
          body: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/no-problem-concept-bearded-man-makes-okay-gesture-has-everything-control-all-fine-gesture-wears-spectacles-jumper-poses-against-pink-wall-says-i-got-this-guarantees-something_273609-42817.jpg?w=2000'),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("HII"),
                subtitle: Text("how are you"),
                trailing: Text("4.00pm"),

              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/photo-serious-dark-skinned-man-with-confident-facial-expression-indicates-with-both-index-fingers-upside-wears-spectacles-green-jumper_273609-23808.jpg?w=2000'),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("when will you leave"),
                subtitle: Text("could you wait for me"),
                trailing: Text("6.00pm"),

              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://cbsnews1.cbsistatic.com/hub/i/r/2018/02/08/6cd76c5b-8182-4f8e-95bc-06bd58a11abc/thumbnail/1200x630/02e2fef222b9f3486055483a76426c0e/0208-eve-begnaud-fema-1498736-640x360.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("Did you go there?"),
                subtitle: Text("could you wait for me"),
                trailing: Text("7.00pm"),

              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKZUkCE00t1jxzrrYMAq9wzOoxobPavCV28w&usqp=CAU'),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("when will you leave"),
                subtitle: Text("iam here"),
                trailing: Text("6.30am"),

              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://www.helpguide.org/wp-content/uploads/turkish-business-man-in-front-of-the-mirror.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                title: Text("hii"),
                subtitle: Text("could you wait for me"),
                trailing: Text("2.00pm"),

              ),
            ],
          ),
          

          // bbbnn

          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _selectedIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(index,
                  duration: Duration(milliseconds: 300), curve: Curves.ease);
            }),
            items: [
              BottomNavyBarItem(
                icon: Column(
                  children: [
                    Icon(Icons.person),
                    Text("contacts")
                  ],
                ),
                title: Text(''),
                activeColor: Colors.grey,
              ),
              BottomNavyBarItem(
                  icon: Column(
                    children: [
                      Icon(Icons.call),
                      Text("calls",)
                      

                    ],
                  ),
                  title: Text('Calls'),
                  activeColor: Colors.grey),
              BottomNavyBarItem(
                  icon: Column(
                    children: [
                      Icon(Icons.chat_bubble,color: Colors.blue,),
                      Text("chat")
                    ],
                  ),
                  title: Text('Chat'),
                  activeColor: Colors.grey),
              BottomNavyBarItem(
                  icon: Column(
                    children: [
                      Icon(Icons.mic),
                      Text("chan")
                    ],
                  ),
                  title: Text('Chan'),
                  activeColor: Colors.grey),
              BottomNavyBarItem(
                  icon: Column(
                    children: [
                      Icon(Icons.settings),
                      Text("sett")
                    ],
                  ),
                  title: Text('Settings'),
                  activeColor: Colors.grey),
            ],
          )
          ),
    );
  }
}

