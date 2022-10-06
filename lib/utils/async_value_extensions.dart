import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  Widget buildWhen({
    required Widget Function(T data) data,
    Widget Function(Object error, StackTrace stackTrace)? error,
    Widget Function()? loading,
  }) {
    return when(
      data: data,
      error: error ?? (err, _) => Center(child: Text(err.toString())),
      loading: loading ??
          () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget showWhen({
    required Widget Function(T data) data,
    Widget Function(Object error, StackTrace stackTrace)? error,
    Widget Function()? loading,
  }) {
    return when(
      data: data,
      error: error ?? (err, _) => const SizedBox(),
      loading: loading ?? () => const SizedBox(),
    );
  }
}
