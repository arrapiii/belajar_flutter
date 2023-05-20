import 'dart:html';

import 'package:belajar_flutter/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Courier \nis almost there',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 39,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xffddfc1c),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Text(
                      'Track your package',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Enter the tracking number for delivery infromation'),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search, color: Colors.black),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Tracking Number'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Recent Search',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              CardNike(),
              CardAdidas(),
              ElevatedButton(
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text('Ngapain di pencet?'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('klik saya'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DetailPage()));
                },
                child: Text('Pindah ke detail page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardNike extends StatelessWidget {
  const CardNike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Arrottt'),
                    Text('#081284954387'),
                  ],
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 156, 158, 153)),
                child: Text('on the way'))
          ],
        ),
      ),
    );
  }
}

class CardAdidas extends StatelessWidget {
  const CardAdidas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Adidas_Logo.svg/640px-Adidas_Logo.svg.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Arra'),
                    Text('#999999999999'),
                  ],
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 228, 240, 8)),
                child: Text('in progress'))
          ],
        ),
      ),
    );
  }
}
