import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
          Scaffold(
            backgroundColor: Colors.black.withOpacity(0.5),
            appBar: widget.appBar,
            body: widget.body,
            floatingActionButtonLocation: widget.floatingActionButtonLocation,
            floatingActionButton: widget.floatingActionButton,
          ),
        ],
      ),
    );
  }
}
