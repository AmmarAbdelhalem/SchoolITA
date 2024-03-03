import 'package:flutter/material.dart';
import 'package:flutterapp/haga.dart';

class UniqueScreen extends StatelessWidget {
  const UniqueScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.green,
                          ),
                          Positioned(
                            top: 60,
                            left: 20,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xffe3f6ff),
                                child: Icon(
                                  Icons.edit,
                                  size: 21,
                                  color: Color(0xff32bcff),
                                ),
                                radius: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Ammar Abdelhalem",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "ammarabdelhalem19@gmail.com",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Become a publisher",
                      style: TextStyle(
                          color: Color(0xff2ebbff),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Account settings",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              UniqueCard(name: "Personal information"),
              SizedBox(height: 10),
              UniqueCard(name: "Notifications"),
              SizedBox(height: 10),
              UniqueCard(name: "Time spent"),
              SizedBox(height: 10),
              UniqueCard(name: "Following"),
              SizedBox(height: 10),
              Text(
                "Help & Support",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              UniqueCard(name: "Privacy policy"),
              SizedBox(height: 10),
              UniqueCard(name: "Terms & Conditions"),
              SizedBox(height: 10),
              UniqueCard(name: "FAQ & Help"),
              SizedBox(height: 20),
              Text(
                "Log out",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (int index) {
          print("Tapped on tab $index");
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.album_rounded), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

class UniqueCard extends StatelessWidget {
  final String? name;
  const UniqueCard({Key? key, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name.toString(),
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
          )
        ],
      ),
    );
  }
}
