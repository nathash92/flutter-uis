import 'package:flutter/material.dart';

class MenusModel {
  final String title;
  final IconData icon;
  final Color iconColor;

  MenusModel(this.title, this.icon, this.iconColor);
}

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          const _ProfileCardWidget(),
          const SizedBox(
            height: 30.0,
          ),
          _MainMenuWidget(),
          const SizedBox(
            height: 30.0,
          ),
          _SocialLinksWidget(),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class _MainMenuWidget extends StatelessWidget {
  _MainMenuWidget({
    Key? key,
  }) : super(key: key);

  final List<MenusModel> menus = [
    MenusModel('Home', Icons.star, Colors.yellow),
    MenusModel('Components', Icons.settings, Colors.blue),
    MenusModel('Pages', Icons.folder, Colors.brown),
    MenusModel('Media', Icons.camera_alt, Colors.green),
    MenusModel('Contact', Icons.contact_page, Colors.indigo.shade300),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        menus.length,
        (index) => Column(
          children: [
            _MenuItemWidget(
              iconBgColor: menus[index].iconColor,
              icon: menus[index].icon,
              title: menus[index].title,
            ),
            if (index < menus.length - 1) const _MenuDividerWidget()
          ],
        ),
      ).toList(),
    );
  }
}

class _ProfileCardWidget extends StatelessWidget {
  const _ProfileCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 55.0,
        width: 55.0,
        decoration: BoxDecoration(
          color: Colors.orange.shade900,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.network(
            'https://pngimg.com/uploads/avatar/avatar_PNG9.png',
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'User Name',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Reference site about Lorem Ipsum',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

// FOR DISPLAYING THE SOCIAL LINK MENUS
class _SocialLinksWidget extends StatelessWidget {
  _SocialLinksWidget({Key? key}) : super(key: key);

  final List<MenusModel> socialMenus = [
    MenusModel('Facebook', Icons.facebook_outlined, Colors.indigo.shade800),
    MenusModel('Instagram', Icons.camera, Colors.pink.shade600),
    MenusModel('Twitter', Icons.photo_sharp, Colors.blue.shade600),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            'Social Links',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Column(
          children: List.generate(
            socialMenus.length,
            (index) => Column(
              children: [
                _MenuItemWidget(
                  iconBgColor: socialMenus[index].iconColor,
                  icon: socialMenus[index].icon,
                  title: socialMenus[index].title,
                  endIcon: Icons.link,
                ),
                if (index < socialMenus.length - 1) const _MenuDividerWidget()
              ],
            ),
          ).toList(),
        ),
      ],
    );
  }
}

class _MenuDividerWidget extends StatelessWidget {
  const _MenuDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.5,
      indent: 15.0,
      endIndent: 15.0,
    );
  }
}

class _MenuItemWidget extends StatelessWidget {
  const _MenuItemWidget({
    required this.iconBgColor,
    required this.icon,
    required this.title,
    this.endIcon = Icons.chevron_right_outlined,
    Key? key,
  }) : super(key: key);

  final Color iconBgColor;
  final IconData icon;
  final String title;
  final IconData endIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Row(
        children: [
          _IconWidget(
            color: iconBgColor,
            icon: icon,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Icon(
            endIcon,
          )
        ],
      ),
    );
  }
}

class _IconWidget extends StatelessWidget {
  const _IconWidget({
    required this.color,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Colors.white,
          size: 18.0,
        ),
      ),
    );
  }
}
