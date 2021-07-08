import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/UserAccount/user_account_screen.dart';

class HelloUserRow extends StatelessWidget {
  const HelloUserRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Hello, [username]!',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserAccountScreen()),
              );
            },
            child: Container(
              width: size.width * 0.2,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/user.png'),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
