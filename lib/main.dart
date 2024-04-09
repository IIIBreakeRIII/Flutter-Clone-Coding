import 'package:flutter/material.dart';

import 'package:portfolio_app/portfolio_page.dart';
import 'package:portfolio_app/car_rental.dart';
import 'package:portfolio_app/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
		return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
			debugShowCheckedModeBanner: false,
			routes: {
				'/PortfolioPage': (context) => const PortfolioPage(),
				'/CarRental': (context) => const CarRental(),
				'/NewsPage': (context) => const NewsPage(),
			}
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

late double _width;

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
		
		_width = MediaQuery.of(context).size.width;

		return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
						_pageMoveButton('/PortfolioPage', context),
						const SizedBox(height: 10),
						_pageMoveButton('/CarRental', context),
						const SizedBox(height: 10),
						_pageMoveButton('/NewsPage', context)
          ],
        ),
      ),
    );
  }
}

Widget _pageMoveButton(String page, BuildContext context) {
	return SizedBox(
		width: _width - 40,
		height: 40,
		child: OutlinedButton(
			onPressed: () {
				Navigator.of(context).pushNamed(page);
			},
			style: OutlinedButton.styleFrom(
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(12.0),
				)
			),
			child: Text(page),
		),
	);
}
