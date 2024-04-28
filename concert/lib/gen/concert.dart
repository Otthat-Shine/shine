// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

class GenConcert {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  GenConcert(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  GenConcert.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  late final ffi.Pointer<ffi.Int> _concert = _lookup<ffi.Int>('concert');

  int get concert => _concert.value;

  set concert(int value) => _concert.value = value;

  int AesEncrypt(
    ffi.Pointer<ffi.Char> input_file_path,
    ffi.Pointer<ffi.Char> output_file_path,
    ffi.Pointer<ffi.Char> password,
  ) {
    return _AesEncrypt(
      input_file_path,
      output_file_path,
      password,
    );
  }

  late final _AesEncryptPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>)>>('AesEncrypt');
  late final _AesEncrypt = _AesEncryptPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>)>();

  int AesDecrypt(
    ffi.Pointer<ffi.Char> input_file_path,
    ffi.Pointer<ffi.Char> output_file_path,
    ffi.Pointer<ffi.Char> password,
  ) {
    return _AesDecrypt(
      input_file_path,
      output_file_path,
      password,
    );
  }

  late final _AesDecryptPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>)>>('AesDecrypt');
  late final _AesDecrypt = _AesDecryptPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>)>();
}

const int CONCERT_AES_INPUT_FILE_NOT_EXISTS = -1;

const int CONCERT_AES_CAN_NOT_OPEN_OUTPUT_FILE = -2;

const int CONCERT_AES_CAN_NOT_OPEN_INPUT_FILE = -3;

const int CONCERT_AES_INPUT_FILE_LESS_THAN_32BYTES = -4;

const int CONCERT_AES_EMPTY_PASSWORD = -5;
