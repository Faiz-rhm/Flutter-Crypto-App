import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:crypto_wallet_app/widget/asset_card.dart';
import 'package:crypto_wallet_app/widget/bottom_navigation_bar.dart';
import 'package:crypto_wallet_app/widget/portfolio_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
    super.initState();
    readJson();

    Future.delayed(const Duration(milliseconds: 500) * 5, () {
      if (!mounted) {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top:80, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInDownBig(child: const Center(child: Text('Current Wallet Ballance', style: TextStyle(color: Colors.grey, fontSize: 18),))),
            const SizedBox(height: 5,),
            FadeInDownBig(child: Center(child: Text('\$3,293.45', style: TextStyle(color:Colors.yellowAccent[700], fontSize: 45, fontWeight: FontWeight.bold, fontFamily: ''),))),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeft(child:_sendReceive(context, title: 'Send', icon: Icon(IconlyBroken.arrow_up, size: 30, color:Colors.grey[400]))),
                const SizedBox(width:20,),
                FadeInDown(child:_sendReceive(context, title: 'Receive', icon: Icon(IconlyBroken.arrow_down, size: 30, color:Colors.grey[400]))),
                const SizedBox(width:20,),
                FadeInUp(child:_sendReceive(context, title: 'Buy', icon: Icon(IconlyBroken.bag_2, size: 30, color:Colors.grey[400]))),
                const SizedBox(width:20,),
                FadeInRight(child:_sendReceive(context, title: 'Swap', icon: Icon(IconlyBroken.swap, size: 30, color:Colors.grey[400]))),
              ],
            ),
            const SizedBox(height: 25,),
            const Divider(height: 1, thickness: 0.5, color: Colors.grey,),
            const SizedBox(height: 16,),
            _viewAll(title: 'Portfolio'),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child:
                    LiveGrid(
                      padding: const EdgeInsets.only(top: 0, left: 0, bottom: 6),
                      showItemInterval: const Duration(milliseconds: 50),
                      showItemDuration: const Duration(milliseconds: 150),
                      visibleFraction: 0.001,
                      scrollDirection: Axis.horizontal,
                      itemCount: _currency.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                      ),
                      itemBuilder: _buildAnimatedItemGrid
                    ),
                  ),
                ),
              ],
            ),
            _viewAll(title: 'Your Assets'),
            LiveList(
              showItemInterval: const Duration(milliseconds: 300),
              showItemDuration: const Duration(seconds: 1),
              padding: const EdgeInsets.only(top: 0, bottom: 16),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _currency.length,
              itemBuilder: _buildAnimatedItem,
            ),
          ],),
        ),
      bottomNavigationBar: const BottomNavigation()
    );
  }

   Widget _buildAnimatedItemGrid(BuildContext context, int index, Animation<double> animation,) =>
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
          padding: const EdgeInsets.all(8),
          child: PortfolioCard(
            title: _currency[index]['name'],
            price: _currency[index]['price'],
            logo: _currency[index]['logo']
          ),
        ),
      ),
  );

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
            percent: '3.75%',),
          ),
      ),
  );

  _viewAll({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.grey[300], fontSize: 18, fontWeight: FontWeight.bold),),
        TextButton(
          onPressed: () {},
          child: const Text('See all', style: TextStyle(color: Colors.grey),)
        )
      ],
    );
  }

  _sendReceive(BuildContext context, {required Icon icon, required String title}) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.width * 0.17,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: icon,
        ),
        const SizedBox(height: 8,),
        Text(title, style: TextStyle(color: Colors.grey[300],  fontSize: 20),),
      ],
    );
  }
}
