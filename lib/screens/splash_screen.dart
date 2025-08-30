import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  final int durationInSconds;
  final bool enableAnimation;
  const SplashScreen({
    super.key,
    this.durationInSconds = 5,
    this.enableAnimation = true,
  });
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    if (widget.enableAnimation) {
      _controller = AnimationController(
        duration: Duration(seconds: widget.durationInSconds),
        vsync: this,
      );
      _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
      _controller.forward();
    }
  }

  @override
  void dispose() {
    if (widget.enableAnimation) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: widget.durationInSconds), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => const Login()));
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange.shade600,
              Colors.orange.shade800,
              Colors.blue.shade800,
              Colors.blue.shade900,
            ],
          ),
        ),
        child: Center(
          child: widget.enableAnimation
              ? FadeTransition(
                  opacity: _animation,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 200,
                  ),
                )
              : Image.asset('assets/images/logo.png', width: 200, height: 200),
        ),
      ),
    );
  }
}
