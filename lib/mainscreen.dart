import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:submission_android/detail_jasa.dart';

import 'detail_Aplikasi.dart';
import 'detail_Jaringan.dart';
import 'detail_telpon.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return Scaffold(
            appBar: AppBar(
              title: Text('ITINDOSOLUSI'),
            ),
            body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth <= 600) {
                  return Home();
                } else if (constraints.maxWidth <= 1200) {
                  return Home();
                } else {
                  return Home();
                }
              },
            )
          );
        }
    );
  }
}

class Home extends StatelessWidget{
  int currentPos = 0;
  List url = [
    'JASA CCTV',
    'JASA JARINGAN',
    'JASA TELPON',
    'PEMBUATAN APLIKASI',
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/banner_utama.jpg'),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 100,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: url.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Card(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    flex :1,
                                    child: Image.asset(
                                      'images/kawah-putih.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Expanded(
                                      flex: 2,
                                      child : Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                i,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                                              child: Text(
                                                "lokasi",
                                              ),
                                            ),
                                          ],
                                      )
                                  )

                                ],
                              ),
                            );

                      },
                    );
                  }).toList(),
                ),
            ),
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Expanded(
                              flex: 1,
                              child:InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return DetailJasa();
                                    }));
                                  },
                                  child:Card(
                                      child:Container(
                                          height: 200,
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Center(
                                                  child: Text("CCTV",style: TextStyle(fontSize: 30))
                                              ),
                                              Text("Menerima pemasangan CCTV untuk Rumah , Kantor dan Tempat tempat lain dengan Harga yang Murah,dan Kualitas Terjamin dan Perangkat yang berkualitas.")
                                            ],
                                          )
                                      )
                                  )
                              )
                          ),
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return DetailTelpon();
                                  }));
                                },
                                  child:Card(
                                      child:Container(
                                          height: 200,
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Center(
                                                  child: Text("Telpon",style: TextStyle(fontSize: 30))
                                              ),
                                              Text("Menerima pemasangan jaringan Telepon untuk Rumah,Kantor ,dan Tempat lainya . dengan Harga yang Murah,Kualitas Terjamin, dan Perangkat yang berkualitas .")
                                            ],
                                          )
                                      )
                                  )
                              )

                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Expanded(
                              flex: 1,
                              child: InkWell(
                              onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailJaringan();
                              }));
                              },
                              child:Card(
                              child:Container(
                              height: 200,
                              child:Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                              Center(
                              child: Text("Jaringan",style: TextStyle(fontSize: 30))
                              ),
                              Text("Memasang Jaringan LAN Internet untuk Kantor,Warnet ,Rumah dan Tempat lainya dan juga memasang WIFI/Acces Point dengan Harga yang Murah,Kualitas Terjamin dan Perangkat yang berkualitas.")
                              ],
                              )
                              )
                              )
                              )
                          ),
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return DetailAplikasi();
                                    }));
                                  },
                                  child:Card(
                                  child:Container(
                                  height: 200,
                                  child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                  Center(
                                  child: Text("Aplikasi",style: TextStyle(fontSize: 30))
                                  ),
                                  Text("Menerima Jasa Pembuatan Aplikasi multiplatform seperti Web, Android , IOS dan aplikasi Dekstop")
                                  ],
                                  )
                                  )
                                  )
                              )

                          ),
                        ],
                      )
                    ],
                  ),
              )
            ],
          )
        )
    );
  }

}