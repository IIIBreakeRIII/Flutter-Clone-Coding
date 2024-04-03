import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarRental extends StatefulWidget {
  const CarRental({super.key});

  @override
  State<CarRental> createState() => _CarRentalState();
}

late double _width;
late double _height;
late double _statusBarHeight;

class _CarRentalState extends State<CarRental> {
  @override
  Widget build(BuildContext context) {
	
		_width = MediaQuery.of(context).size.width;
		_height = MediaQuery.of(context).size.height;
		_statusBarHeight = MediaQuery.of(context).padding.top;

		const DefaultTextStyle(
			style: TextStyle(
				fontFamily: 'Roboto',
				fontSize: 16,
				color: Colors.black,
			),
			child: Text('Hello, world!'),
		);

    return Container(
			decoration: const BoxDecoration(
				image: DecorationImage(
					image: AssetImage('assets/images/map.jpeg'),
					fit: BoxFit.fill,
				),
			),
			child: SizedBox(
				child: Column(
					children: [
						Container(height: _statusBarHeight),
						Container(
							width: _width - 40,
							height: 56,
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(10),
								color: Colors.white,
							),
							child: Row(
								children: [
									_routeInfo("time", "12h 11m"),
									const VerticalDivider(
										color: Color(0xFFf6f6fb),
										thickness: 1,
										width: 1,
										indent: 8,
										endIndent: 8,
									),
									_routeInfo("flag", "693.5mi"),
									const VerticalDivider(
										color: Color(0xFFf6f6fb),
										thickness: 1,
										width: 1,
										indent: 8,
										endIndent: 8,
									),
									_routeInfo("charging", "3h 25m")
								]
							),
						),
						const Spacer(),
						Container(
							width: _width,
							height: _height * 0.50,
							decoration: const BoxDecoration(
								borderRadius: BorderRadius.only(
									topLeft: Radius.circular(24),
									topRight: Radius.circular(24),
								),
								color: Colors.white,
							),
							child: Column(
								children: [
									const SizedBox(height: 10),
									Container(
										width: 64,
										height: 6,
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(100),
											color: const Color(0xFFf6f6fb),
										),
									),
									const SizedBox(height: 30),
									Container(
										width: _width - 40,
										height: 60,
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(12),
											color: const Color(0xFFf6f6fb),
										),
										child: const Row(
											children: [
												SizedBox(
													width: 60,
													height: 60,
													child: Icon(
														FontAwesomeIcons.solidCircle,
														size: 16,
														color: Color(0xFF3cd58b),
													),
												),
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													crossAxisAlignment: CrossAxisAlignment.start,
													children: [
														Text(
															"From",
															style: TextStyle(
																color: Colors.grey,
																fontSize: 12,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
														Text(
															"Santa Monica",
															style: TextStyle(
																color: Colors.black,
																fontSize: 16,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
													]
												),
											]
										),
									),
									const SizedBox(height: 12),
									Container(
										width: _width - 40,
										height: 60,
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(12),
											color: const Color(0xFFf6f6fb),
										),
										child: const Row(
											children: [
												SizedBox(
													width: 60,
													height: 60,
													child: Icon(
														FontAwesomeIcons.circle,
														size: 16,
														color: Colors.grey,
													),
												),
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													crossAxisAlignment: CrossAxisAlignment.start,
													children: [
														Text(
															"To",
															style: TextStyle(
																color: Colors.grey,
																fontSize: 12,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
														Text(
															"Santa Clarita",
															style: TextStyle(
																color: Colors.black,
																fontSize: 16,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
													]
												),
											]
										),
									),
									const SizedBox(height: 28),
									Container(
										margin: const EdgeInsets.only(left: 20, bottom: 20),
										height: 120,
										child: ListView(
											scrollDirection: Axis.horizontal,
											children: <Widget>[
												_carComponent("assets/images/challenger.png", "Dodge Challenger", "\$3.99 / mile", true),
												_carComponent("assets/images/mustang.png", "Ford Mustang Convert", "\$2.99 / mile", false),
												_carComponent("assets/images/mustang.png", "Ford Mustang Convert", "\$2.99 / mile", false),
												const SizedBox(width: 12)
											]
										),
									),
									Container(
										height: 100,
										decoration: const BoxDecoration(
											border: Border(
												top: BorderSide(
													color: Color(0xFFf6f6fb),
													width: 2,
												),
											)
										),
										child: Row(
											children: [
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													children: [
														Container(
															width: _width / 5,
															alignment: Alignment.center,
															child: const Icon(
																FontAwesomeIcons.house,
																size: 20,
																color: Color(0xFFbec8d2),
															),
														),
														const SizedBox(height: 12),
														const Text(
															"Home",
															style: TextStyle(
																color: Color(0xFFbec8d2),
																fontSize: 12,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
													]
												),
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													children: [
														Container(
															width: _width / 5,
															alignment: Alignment.center,
															child: const Icon(
																FontAwesomeIcons.solidFlag,
																size: 20,
																color: Color(0xFF3cd58b),
															),
														),
														const SizedBox(height: 12),
														const Text(
															"Travel",
															style: TextStyle(
																color: Color(0xFF3cd58b),
																fontSize: 12,
																fontWeight: FontWeight.w500,
																decoration: TextDecoration.none
															)
														),
													]
												),
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													children: [
														Container(
															width: _width / 5,
															alignment: Alignment.center,
															child: const Icon(
																FontAwesomeIcons.fileInvoiceDollar,
																size: 20,
																color: Color(0xFFbec8d2),
															),
														),
														const SizedBox(height: 12),
														const Text(
															"Estimate",
															style: TextStyle(
																color: Color(0xFFbec8d2),
																fontSize: 12,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
													]
												),
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													children: [
														Container(
															width: _width / 5,
															alignment: Alignment.center,
															child: const Icon(
																FontAwesomeIcons.squareParking,
																size: 20,
																color: Color(0xFFbec8d2),
															),
														),
														const SizedBox(height: 12),
														const Text(
															"Garage",
															style: TextStyle(
																color: Color(0xFFbec8d2),
																fontSize: 12,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
													]
												),
												Column(
													mainAxisAlignment: MainAxisAlignment.center,
													children: [
														Container(
															width: _width / 5,
															alignment: Alignment.center,
															child: const Icon(
																FontAwesomeIcons.gear,
																size: 20,
																color: Color(0xFFbec8d2),
															),
														),
														const SizedBox(height: 12),
														const Text(
															"Settings",
															style: TextStyle(
																color: Color(0xFFbec8d2),
																fontSize: 12,
																fontWeight: FontWeight.w400,
																decoration: TextDecoration.none
															)
														),
													]
												),

											]
										)
									)
								]
							),
						)
					]
				),
			),
		);  
	}
}

Widget _routeInfo(String icon, String text) {

	Map<String, IconData> iconMap = {
		"time": FontAwesomeIcons.stopwatch,
		"flag": FontAwesomeIcons.solidFlag,
		"charging": FontAwesomeIcons.chargingStation,
	};

	IconData iconData = iconMap[icon]!;

	return Container(
		width: (_width - 40) / 3 - 2,
		height: 56,
		alignment: Alignment.center,
		child: Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				Icon(
					iconData,
					size: 12,
					color: const Color(0xFFbec8d2),
				),
				const SizedBox(width: 10),
				Text(
					text,
					style: const TextStyle(
						color: Colors.black,
						fontSize: 12,
						fontWeight: FontWeight.w400,
						decoration: TextDecoration.none
					)
				),
			]
		),
	);
}

Widget _carComponent(String image, String name, String price, bool color) {
	return Container(
		width: 180,
		height: 120,
		margin: const EdgeInsets.only(right: 8),
		decoration: BoxDecoration (
			borderRadius: BorderRadius.circular(12),
			color: const Color(0xFFf6f6fb),
			border: color == true ? Border.all(
				width: 1.5,
				color: const Color(0xFF3cd58b),
			) : null,
		),
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				Container(
					width: 180,
					height: 60,
					decoration: BoxDecoration(
						image: DecorationImage(
							image: AssetImage(image),
							fit: BoxFit.fitHeight,
						),
					)
				),
				const SizedBox(height: 4),
				Text(
					name,
					style: const TextStyle(
						color: Colors.black,
						fontSize: 14,
						fontWeight: FontWeight.w500,
						decoration: TextDecoration.none
					)
				),
				const SizedBox(height: 4),
				Text(
					price,
					style: const TextStyle(
						color: Colors.grey,
						fontSize: 14,
						fontWeight: FontWeight.w500,
						decoration: TextDecoration.none
					)
				)
			]
		)
	);
}
