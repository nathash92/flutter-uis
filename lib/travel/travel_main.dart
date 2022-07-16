import 'package:flutter/material.dart';
import 'package:uis/travel/widgets/travel_category_slide.dart';
import 'package:uis/travel/widgets/travel_recommended_slide.dart';

class TravelMainScreen extends StatelessWidget {
  const TravelMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _MainIntroWidget(),
            const SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: TravelCategorySlide(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: TravelRecommendedSlide(),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

class _MainIntroWidget extends StatelessWidget {
  const _MainIntroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Image(
          image: NetworkImage(
            'https://www.babycenter.com/ims/2022/02/iStock-1310347034_wide.jpg',
          ),
        ),
        Positioned(
          bottom: -20.0,
          left: 0.0,
          right: 0.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Lorem ipsum, or lipsum as',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'is dummy text used in laying out print, graphic or web designs',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: _SearchBarWidget(),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _SearchBarWidget extends StatelessWidget {
  const _SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: 'Search for places....',
          contentPadding: EdgeInsets.all(5.0),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
