import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget with PreferredSizeWidget {
  const AppBarApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/logo.png'),
          radius: 25,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Handicrafted by',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Jim HLS',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/flower.png'),
                radius: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  @override

  Size get preferredSize =>const Size.fromHeight(60);
}