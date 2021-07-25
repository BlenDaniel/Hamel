import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:hamel/ui/views/Settings/Settings_viewmodel.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('Settings View'),
        ),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }
}
