import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

late double _width;

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {

		_width = MediaQuery.of(context).size.width;

    return Scaffold(
			backgroundColor: const Color(0xFF172330),
			appBar: PreferredSize(
				preferredSize: const Size.fromHeight(120),
				child: AppBar(
					flexibleSpace: Image.asset('assets/images/computer.png', fit: BoxFit.cover),
					backgroundColor: Colors.transparent,
					leading: const BackButton(
						color: Colors.white,
					),
					elevation: 2,
					shadowColor: Colors.grey,
				),
			),
			body: SafeArea(
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget> [
						Container(
							margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
							width: _width - 40,
							height: 100,
							child: Row(
								children: [
									Container(
										width: 100,
										height: 100,
										decoration: BoxDecoration(
											image: const DecorationImage(
												image: AssetImage('assets/images/me.jpg'),
												fit: BoxFit.cover,
											),
											boxShadow: const [
												BoxShadow(
													color: Colors.grey,
													blurRadius: 8.0,
													offset: Offset(0, 0),
												)
											],
											borderRadius: BorderRadius.circular(100.0)
										)
									),
									Container(
										margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
										child: const Column(
											mainAxisAlignment: MainAxisAlignment.center,
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Text(
													"Hyeonso Ryu",
													style: TextStyle(
														color: Colors.white,
														fontSize: 24,
														fontWeight: FontWeight.bold,
													)
												),
												Text(
													"Suwon, Republic of Korea",
													style: TextStyle(
														color: Colors.grey,
														fontSize: 12,
													),
												),
												Text(
													"Developer & Photographter",
													style: TextStyle(
														color: Colors.grey,
														fontSize: 12,
													),
												),
											]
										),
									)
								]
							),
						),
						Container(
							margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
							alignment: Alignment.center,
							width: _width - 40,
							height: 80,
							decoration: BoxDecoration(
								color: const Color(0xFF192029),
								borderRadius: BorderRadius.circular(12.0),
								boxShadow: const [
									BoxShadow(
										color: Colors.grey,
										blurRadius: 8.0,
										offset: Offset(0, 0),
									)
								]
							),
							child: const Text(
								"Instagram : _dev.paul_",
								textAlign: TextAlign.center,
								style: TextStyle(
									color: Colors.grey,
									fontSize: 20,
									fontWeight: FontWeight.w500,
									fontStyle: FontStyle.italic,
								)
							)
						),
						Container(
							margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
							width: _width - 40,
							child: const Text(
								"SNS Link",
								style: TextStyle(
									color: Colors.white,
									fontSize: 24,
									fontWeight: FontWeight.w500,
								)
							),
						),
						Container(
							margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
							width: _width - 40,
							height: 100,
							child: Row(
								children: [
									_snsLink("Github"),
									const Spacer(),
									_snsLink("Instagram"),
									const Spacer(),
									_snsLink("Linkedin"),
									const Spacer(),
									_snsLink("Gmail"),
									const Spacer(),
									_snsLink("iCloud"),
								]
							)
						),
						Container(
							margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
							width: _width - 40,
							child: const Text(
								"Tech Stack",
								style: TextStyle(
									color: Colors.white,
									fontSize: 24,
									fontWeight: FontWeight.w500,
								)
							),
						),
						Container(
							margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
							width: _width - 40,
							child: Column(
								children: [
									Row(
										children: [
											_snsLink("Python"),
											const Spacer(),
											_snsLink("React"),
											const Spacer(),
											_snsLink("Swift"),
											const Spacer(),
											_snsLink("Java"),
											const Spacer(),
											_snsLink("Markdown"),	
										],
									),
									const SizedBox(height: 20),
									Row(
										children: [
											_snsLink("iOS"),
											const Spacer(),
											_snsLink("Android"),
											const Spacer(),
											_snsLink("Git"),
											const Spacer(),
											_snsLink("Figma"),
										],
									),
								]
							)
						),
					],
				),
			),
		);
  }
}

Widget _snsLink(String title) {
	Map<String, IconData> iconMap = {
		"Github": FontAwesomeIcons.github,
		"Instagram": FontAwesomeIcons.instagram,
		"Linkedin": FontAwesomeIcons.linkedin,
		"Gmail": FontAwesomeIcons.google,
		"iCloud" : FontAwesomeIcons.apple,
		"Python" : FontAwesomeIcons.python,
		"React" : FontAwesomeIcons.react,
		"Swift" : FontAwesomeIcons.swift,
		"Markdown" : FontAwesomeIcons.markdown,
		"Figma" : FontAwesomeIcons.figma,
		"Android" : FontAwesomeIcons.android,
		"iOS" : FontAwesomeIcons.apple,
		"Git" : FontAwesomeIcons.git,
		"Java" : FontAwesomeIcons.java,
	};

	IconData iconData = iconMap[title]!;

	return Column(
		children: [
			Icon(
				iconData,
				size: 48,
				color: Colors.white,
				shadows: const [
					Shadow(
						color: Colors.grey,
						blurRadius: 8.0,
						offset: Offset(0, 0),
					)
				]
			),
			const SizedBox(height: 12),
			Text(
				title,
				style: const TextStyle(
					color: Colors.grey,
					fontSize: 12,
				),
			)
		]
	);
}
