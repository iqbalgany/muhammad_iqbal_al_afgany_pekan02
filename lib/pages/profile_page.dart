import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:muhammad_iqbal_al_afgany_pekan02/bloc/theme_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (context, theme) {
            return ListView(
              children: [
                SizedBox(height: 30),
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),

                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey[300],
                        backgroundImage: NetworkImage(
                          'https://www.mancity.com/meta/media/e2lawnab/erling-haaland.png',
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        right: 6,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: SvgPicture.asset(
                              'assets/pencil.svg',
                              width: 20,
                              colorFilter: ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),

                /// Fields 1: Name
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.brightness == Brightness.light
                          ? Colors.black54
                          : Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/account.svg')
                        : SvgPicture.asset(
                            'assets/account.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    trailing: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/pencil.svg')
                        : SvgPicture.asset(
                            'assets/pencil.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    title: Text('Erling Haaland'),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 20),

                /// Fields 2: Email
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.brightness == Brightness.light
                          ? Colors.black54
                          : Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/email.svg')
                        : SvgPicture.asset(
                            'assets/email.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    trailing: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/pencil.svg')
                        : SvgPicture.asset(
                            'assets/pencil.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    title: Text('erling.haaland@example.com'),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 20),

                /// Fields 3: Phone
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.brightness == Brightness.light
                          ? Colors.black54
                          : Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/phone.svg')
                        : SvgPicture.asset(
                            'assets/phone.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    trailing: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/pencil.svg')
                        : SvgPicture.asset(
                            'assets/pencil.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),

                    title: Text('+1 (555) 123-4567'),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 20),

                /// Fields 4: Address
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.brightness == Brightness.light
                          ? Colors.black54
                          : Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/home.svg')
                        : SvgPicture.asset(
                            'assets/home.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    trailing: theme.brightness == Brightness.light
                        ? SvgPicture.asset('assets/pencil.svg')
                        : SvgPicture.asset(
                            'assets/pencil.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.blue,
                              BlendMode.srcIn,
                            ),
                          ),
                    title: Text('123 Soccer St, Football City, FC 12345'),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 20),

                FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    minimumSize: WidgetStatePropertyAll(
                      Size(double.infinity, 60),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text('Save'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
