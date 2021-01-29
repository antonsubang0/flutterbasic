import 'package:flutter/material.dart';
import 'package:flutterbasic/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/primary.png',
                  width: 100,
                ),
                SizedBox(height: 16),
                Text(
                  'Gabriel R',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Supervisor',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: grayColor,
                  ),
                ),
                SizedBox(height: 30),
                Wrap(
                  spacing: 40,
                  runSpacing: 30,
                  children: [
                    Image.asset('assets/images/item1.png', width: 80),
                    Image.asset('assets/images/item2.png', width: 80),
                    Image.asset('assets/images/item3.png', width: 80),
                    Image.asset('assets/images/item4.png', width: 80),
                    Image.asset('assets/images/item5.png', width: 80),
                    Image.asset('assets/images/item6.png', width: 80),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 55,
                    width: 224,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 290,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(
                                vertical: 50,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Update Profile',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                      'You are only able to change \n the profile picture once',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: grayColor),
                                      textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width : 224,
                                    height : 55,
                                    child : RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16)),
                                      onPressed : () {},
                                      child : Text(
                                        'Continue',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.white
                                        ),
                                      ),
                                      color: orangeColor,
                                    )
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Update Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ));
  }
}
