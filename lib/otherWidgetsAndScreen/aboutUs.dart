import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'backBtnAndImage.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          //Bu da kolon içerisine birden fazla Widget eklenebileceği anlamına gelmektedir.
          // Eklenen her Widget, üst üste ekleniyor gibi sonuç verir.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BackBtn(),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Column(
                //Bu da kolon içerisine birden fazla Widget eklenebileceği anlamına gelmektedir.
                // Eklenen her Widget, üst üste ekleniyor gibi sonuç verir.
                children: <Widget>[
                  Image.asset(
                    'assets/harranlogo.png',
                    height: height * 0.1,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    ('HARRAN ÜNİVERSİTESİ '
                        ' \n MÜHENDİSLİK FAKÜLTESİ '
                        ' \n BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜ'),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: height * 0.02, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Image.asset(
                    'assets/hospital.png',
                    height: height * 0.1,
                  ),
                  Column(
                    //Bu da kolon içerisine birden fazla Widget eklenebileceği anlamına gelmektedir.
                    // Eklenen her Widget, üst üste ekleniyor gibi sonuç verir.
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Medkit Pahrmacy App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Text(
                        'Developed By:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Ghadeer Srouji'),
                      SizedBox(
                        height: height * 0.09,
                      ),
                      SizedBox(
                        height: height * 0.15,
                      ),
                      Text('Harran University, ŞANLIURFA',
                          style: TextStyle(
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.bold)),
                      Text('@Copyrights All Rights Reserved, 2021',
                          style: TextStyle(fontSize: height * 0.02))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
