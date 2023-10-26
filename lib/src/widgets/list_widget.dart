import 'package:flutter/material.dart';

class ListCharacters extends StatefulWidget {
  const ListCharacters({super.key});
  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {
  double widthpantalla = 0;
  final titleStyleText = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    widthpantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("Portadas", style: titleStyleText),
          Row(
            children: [
              blocsPort("p1.jpg", "titulo: ", "2018"),
              SizedBox(
                width: widthpantalla * .03,
              ),
              blocsPort("p2.jpg", "titulo: ", "2022"),
              SizedBox(
                width: widthpantalla * .03,
              ),
              blocsPort("p3.jpg", "titulo: ", "2023")
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Column blocsPort(String image, String title, String subTitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthpantalla * .31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
         RichText(
            text: TextSpan(
                text: title,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                children: [
              TextSpan(
                  text: subTitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
