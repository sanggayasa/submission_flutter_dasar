import 'package:flutter/material.dart';

class DetailJaringan extends StatefulWidget{


  @override
  _DetailJaringanState createState() => _DetailJaringanState();
}

class _DetailJaringanState extends State<DetailJaringan>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Jasa"),
      ),
      body:
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Jaringan",
                    style: TextStyle(
                      fontSize: 30,
                    )
                  )
                ),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Deskripsi jasa ") ,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '+62 Masukan Your Phone Number',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                  maxLines: 8,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Kirim pesan',
                ),
              ),
            ),
            Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Simpan'),
                )
            )
          ],
        ),
      )

    );
  }

}