import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

  TextStyle textStyle(double size,Color color,FontWeight fw){

    return GoogleFonts.poppins(fontSize: size,color: color,fontWeight: fw);



  }
  TextStyle textStyleWithHt(double size,Color color,FontWeight fw,double ht){

    return GoogleFonts.poppins(fontSize: size,color: color,fontWeight: fw,height: ht);



  }


