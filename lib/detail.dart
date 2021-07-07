import 'package:flutter/material.dart';
import './dashboard.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Detail Jual Backlink',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: TampilanDetail(),
    );
  }
}

class TampilanDetail extends StatelessWidget {
  const TampilanDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {},
              child: SizedBox(
                height: 150,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Detail Produk',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF9695A8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {},
              child: SizedBox(
                height: 150,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Detail website pembeli backlink',
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF9695A8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {},
              child: SizedBox(
                height: 150,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Informasi Biaya',
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF9695A8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  child: Text('TOLAK ORDER'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF86E6E), onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ElevatedButton(
                  child: Text('TERIMA ORDER'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF8B2D), onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
