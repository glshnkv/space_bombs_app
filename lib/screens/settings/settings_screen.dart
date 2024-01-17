import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:space_bombs_app/router/router.dart';
import 'package:space_bombs_app/theme/colors.dart';
import 'package:space_bombs_app/widgets/action_button_widget.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Column(
                      children: [
                        ActionButtonWidget(
                          text: 'Share with friends',
                          color: AppColors.blue,
                          borderRadius: 300,
                          onTap: () {},
                        ),
                        SizedBox(height: 10),
                        ActionButtonWidget(
                          text: 'Privacy Policy',
                          color: AppColors.blue,
                          borderRadius: 300,
                          onTap: () {},
                        ),
                        SizedBox(height: 10),
                        ActionButtonWidget(
                          text: 'Terms of use',
                          color: AppColors.blue,
                          borderRadius: 300,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    context.router.popAndPush(HomeRoute());
                  },
                    child: SvgPicture.asset(
                        'assets/images/elements/back-arrow.svg'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
