

import 'package:day13/profile.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() async {
  
  
  runApp(const Chat());
}

class Chat extends StatelessWidget {
  const Chat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homescreen(),

      
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
    _pageController=PageController();
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
            tabs: const [
              
              Text('Edit'),
              Text('Chats'),
              Icon(Icons.note_alt)
              
            ],
          ),
          backgroundColor: Color(0xFF075E54),
          
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
       icon: Icon(Icons.person),
       title: Text('Contacts'),
       activeColor: Colors.grey,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.call),
         title: Text('Calls'),
         activeColor: Colors.grey
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.chat),
         title: Text('Chat'),
         activeColor: Colors.grey
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.mic),
         title: Text('Channels'),
         activeColor: Colors.grey
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.settings),
         title: Text('Settings'),
         activeColor: Colors.grey
     ),
   ],
)
      ),
    );
  }
}
// class BottomNavigation extends StatefulWidget {  
//   BottomNavigation ({Key? key}) : super(key: key);  
  
//   @override  
//   _BottomNavigation createState() => _BottomNavigation();  
// }  
  
// class _BottomNavigation extends State<BottomNavigation > { 
//    late PageController _pageController;
//    @override
//    void initState() {
//      super.initState();
//      _pageController=PageController();
//    }

//   int _selectedIndex = 0;  
//   static const List<Widget> _widgetOptions = <Widget>[  
//     Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
//     Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
//     Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
//   ];  
  
//   void _onItemTapped(int index) {  
//     setState(() {  
//       _selectedIndex = index;  
//     });  
//   }  
  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(  
//         title: const Text('navig'),  
//           backgroundColor: Colors.green  
//       ),  
//       body: Center(  
//         child: _widgetOptions.elementAt(_selectedIndex),  
//       ),  
//       bottomNavigationBar: BottomNavyBar(
//    selectedIndex: _selectedIndex,
//    showElevation: true, // use this to remove appBar's elevation
//    onItemSelected: (index) => setState(() {
//               _selectedIndex = index;
//               _pageController.animateToPage(index,
//                   duration: Duration(milliseconds: 300), curve: Curves.ease);
//     }),
//    items: [
//      BottomNavyBarItem(
//        icon: Icon(Icons.person),
//        title: Text('Contacts'),
//        activeColor: Colors.red,
//      ),
//      BottomNavyBarItem(
//          icon: Icon(Icons.call),
//          title: Text('Calls'),
//          activeColor: Colors.purpleAccent
//      ),
//      BottomNavyBarItem(
//          icon: Icon(Icons.chat),
//          title: Text('Chat'),
//          activeColor: Colors.pink
//      ),
//      BottomNavyBarItem(
//          icon: Icon(Icons.mic),
//          title: Text('Channels'),
//          activeColor: Colors.green
//      ),
//      BottomNavyBarItem(
//          icon: Icon(Icons.settings),
//          title: Text('Settings'),
//          activeColor: Colors.blue
//      ),
//    ],
// )
//     );  
//   }  
// }  

