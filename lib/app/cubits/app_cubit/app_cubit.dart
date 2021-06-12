import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:injectable/injectable.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit(@Named(HiveBoxConstants.appBox) this.appBox)
      : super(AppState.initial());
  final Box appBox;

  // Future<void> languageChanged(int id) async {
  //   emit(
  //     state.copyWith(selectedNode: await _nodeRepository.getSelectedNode()),
  //   );
  // }

  Future<void> themeChanged() async {
    emit(
      state.copyWith(darkTheme: !state.darkTheme),
    );
  }
}
