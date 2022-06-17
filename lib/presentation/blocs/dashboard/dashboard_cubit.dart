import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  late PageController pageController;
  late ScrollController scrollController;
  DashboardCubit() : super(const DashboardState()) {
    pageController = PageController(initialPage: 0, keepPage: true);
    scrollController = ScrollController();
  }

  void dispose() {
    pageController.dispose();
    scrollController.dispose();
  }
}
