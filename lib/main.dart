import 'package:flutter/material.dart';
import 'package:future02/Bussola.dart';
import 'package:future02/Comentarios.dart';
import 'package:future02/Desafioss.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    home: TelaPrinc(),

  ));
}
class TelaPrinc extends StatelessWidget {
  const TelaPrinc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c2c2d),
      appBar: AppBar(
        backgroundColor: Color(0xff00e1c2),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Compass()));
            }, child: Column(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/images/bussola.png'),
                ),
                Text('Bússola',
                  style: GoogleFonts.roboto(
                    color: Color(0xff171717),
                  ),),
              ],
            )),
            SizedBox(width: 20,),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>challenge()));
              }, child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/images/desafios.png'),
                    height: 23,
                    width: 23,
                  ),
                  Text('Desafios',
                    style: GoogleFonts.roboto(
                      color: Color(0xff171717),
                    ),),
                ],
              )),
            ),
            SizedBox(width: 10,),
            TextButton(onPressed: (){}, child: Column(
              children: [
                Container(
                  height: 23,
                  width: 23,
                  child: Image.asset('assets/images/comment.png'),
                ),
                Text('Comentários',
                  style: GoogleFonts.roboto(
                    color: Color(0xff171717),
                  ),),
              ],
            ))

          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 150),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff00e1c2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Paulo Brandão\n Nivel 75',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 25,
                  ),),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(60),
                      child: Text('28°C',
                      style: GoogleFonts.roboto(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 57),
                  child: Column(
                    children: [
                      Icon(Icons.cloud,
                      color: Color(0xff00e1c2,),
                      ),
                      Text('Nublado',
                      style: GoogleFonts.roboto(
                        color: Color(0xff00e1d2),
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                      ),),
                      SizedBox(height: 10,),

                      
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('23/02/2023',
                  style: GoogleFonts.roboto(
                    color: Color(0xff00e1d2),
                    fontWeight: FontWeight.w300,
                    fontSize: 27,
                  ),),
                SizedBox(width: 100,),
                Text('17:35',
                  style: GoogleFonts.roboto(
                    color: Color(0xff00e1d2),
                    fontWeight: FontWeight.w300,
                    fontSize: 27,
                  ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
