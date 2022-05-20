
import 'dart:math';

import 'package:crypto_wallet_app/screen/static_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AssetsCard extends StatelessWidget {
  final String title;
  final String price;
  final String logo;
  final String chart;
  final String rise;
  final String percent;


  const AssetsCard({
    Key? key,
    required this.title,
    required this.price,
    required this.logo,
    required this.chart,
    required this.rise,
    required this.percent
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final List<FlSpot> dummyData3 = List.generate(30, (index) {
      return FlSpot(index.toDouble(), index * Random().nextDouble());
    });
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StaticPage())
          );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 50 ,
                  child: Image.asset(logo)
                  ),
              ),
              const SizedBox(width:15,),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(color: Colors.grey[300], fontSize: 16, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    Text(price, style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              const SizedBox(width:10,),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 50,
                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      backgroundColor: Colors.transparent,
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        show: false,
                      ),//
                      lineBarsData: [
                        LineChartBarData(
                          preventCurveOvershootingThreshold: 0,
                          preventCurveOverShooting: true,
                          isStrokeCapRound: true,
                          aboveBarData: BarAreaData(show: true, color: Colors.transparent),
                          spots: dummyData3,
                          isCurved: true,
                          barWidth: 1,
                          shadow: const Shadow(
                            color: Colors.black,
                            blurRadius: 4,
                            offset: Offset(0, 1)
                          ),
                          dotData: FlDotData(
                            show: false,
                          ),
                          color:Colors.greenAccent,
                        ),
                      ],
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 500),
                    swapAnimationCurve: Curves.easeInOut,
                  )

                ),
              ),
              const SizedBox(width:10,),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding:const EdgeInsets.only(left: 7),child: Text(rise, style: TextStyle(color: Colors.grey[300], fontSize: 17),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(IconlyBold.arrow_up_2, size: 25, color: Colors.greenAccent,),
                        Text(percent, style: const TextStyle(color: Colors.greenAccent, fontSize: 15),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}