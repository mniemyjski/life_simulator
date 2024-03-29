import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../app/monetization/my_banner.dart';

class CustomScaffold extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;

  const CustomScaffold({
    Key? key,
    this.appBar,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.body,
  }) : super(key: key);

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  late Image background;
  late Widget bg;
  bool test = true;

  @override
  void initState() {
    super.initState();
    background = Image.asset(
      'assets/images/background.png',
      height: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height,
      width: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width,
      fit: BoxFit.cover,
      gaplessPlayback: true,
    );
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await precacheImage(background.image, context);
    setState(() {
      test = false;
    });
  }

  final bool showAdd = false;

  @override
  Widget build(BuildContext context) {
    if (test) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: const Center(
            child: SpinKitFadingCircle(
          color: Colors.white,
          size: 80.0,
        )),
      );
    }

    return SafeArea(
      child: Stack(
        children: [
          background,
          // SvgPicture.asset(
          //   'assets/images/background (1).svg',
          //   height: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height,
          //   width: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width,
          //   fit: BoxFit.cover,
          //   // color: Colors.blue,
          // ),

          Scaffold(
            backgroundColor: Colors.black.withOpacity(0.5),
            appBar: widget.appBar,
            body: Column(
              children: [
                if (showAdd)
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: const MyBanner(),
                  ),
                Expanded(child: widget.body ?? Container()),
              ],
            ),
            floatingActionButtonLocation: widget.floatingActionButtonLocation,
            floatingActionButton: widget.floatingActionButton,
          ),
        ],
      ),
    );
  }
}
