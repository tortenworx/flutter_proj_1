import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Calling Card',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.workSansTextTheme(
          Typography.material2021(platform: TargetPlatform.android).white
        ),
      ),
      home: const Contact(),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF222222)),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GlassContainer(
                height: 280,
                width: double.infinity,
                blur: 10,
                color: Color(0xFFFFFFFF),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromRGBO(255, 255, 255, 0.1),
                    const Color.fromRGBO(255, 152, 0, 0.1),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/image.png'),
                              width: 48,
                              height: 48,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'April Love Eniquez',
                                  style: GoogleFonts.outfit(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                Text(
                                  'Student - City College of Tagaytay',
                                  style: GoogleFonts.workSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Contact Numbers",
                                style: GoogleFonts.workSans(fontWeight: FontWeight.w600)
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Mobile (Globe)'),
                                Text('0917 091 9192')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Mobile (Smart)'),
                                Text('0929 481 9203')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Email Address'),
                                Text('april.love0124@gmail.com')
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Social Media",
                                style: GoogleFonts.workSans(fontWeight: FontWeight.w600)
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(spacing: 4, children: [
                                  Icon(
                                    LucideIcons.facebook,
                                    color: Colors.blue,
                                    size: 16,
                                  ),
                                  Text('Facebook')
                                ]),
                                Text('April Love Enriquez')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(spacing: 4, children: [
                                  Icon(
                                    LucideIcons.twitter,
                                    color: Colors.blue,
                                    size: 16,
                                  ),
                                  Text('Twitter')
                                ]),
                                Text('@april.lve')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(spacing: 4, children: [
                                  Icon(
                                    LucideIcons.youtube,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                  Text('Youtube')
                                ]),
                                Text('April Love Enriquez')
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
