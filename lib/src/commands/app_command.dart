import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';

/// {@template app_command}
///
/// `prestine_cli app`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class AppCommand extends Command<int> {
  /// {@macro sample_command}
  AppCommand({
    required Logger logger,
  }) : _logger = logger {
    // Init
  }

  @override
  String get description => 'A command to create a new app';

  @override
  String get name => 'app';

  final Logger _logger;

  @override
  FutureOr<int>? run() {
    print('This is the app command');
    return ExitCode.success.code;
  }
}
