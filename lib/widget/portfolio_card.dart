
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  String title;
  String price;
  String logo;

  PortfolioCard({
    Key? key,
    required this.title,
    required this.price,
    required this.logo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.width * 0.46,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage(logo),
            opacity: 1.1,
            scale: 5.5,
            alignment: Alignment.bottomRight,
            repeat: ImageRepeat.noRepeat,
          )
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Image.asset(logo)
            ),
            const SizedBox(height: 10,),
            Text(title, style: const TextStyle(color: Colors.grey, fontSize: 18),),
            const SizedBox(height: 10,),
            Expanded(child: Text(price, style: TextStyle(color: Colors.grey[300], fontSize: 20), maxLines: 1))
          ],
        ),
      ),
    );
  }
}