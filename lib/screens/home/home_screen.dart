import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:space_bombs_app/router/router.dart';
import 'package:space_bombs_app/theme/colors.dart';
import 'package:space_bombs_app/widgets/action_button_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home/home-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/home/logo.svg'),
                  Column(
                    children: [
                      ActionButtonWidget(
                        text: 'Start game',
                        color: AppColors.blue,
                        borderRadius: 20,
                        onTap: () {},
                      ),
                      SizedBox(height: 10),
                      ActionButtonWidget(
                        text: 'Levels of difficulty',
                        color: AppColors.blue,
                        borderRadius: 20,
                        onTap: () {
                          context.router.push(LevelsRoute());
                        },
                      ),
                      SizedBox(height: 10),
                      ActionButtonWidget(
                        text: 'Exit',
                        color: AppColors.blue,
                        borderRadius: 20,
                        onTap: () {
                          SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('assets/images/elements/sound.svg'),
                      ),
                      SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          context.router.push(SettingsRoute());
                        },
                        child: SvgPicture.asset('assets/images/elements/settings.svg'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
