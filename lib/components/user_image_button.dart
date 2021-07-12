import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/UserAccount/user_account_screen.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserAccountScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: size.width * 0.1,
          height: size.height * 0.05,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/user.png'),
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
