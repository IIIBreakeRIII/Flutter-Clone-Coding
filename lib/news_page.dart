import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

late double _width;

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
		
		_width = MediaQuery.of(context).size.width;

		return DefaultTabController(
			length: 4,
			child: Scaffold(
				backgroundColor: const Color(0xFFFFFFFF),
				appBar: PreferredSize(
					preferredSize: const Size.fromHeight(100),
					child: AppBar(
						backgroundColor: const Color(0xFFFFFFFF),
						leading: const BackButton(
							color: Colors.black,
						),
						bottom: TabBar(
							labelColor: Colors.white,
							dividerColor: Colors.transparent,
							indicatorPadding: const EdgeInsets.fromLTRB(-14, 6, -14, 6),
							indicator: BoxDecoration(
								borderRadius: BorderRadius.circular(100),
								color: const Color(0xFF000000),
							),
							tabs: const [
								Tab(
									child: Text(
										'Politics',
										style: TextStyle(
											fontSize: 12,
										),
									),
								),
								Tab(
									child: Text(
										'Sports',
										style: TextStyle(
											fontSize: 12,
										),
									),
								),
								Tab(
									child: Text(
										'Tech',
										style: TextStyle(
											fontSize: 12,
										),
									),
								),
								Tab(
									child: Text(
										'World News',
										style: TextStyle(
											fontSize: 12,
										),
									),
								),
							]
						)
					),
				),
				body: TabBarView(
					children: [
						Column(
							children: [
								const SizedBox(height: 20),
								SizedBox(
									width: _width - 40,
									child: const Row(
										children: [
											Text(
												"Breaking News",
												style: TextStyle(
													color: Colors.black,
													fontSize: 24,
													fontWeight: FontWeight.w600,
												)
											),
											Spacer(),
											Text(
												"See all",
												style: TextStyle(
													color: Colors.grey,
													fontSize: 12,
													fontWeight: FontWeight.w500,
												)
											),
										]
									),
								),
								const SizedBox(height: 20),
								Container(
									padding: const EdgeInsets.only(left: 20, right: 20),
									height: 280,
									child: ListView(
										scrollDirection: Axis.horizontal,
										children: [
											_mainNews('assets/images/KoreanWar.jpg', 'About Korean War', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
											const SizedBox(width: 20),
											_mainNews('assets/images/KoreanWar.jpg', 'About Korean War', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
											const SizedBox(width: 20),
											_mainNews('assets/images/KoreanWar.jpg', 'About Korean War', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
											const SizedBox(width: 20),
											_mainNews('assets/images/KoreanWar.jpg', 'About Korean War', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
											const SizedBox(width: 20),
											_mainNews('assets/images/KoreanWar.jpg', 'About Korean War', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
										]
									),
								),
								DotsIndicator(
									dotsCount: 5,
									position: 0,
									decorator: const DotsDecorator(
										size: const Size.square(5.0),
										activeSize: const Size.square(5.0),
										color: Colors.grey,
										activeColor: Colors.black,
									),
								),
								const SizedBox(height: 20),
								SizedBox(
									width: _width - 40,
									child: const Row(
										children: [
											Text(
												"For You",
												style: TextStyle(
													color: Colors.black,
													fontSize: 24,
													fontWeight: FontWeight.w600,
												)
											),
											Spacer(),
										]
									),
								),
								const SizedBox(height: 20),
								Container(
									width: _width - 40,
									child: Column(
										children: [
											_subNews('Bolsonaro says he will seek audit of voting system ahead of polls.', 'assets/images/KoreanWar.jpg', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
											const SizedBox(height: 20),
											const Divider(
												color: Colors.grey,
												thickness: 0.2,
											),
											const SizedBox(height: 20),
											_subNews('Bolsonaro says he will seek audit of voting system ahead of polls.', 'assets/images/KoreanWar.jpg', 'assets/images/me.jpg', 'Paul Ryu', '5 mins ago', context),
										]
									)
								),
							],
						),
						const Center(
							child: Text('Sports'),
						),
						const Center(
							child: Text('Tech'),
						),
						const Center(
							child: Text('World News'),
						),
					]
				),
			),
		);
	}
}

Widget _mainNews(String newsImage, String title, String profileImage, String profile, String postTime, BuildContext context) {

	_width = MediaQuery.of(context).size.width;
	
	return Column(
		crossAxisAlignment: CrossAxisAlignment.start,
		children: [
			Container(
				width: _width - 40,
				height: 200,
				decoration: BoxDecoration(
					image: DecorationImage(
						image: AssetImage(newsImage),
						fit: BoxFit.cover,
					),
				),
			),
			Text(
				title,
				style: const TextStyle(
					color: Colors.black,
					fontSize: 18,
					fontWeight: FontWeight.w600,
				),
			),
			const SizedBox(height: 8),
			Row(
				children: [
					Container(
						width: 20,
						height: 20,
						decoration: BoxDecoration(
							borderRadius: BorderRadius.circular(100),
							image: DecorationImage(
								image: AssetImage(profileImage),
								fit: BoxFit.cover,
							),
						),
					),
					const SizedBox(width: 8),
					Text(
						profile,
						style: const TextStyle(
							color: Colors.grey,
							fontSize: 12,
							fontWeight: FontWeight.w500,
						),
					),
					const SizedBox(width: 240),
					Text(
						postTime,
						style: const TextStyle(
							color: Colors.grey,
							fontSize: 12,
							fontWeight: FontWeight.w500,
						),
					),
				]
			),
		]
	);
}

Widget _subNews(String title, String newsImage, String profileImage, String profile, String postTime, BuildContext context) {
	
	_width = MediaQuery.of(context).size.width;

	return Row(
		children: [
			SizedBox(
				width: (_width - 60) * 0.7,
				height: (_width - 60) * 0.3,
				child: Column(
					children: [
						Text(
							title,
							style: const TextStyle(
								color: Colors.black,
								fontSize: 18,
								fontWeight: FontWeight.w600,
							),
						),
						const SizedBox(height: 12),
						Row(
							children: [
								Container(
									width: 20,
									height: 20,
									decoration: BoxDecoration(
										borderRadius: BorderRadius.circular(100),
										image: DecorationImage(
											image: AssetImage(profileImage),
											fit: BoxFit.cover,
										),
									),
								),
								const SizedBox(width: 8),
								Text(
									profile,
									style: const TextStyle(
										color: Colors.grey,
										fontSize: 12,
										fontWeight: FontWeight.w500,
									),
								),
								const Spacer(),
								Text(
									postTime,
									style: const TextStyle(
										color: Colors.grey,
										fontSize: 12,
										fontWeight: FontWeight.w500,
									),
								),
								const SizedBox(width: 20),
							]
						),
					]
				)
			),
			const SizedBox(width: 20),
			Container(
				width: (_width - 60) * 0.3,
				height: (_width - 60) * 0.3,
				decoration: BoxDecoration(
					image: DecorationImage(
						image: AssetImage(newsImage),
						fit: BoxFit.cover,
					),
					borderRadius: BorderRadius.circular(12),
				),
			),
		]
	);
}
