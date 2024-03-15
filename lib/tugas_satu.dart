import 'package:cobadulu/page_mi.dart';
import 'package:cobadulu/page_tekom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageLatihan extends StatelessWidget {
  const PageLatihan ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('gambar/pnp.png',
                  fit: BoxFit.contain,
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 50,),
                Text(
                  'Selamat Datang di Politeknik Negeri Padang',
                  style: TextStyle(color: Colors.deepOrange,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Limau Manih, Padang, Sumbar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 35,),
                MaterialButton (onPressed: (){
                  //tambahkan code toast
                  showToast(
                    'Prodi Manajemen Informatika',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom,
                    toastHorizontalMargin: 28,
                    fullWidth: true,
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageMi())

                  );

                },
                  child: Text('Manajemen Informatika',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                ),

                SizedBox(height: 10,),
                MaterialButton (onPressed: (){
                  //tambahkan code toast
                  showToast(
                      'Prodi Teknik Komputer',
                      context: context,
                      animation: StyledToastAnimation.slideFromTopFade,
                      reverseAnimation: StyledToastAnimation.slideToTopFade,
                      position: StyledToastPosition(
                          align: Alignment.topCenter, offset: 0.0),
                      startOffset: Offset(0.0, -3.0),
                      reverseEndOffset: Offset(0.0, -3.0),
                      duration: Duration(seconds: 4),
                      //Animation duration   animDuration * 2 <= duration
                      animDuration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      reverseCurve: Curves.fastOutSlowIn);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageTekom())

                  );
                },
                  child: Text('Teknik Komputer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),
                  ),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                )
              ],
            ),
          )
      ),
    );
  }
}