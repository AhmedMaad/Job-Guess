import 'package:flutter/cupertino.dart';

void main() {
  runApp(JobApp());
}

class JobApp extends StatelessWidget {
  const JobApp({super.key});

  //This widget is the root for the application
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        //Used for icons, text field cursor, etc.
        primaryColor: CupertinoColors.systemOrange,
        //Top App Bar
        barBackgroundColor: CupertinoColors.systemGreen,
        //Screen BG
        scaffoldBackgroundColor: CupertinoColors.systemGrey6,
      ),
      //remove the "debug" banner
      debugShowCheckedModeBanner: false,
      home: JobScreen(),
    ); //Cupertino App
  }
}

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<StatefulWidget> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  String _currentJob = 'Android or iOS Developer?';
  bool _isButtonPressed = false;

  void _revealJob() {
    setState(() {
      _currentJob = 'Mobile Developer';
      _isButtonPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold( //Inside the "build" function
      navigationBar: CupertinoNavigationBar(
        middle: Text('Job Guess'),
        automaticBackgroundVisibility: false,
      ), //Cupertino Navigation Bar
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Text(
                _currentJob,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            CupertinoButton(
              onPressed: _isButtonPressed ? null : _revealJob,
              child: Text('Show the answer'),
            ),
            Icon(CupertinoIcons.up_arrow),
          ],
        ), //Column
      ), //Center
    ); //Cupertino Page Scaffold
  }
}
