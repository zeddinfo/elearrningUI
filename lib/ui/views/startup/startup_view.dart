import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:superappsnusa/ui/views/startup/startup_viewmodel.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) =>
      SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
        // viewModel.runStartupLogic();
      });

  @override
  Widget builder(
      BuildContext context, StartupViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Text("hello"),
      ),
    );
  }
}
