import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:muhammad_iqbal_al_afgany_pekan02/bloc/theme_cubit.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(height: 30),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/notification.svg'),
              title: Text('notifications'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/dark_mode.svg'),
              title: Text('Theme'),
              trailing: BlocBuilder<ThemeCubit, ThemeData>(
                builder: (context, state) {
                  return Switch(
                    value: state.brightness == Brightness.dark,
                    onChanged: (value) =>
                        context.read<ThemeCubit>().toggleTheme(),
                  );
                },
              ),
              onTap: null,
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/star.svg'),
              title: Text('Rate App'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/share.svg'),
              title: Text('Share App'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/privacy.svg'),
              title: Text('Privacy Policy'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/terms and policy.svg'),
              title: Text('Terms & Conditions'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/cookies.svg'),
              title: Text('Cookies Policy'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/message.svg'),
              title: Text('Contact'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/feedback.svg'),
              title: Text('Feedback'),
              onTap: () {},
            ),
            SizedBox(height: 28),

            ListTile(
              leading: SvgPicture.asset('assets/Logout.svg'),
              title: Text('Logout'),
              onTap: () {},
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
