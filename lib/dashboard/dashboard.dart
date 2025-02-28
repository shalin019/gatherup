import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}

class BottomNavBarScreen extends StatefulWidget {
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    CommunityScreen(),
    MessagesScreen(),
    YouScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Background color
        selectedItemColor: Colors.purple, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'You',
          ),
        ],
      ),
    );
  }
}

// Dummy Screens for Navigation
class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                "Create your community",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20),
              child: Text(
                "Your community is where you and your friends hangout.",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10, right: 20, bottom: 20),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(39, 40, 51, 1)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_sharp,
                        size: 36,
                        color: Colors.white,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Create My Own",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                "Join other community",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(left: 20,right: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.5, // Adjust height ratio
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(39, 40, 51, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sports_basketball,size: 60,),
                        Text("Gaming",style: TextStyle(color: Colors.white,fontSize: 18))
                      ],
                    ),
      
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children:[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                  child:Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                          Row(
                            children: [
                              Icon(
                                Icons.abc
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("You",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28
                                ),),
                              )
                            ],
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                              children: [
                                Icon(
                                  Icons.abc
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text("Adventure Diaries",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 0),
                                      child: Text("Manage community",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24
                                      ),),
                                    ),
                                  ],
                                )
                              ],
                            ),
                        ),
                      ],
                    ),
                  )
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(39, 40, 51, 1)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                    ,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            size:40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("data",style: TextStyle(color: Colors.white,fontSize: 18),),
                          )
                        ],
                      ),Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            size:40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("data",style: TextStyle(color: Colors.white,fontSize: 18),),
                          )
                        ],
                      ),Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            size:40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("data",style: TextStyle(color: Colors.white,fontSize: 18),),
                          )
                        ],
                      ),Column(
                        children: [
                          Icon(
                            Icons.ac_unit,
                            size:40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("data",style: TextStyle(color: Colors.white,fontSize: 18),),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(alignment: Alignment.centerLeft,child: Text("COMMUNITY",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                   color: Color.fromRGBO(39, 40, 51, 1),
                  borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                    Icons.error,
                                  size: 28,
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Overview",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                  ),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                              child: Divider(
                                height: 2,
                              ),
                            )
                          ],
                        ),Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                    Icons.edit,
                                  size: 28,
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Edit Community Profile",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                  ),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                              child: Divider(
                                height: 2,
                              ),
                            )
                          ],
                        ),Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                    Icons.wifi_channel,
                                  size: 28,
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Channels",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                  ),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                              child: Divider(
                                height: 2,
                              ),
                            )
                          ],
                        ),Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                    Icons.integration_instructions,
                                  size: 28,
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Inegrations",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                  ),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                              child: Divider(
                                height: 2,
                              ),
                            )
                          ],
                        ),Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                    Icons.emoji_emotions,
                                  size: 28,
                                  color: Colors.purple,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Emoji",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                  ),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                              child: Divider(
                                height: 2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]
          ),
        )
      ),
    );
  }
}

class YouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height*0.35,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // name email gender dob and city and state
                    Align(
                      alignment: Alignment.centerLeft
                      ,
                      child: Icon(Icons.arrow_back_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),

                      Container(
                      child: Icon(Icons.face,size: 120,),
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100)),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("aditya@gmail.com",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500
                      ),),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Align(alignment:Alignment.centerLeft,child: Text("Account Info",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,size: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                              Text("Aditya",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,size: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("Email",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                              Text("aditya@gmail.com",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,size: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("Gender",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                              Text("Male",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,size: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("Dob",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                              Text("26-jan",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,size: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("City",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                              Text("Ahmedabad",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,size: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("State",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                              Text("Gujarat",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}


