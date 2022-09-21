import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

TargetFocus tutorialWidget({
  required GlobalKey keyButton,
  required String title,
  required String description,
  ContentAlign align = ContentAlign.top,
}) {
  return TargetFocus(
    keyTarget: keyButton,
    shape: ShapeLightFocus.RRect,
    paddingFocus: 0,
    radius: 0,
    focusAnimationDuration: const Duration(milliseconds: 200),
    contents: [
      TargetContent(
          align: align,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  description,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ))
    ],
  );
}
