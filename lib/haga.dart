import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit profile",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 40,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Edit image",
                    style: TextStyle(
                        color: Color(0xff50c6ff), fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffebebeb).withOpacity(0.27),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'examble@gmail.com',
                            suffixIcon: Icon(
                              Icons.cancel_outlined,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(Icons.mail_outline_rounded)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffebebeb).withOpacity(0.27),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'John Deu',
                            suffixIcon: Icon(
                              Icons.cancel_outlined,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(Icons.person_outline_rounded)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Change password",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffebebeb).withOpacity(0.27),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter old password',
                            prefixIcon: Icon(
                              Icons.lock_rounded,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffebebeb).withOpacity(0.27),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter new password',
                            prefixIcon: Icon(
                              Icons.lock_rounded,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    width: 300,
                    height: 50,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
