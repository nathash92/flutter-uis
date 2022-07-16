import 'package:flutter/material.dart';

class _CategoriesModel {
  String name;
  IconData icon;
  Color bgColor;
  Color iconColor;

  _CategoriesModel(
    this.name,
    this.icon,
    this.bgColor,
    this.iconColor,
  );
}

class TravelCategorySlide extends StatelessWidget {
  final categories = [
    _CategoriesModel(
      'Rentals',
      Icons.car_rental,
      Colors.blue.shade100,
      Colors.blue,
    ),
    _CategoriesModel(
      'Coffee & Bar',
      Icons.coffee,
      Colors.brown.shade100,
      Colors.brown,
    ),
    _CategoriesModel(
      'Restaurants',
      Icons.restaurant,
      Colors.green.shade100,
      Colors.green,
    ),
    _CategoriesModel(
      'Events',
      Icons.star,
      Colors.orange.shade100,
      Colors.orange,
    ),
    _CategoriesModel(
      'Real Estates',
      Icons.home,
      Colors.pink.shade100,
      Colors.pink,
    ),
  ];

  TravelCategorySlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: SizedBox(
              width: 90.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _BgIconWidget(
                    bgColor: categories[index].bgColor,
                    iconColor: categories[index].iconColor,
                    icon: categories[index].icon,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  _TitleWidget(
                    title: categories[index].name,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.center,
    );
  }
}

class _BgIconWidget extends StatelessWidget {
  const _BgIconWidget({
    required this.iconColor,
    required this.bgColor,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final Color iconColor;
  final Color bgColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 30.0,
      ),
    );
  }
}
