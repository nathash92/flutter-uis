import 'package:flutter/material.dart';

class TravelRecommendedCard extends StatelessWidget {
  const TravelRecommendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://i.ytimg.com/vi/P2eKSeWyfvE/maxresdefault.jpg',
              ),
            ),
          ),
        ),
        const _GradientFilterWidget(),
        const Positioned(
          top: 10.0,
          left: 10.0,
          child: _RatingWidget(),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _TitleWidget(),
              SizedBox(
                height: 5.0,
              ),
              _LocationWidget(),
            ],
          ),
        )
      ],
    );
  }
}

class _GradientFilterWidget extends StatelessWidget {
  const _GradientFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black12,
            Colors.black87,
          ],
        ),
      ),
    );
  }
}

class _RatingWidget extends StatelessWidget {
  const _RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2.0,
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 16.0,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '4.5',
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Maldive\nIsland',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _LocationWidget extends StatelessWidget {
  const _LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: Colors.grey.shade300,
          size: 12.0,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          'Indian Ocean',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey.shade300,
          ),
        )
      ],
    );
  }
}
