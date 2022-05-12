import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/photos/portrait-of-smiling-caucasian-man-pose-in-office-picture-id1303206644?s=612x612'),
                            backgroundColor: Colors.transparent,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Designer'),
                          ),
                          Text(
                            'UI/UX',
                            style: TextStyle(color: Colors.red),
                          ),
                          ListTile(
                            leading: Icon(Icons.email),
                            title: Text('Mail inbox'),
                            trailing: Icon(Icons.nine_mp_outlined),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.group,
                              color: Colors.red,
                            ),
                            title: Text(
                              'Friends',
                            ),
                            trailing: Icon(
                              Icons.nine_mp_outlined,
                              color: Colors.green,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.send),
                            title: Text('Invites'),
                            trailing: Icon(Icons.nine_mp_outlined),
                          ),
                          ListTile(
                            leading: Icon(Icons.bookmark),
                            title: Text('Bookmarks'),
                            // trailing: Icon(Icons.numbers),
                          ),
                          ListTile(
                            leading: Icon(Icons.settings),
                            title: Text('Account Settings'),
                            // trailing: Icon(Icons.numbers),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_circle_up_outlined,
                                size: 45,
                              ),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                  // Center(
                  // child:
                  //      Row(mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Row(
                  //           children: [
                  //             Center(
                  //               child: Row(
                  //                 children: [
                  //                   // const CircleAvatar(
                  //                   // radius: 40,
                  //                   // backgroundImage:
                  //                   //     NetworkImage('https://media.istockphoto.com/photos/portrait-of-smiling-caucasian-man-pose-in-office-picture-id1303206644?s=612x612'),
                  //                   // backgroundColor: Colors.transparent,child: Text('Designer',),

                  //                   // ),
                  //                   // ListTile(
                  //                   //   leading: Icon(Icons.email),
                  //                   //   title: Text('Mail inbox'),
                  //                   //   trailing: Icon(Icons.numbers),
                  //                   // )
                  //                 ],

                  //               ),
                  //             ),
                  //           ],

                  //         ),
                  //       ],
                  //     ),

                  //   // ),
                  // ],
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
