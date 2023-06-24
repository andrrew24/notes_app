// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16,bottom: 20,left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: CustomTextW(
                text: "Flutter Tip",
                style: GoogleFonts.poppins(fontSize: 23),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:16),
                child: CustomTextW(
                  text: "Build you carrier creating awesome apps",
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
              ),
              trailing: IconButton(
                onPressed: (){}, icon: Icon(Icons.delete),color: Colors.black, iconSize: 30,),
            )
          ,
            Padding(
              padding: const EdgeInsets.only(right:16,top: 10),
              child: CustomTextW(text: "24, June, 2023",  style: GoogleFonts.poppins(fontSize: 15,color: Colors.white.withOpacity(.6)),),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}


