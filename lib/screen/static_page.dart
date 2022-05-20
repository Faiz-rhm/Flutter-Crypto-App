

import 'dart:convert';
import 'dart:math';

import 'package:auto_animated/auto_animated.dart';
import 'package:crypto_wallet_app/widget/asset_card.dart';
import 'package:crypto_wallet_app/widget/button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';

class StaticPage extends StatefulWidget {
  const StaticPage({ Key? key }) : super(key: key);

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {

   List _currency = [];

  Future<void> readJson() async {

    final String response = await rootBundle.loadString('assets/json/currency.json');
    final data = await json.decode(response);

    setState(() {
      _currency = data['currency'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  final List<FlSpot> dummyData3 = List.generate(30, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(IconlyBroken.arrow_left),
          onPressed:(){Navigator.pop(context);}
        ),
        backgroundColor: Colors.black,
        title: const Text('Statics'),
        actions: const [
          Icon(IconlyBroken.more_circle)
        ],
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(right:5, left:5, top: 16),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Image.asset('assets/images/eth.png'),
              ),
              const SizedBox(height: 15,),
              const Text('Ethereum(ETH)', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
              Text('\$2,920', style: TextStyle(color: Colors.grey[100], fontSize: 25, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(IconlyBold.arrow_up_2, size: 25, color: Colors.greenAccent,),
                  Text('3.79%(+1.43%)', style: TextStyle(color: Colors.greenAccent, fontSize: 11),)
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                child: LineChart(
                  LineChartData(
                    borderData: FlBorderData(show: false),
                    backgroundColor: Colors.grey[900],
                    gridData: FlGridData(show: false),
                    titlesData: titlesData1,
                    minX: 0,
                    maxX: 30,
                    maxY: 25,
                    minY: 0,
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
                          offset: Offset(0, 5)
                        ),
                        dotData: FlDotData(
                          show: false
                        ),
                        color: Colors.yellowAccent[700],
                      ),
                    ],
                  ),
                  swapAnimationDuration: const Duration(milliseconds: 500),
                  swapAnimationCurve: Curves.easeInOut,
                )
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button.primaryButton(
                    child: const Text('BUY', style: TextStyle(color: Colors.grey),),
                    onPressed: (){}
                  ),
                  Button.secondaryButton(
                    child: const Text('SELL', style: TextStyle(color: Colors.black),),
                    onPressed: (){}
                  ),
                ],
              ),
            LiveList(
              showItemInterval: const Duration(milliseconds: 500),
              showItemDuration: const Duration(seconds: 1),
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _currency.length,
              itemBuilder: _buildAnimatedItem,
            ),
        ]),
      ),
    ));
  }

  Widget _buildAnimatedItem(BuildContext context, int index, Animation<double> animation,) =>
    FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: AssetsCard(
            title: _currency[index]['name'] + ' ' + '('+_currency[index]["symbol"] + ')',
            price: _currency[index]['symbol'],
            logo:  _currency[index]['logo'],
            chart: 'chart',
            rise: '\$5,017',
            percent: '3.75%',
            ),
          ),
      ),
  );

  FlTitlesData get titlesData1 => FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: bottomTitles,
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false)
    )
  );

  SideTitles get bottomTitles => SideTitles(
    showTitles: true,
    reservedSize: 32,
    interval: 1,
    getTitlesWidget: bottomTitleWidgets,
  );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color.fromARGB(255, 114, 106, 69),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('1H', style: style);
        break;
      case 6:
        text = const Text('1D', style: style);
        break;
      case 12:
        text = const Text('1W', style: style);
        break;
      case 18:
      text = const Text('1M', style: style);
        break;
      case 24:
      text = const Text('1Y', style: style);
        break;
      case 29:
      text = const Text('ALL', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return Padding(child: text, padding: const EdgeInsets.only(top: 10.0));
  }
}