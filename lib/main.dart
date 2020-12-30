import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                "Bugün Ne Yesem ?",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              centerTitle: true,
            ),
            body: YemekSayfasi(),
          ),
        ),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  var yemekler = [
    'Karnı Yarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Alabalık'
  ];
  var tatlilar = [
    'Tel Kadayıf',
    'Fıstıklı Baklava',
    'Muhallebi',
    'Kazandibi',
    'Dondurma'
  ];
  var corbalar = [
    'Mercimek Çorbası',
    'Domates Çorbası',
    'Tavuk Çorbası',
    'İşkembe Çorbası',
    'Düğün Çorbası'
  ];

  selectFood() {
    if (this.corbaNo == 5) {
      this.corbaNo = 1;
    } else {
      this.corbaNo++;
    }

    if (this.yemekNo == 5) {
      this.yemekNo = 1;
    } else {
      this.yemekNo++;
    }

    if (this.tatliNo == 5) {
      this.tatliNo = 1;
    } else {
      this.tatliNo++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    selectFood();
                    print("Çorba no " + corbaNo.toString());
                  });
                },
                child: Image.asset('assets/images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbalar[this.corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          dividerWidget(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      selectFood();
                      print("Tatlı no " + tatliNo.toString());
                    });
                  },
                  child: Image.asset('assets/images/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatlilar[this.tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          dividerWidget(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      selectFood();
                      print("Yemek no " + yemekNo.toString());
                    });
                  },
                  child: Image.asset('assets/images/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekler[this.yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

class dividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      child: Divider(
        height: 5,
        color: Colors.black54,
      ),
    );
  }
}
