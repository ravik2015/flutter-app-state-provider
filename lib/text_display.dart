import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

class TextDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final appState = Provider.of<AppState>(context);

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Consumer<AppState>(
        //<--- Consumer
        builder: (context, appState, child) {
          return Text(appState.getDisplayText);
        },
      ),
      // Text(
      //   appState.getDisplayText,
      //   style: TextStyle(
      //     fontSize: 24.0,
      //   ),
      // ),
    );
  }
}
