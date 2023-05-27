import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medo_app/resources/colors.dart';

class ScrollUpButton extends StatelessWidget {
  const ScrollUpButton({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: colors.Logobg,
      splashColor: Colors.white,
      onPressed: () {
        _scrollController.animateTo(
          0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
      child: Icon(Icons.arrow_upward_outlined),
    );
  }
}
