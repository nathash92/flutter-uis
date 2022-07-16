import 'package:flutter/material.dart';
import 'package:uis/travel/widgets/travel_recommended_card.dart';

class TravelRecommendedSlide extends StatelessWidget {
  const TravelRecommendedSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Recommended',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'View All',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 260.0,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext contenxt, int index) {
              return const Padding(
                padding: EdgeInsets.only(
                  right: 10.0,
                ),
                child: SizedBox(
                  width: 180.0,
                  child: TravelRecommendedCard(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
