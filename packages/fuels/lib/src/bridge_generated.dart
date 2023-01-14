// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.57.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:collection/collection.dart';

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

import 'package:meta/meta.dart';

part 'bridge_generated.freezed.dart';

abstract class Fuels {
  Future<WalletUnlocked> newRandomStaticMethodWalletUnlocked(
      {required String apiUrl, dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kNewRandomStaticMethodWalletUnlockedConstMeta;

  Future<WalletUnlocked> fromMnemonicPhraseStaticMethodWalletUnlocked(
      {required String phrase, required String apiUrl, dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kFromMnemonicPhraseStaticMethodWalletUnlockedConstMeta;

  Future<String> addressMethodWalletUnlocked(
      {required WalletUnlocked that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddressMethodWalletUnlockedConstMeta;

  Future<int> getAssetBalanceMethodWalletUnlocked(
      {required WalletUnlocked that, required String asset, dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kGetAssetBalanceMethodWalletUnlockedConstMeta;

  Future<Balances> getBalancesMethodWalletUnlocked(
      {required WalletUnlocked that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetBalancesMethodWalletUnlockedConstMeta;

  Future<List<TransactionResponse>> getTransactionsMethodWalletUnlocked(
      {required WalletUnlocked that,
      required int pageSize,
      String? cursor,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kGetTransactionsMethodWalletUnlockedConstMeta;

  DropFnType get dropOpaqueNativeWalletUnlocked;
  ShareFnType get shareOpaqueNativeWalletUnlocked;
  OpaqueTypeFinalizer get NativeWalletUnlockedFinalizer;
}

@sealed
class NativeWalletUnlocked extends FrbOpaque {
  final Fuels bridge;
  NativeWalletUnlocked.fromRaw(int ptr, int size, this.bridge)
      : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueNativeWalletUnlocked;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueNativeWalletUnlocked;

  @override
  OpaqueTypeFinalizer get staticFinalizer =>
      bridge.NativeWalletUnlockedFinalizer;
}

class Balances {
  final List<String> assets;
  final Uint64List balances;

  Balances({
    required this.assets,
    required this.balances,
  });
}

class Create {
  final int gasPrice;
  final int gasLimit;
  final int maturity;
  final int bytecodeLength;
  final int bytecodeWitnessIndex;
  final List<StorageSlot> storageSlots;
  final List<Input> inputs;
  final List<Output> outputs;
  final List<Witness> witnesses;
  final U8Array32 salt;

  Create({
    required this.gasPrice,
    required this.gasLimit,
    required this.maturity,
    required this.bytecodeLength,
    required this.bytecodeWitnessIndex,
    required this.storageSlots,
    required this.inputs,
    required this.outputs,
    required this.witnesses,
    required this.salt,
  });
}

@freezed
class Input with _$Input {
  const factory Input.coinSigned({
    required UtxoId utxoId,
    required U8Array32 owner,
    required int amount,
    required U8Array32 assetId,
    required TxPointer txPointer,
    required int witnessIndex,
    required int maturity,
  }) = Input_CoinSigned;
  const factory Input.coinPredicate({
    required UtxoId utxoId,
    required U8Array32 owner,
    required int amount,
    required U8Array32 assetId,
    required TxPointer txPointer,
    required int maturity,
    required Uint8List predicate,
    required Uint8List predicateData,
  }) = Input_CoinPredicate;
  const factory Input.contract({
    required UtxoId utxoId,
    required U8Array32 balanceRoot,
    required U8Array32 stateRoot,
    required TxPointer txPointer,
    required U8Array32 contractId,
  }) = Input_Contract;
  const factory Input.messageSigned({
    required U8Array32 messageId,
    required U8Array32 sender,
    required U8Array32 recipient,
    required int amount,
    required int nonce,
    required int witnessIndex,
    required Uint8List data,
  }) = Input_MessageSigned;
  const factory Input.messagePredicate({
    required U8Array32 messageId,
    required U8Array32 sender,
    required U8Array32 recipient,
    required int amount,
    required int nonce,
    required Uint8List data,
    required Uint8List predicate,
    required Uint8List predicateData,
  }) = Input_MessagePredicate;
}

class Mint {
  final TxPointer txPointer;
  final List<Output> outputs;

  Mint({
    required this.txPointer,
    required this.outputs,
  });
}

@freezed
class Output with _$Output {
  const factory Output.coin({
    required U8Array32 to,
    required int amount,
    required U8Array32 assetId,
  }) = Output_Coin;
  const factory Output.contract({
    required int inputIndex,
    required U8Array32 balanceRoot,
    required U8Array32 stateRoot,
  }) = Output_Contract;
  const factory Output.message({
    required U8Array32 recipient,
    required int amount,
  }) = Output_Message;
  const factory Output.change({
    required U8Array32 to,
    required int amount,
    required U8Array32 assetId,
  }) = Output_Change;
  const factory Output.variable({
    required U8Array32 to,
    required int amount,
    required U8Array32 assetId,
  }) = Output_Variable;
  const factory Output.contractCreated({
    required U8Array32 contractId,
    required U8Array32 stateRoot,
  }) = Output_ContractCreated;
}

class Script {
  final int gasPrice;
  final int gasLimit;
  final int maturity;
  final Uint8List script;
  final Uint8List scriptData;
  final List<Input> inputs;
  final List<Output> outputs;
  final List<Witness> witnesses;
  final U8Array32 receiptsRoot;

  Script({
    required this.gasPrice,
    required this.gasLimit,
    required this.maturity,
    required this.script,
    required this.scriptData,
    required this.inputs,
    required this.outputs,
    required this.witnesses,
    required this.receiptsRoot,
  });
}

class StorageSlot {
  final U8Array32 key;
  final U8Array32 value;

  StorageSlot({
    required this.key,
    required this.value,
  });
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction.script(
    Script field0,
  ) = Transaction_Script;
  const factory Transaction.create(
    Create field0,
  ) = Transaction_Create;
  const factory Transaction.mint(
    Mint field0,
  ) = Transaction_Mint;
}

class TransactionResponse {
  final Transaction transaction;
  final TransactionStatus status;
  final String? blockId;
  final String? time;

  TransactionResponse({
    required this.transaction,
    required this.status,
    this.blockId,
    this.time,
  });
}

enum TransactionStatus {
  Submitted,
  Success,
  Failure,
  SqueezedOut,
}

class TxPointer {
  final int blockHeight;
  final int txIndex;

  TxPointer({
    required this.blockHeight,
    required this.txIndex,
  });
}

class U8Array32 extends NonGrowableListView<int> {
  static const arraySize = 32;
  U8Array32(Uint8List inner)
      : assert(inner.length == arraySize),
        super(inner);
  U8Array32.unchecked(Uint8List inner) : super(inner);
  U8Array32.init() : super(Uint8List(arraySize));
}

class UtxoId {
  final U8Array32 txId;
  final int outputIndex;

  UtxoId({
    required this.txId,
    required this.outputIndex,
  });
}

class WalletUnlocked {
  final Fuels bridge;
  final NativeWalletUnlocked walletUnlocked;
  final String privateKey;
  final String mnemonicPhrase;

  WalletUnlocked({
    required this.bridge,
    required this.walletUnlocked,
    required this.privateKey,
    required this.mnemonicPhrase,
  });

  static Future<WalletUnlocked> newRandom(
          {required Fuels bridge, required String apiUrl, dynamic hint}) =>
      bridge.newRandomStaticMethodWalletUnlocked(apiUrl: apiUrl, hint: hint);

  static Future<WalletUnlocked> fromMnemonicPhrase(
          {required Fuels bridge,
          required String phrase,
          required String apiUrl,
          dynamic hint}) =>
      bridge.fromMnemonicPhraseStaticMethodWalletUnlocked(
          phrase: phrase, apiUrl: apiUrl, hint: hint);

  Future<String> address({dynamic hint}) => bridge.addressMethodWalletUnlocked(
        that: this,
      );

  Future<int> getAssetBalance({required String asset, dynamic hint}) =>
      bridge.getAssetBalanceMethodWalletUnlocked(
        that: this,
        asset: asset,
      );

  Future<Balances> getBalances({dynamic hint}) =>
      bridge.getBalancesMethodWalletUnlocked(
        that: this,
      );

  Future<List<TransactionResponse>> getTransactions(
          {required int pageSize, String? cursor, dynamic hint}) =>
      bridge.getTransactionsMethodWalletUnlocked(
        that: this,
        pageSize: pageSize,
        cursor: cursor,
      );
}

class Witness {
  final Uint8List data;

  Witness({
    required this.data,
  });
}

class FuelsImpl implements Fuels {
  final FuelsPlatform _platform;
  factory FuelsImpl(ExternalLibrary dylib) =>
      FuelsImpl.raw(FuelsPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory FuelsImpl.wasm(FutureOr<WasmModule> module) =>
      FuelsImpl(module as ExternalLibrary);
  FuelsImpl.raw(this._platform);
  Future<WalletUnlocked> newRandomStaticMethodWalletUnlocked(
      {required String apiUrl, dynamic hint}) {
    var arg0 = _platform.api2wire_String(apiUrl);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_new_random__static_method__WalletUnlocked(port_, arg0),
      parseSuccessData: (d) => _wire2api_wallet_unlocked(d),
      constMeta: kNewRandomStaticMethodWalletUnlockedConstMeta,
      argValues: [apiUrl],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kNewRandomStaticMethodWalletUnlockedConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "new_random__static_method__WalletUnlocked",
            argNames: ["apiUrl"],
          );

  Future<WalletUnlocked> fromMnemonicPhraseStaticMethodWalletUnlocked(
      {required String phrase, required String apiUrl, dynamic hint}) {
    var arg0 = _platform.api2wire_String(phrase);
    var arg1 = _platform.api2wire_String(apiUrl);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_from_mnemonic_phrase__static_method__WalletUnlocked(
              port_, arg0, arg1),
      parseSuccessData: (d) => _wire2api_wallet_unlocked(d),
      constMeta: kFromMnemonicPhraseStaticMethodWalletUnlockedConstMeta,
      argValues: [phrase, apiUrl],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kFromMnemonicPhraseStaticMethodWalletUnlockedConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "from_mnemonic_phrase__static_method__WalletUnlocked",
            argNames: ["phrase", "apiUrl"],
          );

  Future<String> addressMethodWalletUnlocked(
      {required WalletUnlocked that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_wallet_unlocked(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_address__method__WalletUnlocked(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kAddressMethodWalletUnlockedConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kAddressMethodWalletUnlockedConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "address__method__WalletUnlocked",
        argNames: ["that"],
      );

  Future<int> getAssetBalanceMethodWalletUnlocked(
      {required WalletUnlocked that, required String asset, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_wallet_unlocked(that);
    var arg1 = _platform.api2wire_String(asset);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_get_asset_balance__method__WalletUnlocked(port_, arg0, arg1),
      parseSuccessData: _wire2api_u64,
      constMeta: kGetAssetBalanceMethodWalletUnlockedConstMeta,
      argValues: [that, asset],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kGetAssetBalanceMethodWalletUnlockedConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "get_asset_balance__method__WalletUnlocked",
            argNames: ["that", "asset"],
          );

  Future<Balances> getBalancesMethodWalletUnlocked(
      {required WalletUnlocked that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_wallet_unlocked(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_get_balances__method__WalletUnlocked(port_, arg0),
      parseSuccessData: _wire2api_balances,
      constMeta: kGetBalancesMethodWalletUnlockedConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kGetBalancesMethodWalletUnlockedConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "get_balances__method__WalletUnlocked",
            argNames: ["that"],
          );

  Future<List<TransactionResponse>> getTransactionsMethodWalletUnlocked(
      {required WalletUnlocked that,
      required int pageSize,
      String? cursor,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_wallet_unlocked(that);
    var arg1 = api2wire_usize(pageSize);
    var arg2 = _platform.api2wire_opt_String(cursor);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_get_transactions__method__WalletUnlocked(
              port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_list_transaction_response,
      constMeta: kGetTransactionsMethodWalletUnlockedConstMeta,
      argValues: [that, pageSize, cursor],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kGetTransactionsMethodWalletUnlockedConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "get_transactions__method__WalletUnlocked",
            argNames: ["that", "pageSize", "cursor"],
          );

  DropFnType get dropOpaqueNativeWalletUnlocked =>
      _platform.inner.drop_opaque_NativeWalletUnlocked;
  ShareFnType get shareOpaqueNativeWalletUnlocked =>
      _platform.inner.share_opaque_NativeWalletUnlocked;
  OpaqueTypeFinalizer get NativeWalletUnlockedFinalizer =>
      _platform.NativeWalletUnlockedFinalizer;

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  NativeWalletUnlocked _wire2api_NativeWalletUnlocked(dynamic raw) {
    return NativeWalletUnlocked.fromRaw(raw[0], raw[1], this);
  }

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  Balances _wire2api_balances(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Balances(
      assets: _wire2api_StringList(arr[0]),
      balances: _wire2api_uint_64_list(arr[1]),
    );
  }

  Create _wire2api_box_autoadd_create(dynamic raw) {
    return _wire2api_create(raw);
  }

  Mint _wire2api_box_autoadd_mint(dynamic raw) {
    return _wire2api_mint(raw);
  }

  Script _wire2api_box_autoadd_script(dynamic raw) {
    return _wire2api_script(raw);
  }

  TxPointer _wire2api_box_autoadd_tx_pointer(dynamic raw) {
    return _wire2api_tx_pointer(raw);
  }

  UtxoId _wire2api_box_autoadd_utxo_id(dynamic raw) {
    return _wire2api_utxo_id(raw);
  }

  Create _wire2api_create(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 10)
      throw Exception('unexpected arr length: expect 10 but see ${arr.length}');
    return Create(
      gasPrice: _wire2api_u64(arr[0]),
      gasLimit: _wire2api_u64(arr[1]),
      maturity: _wire2api_u64(arr[2]),
      bytecodeLength: _wire2api_u64(arr[3]),
      bytecodeWitnessIndex: _wire2api_u8(arr[4]),
      storageSlots: _wire2api_list_storage_slot(arr[5]),
      inputs: _wire2api_list_input(arr[6]),
      outputs: _wire2api_list_output(arr[7]),
      witnesses: _wire2api_list_witness(arr[8]),
      salt: _wire2api_u8_array_32(arr[9]),
    );
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  Input _wire2api_input(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return Input_CoinSigned(
          utxoId: _wire2api_box_autoadd_utxo_id(raw[1]),
          owner: _wire2api_u8_array_32(raw[2]),
          amount: _wire2api_u64(raw[3]),
          assetId: _wire2api_u8_array_32(raw[4]),
          txPointer: _wire2api_box_autoadd_tx_pointer(raw[5]),
          witnessIndex: _wire2api_u8(raw[6]),
          maturity: _wire2api_u64(raw[7]),
        );
      case 1:
        return Input_CoinPredicate(
          utxoId: _wire2api_box_autoadd_utxo_id(raw[1]),
          owner: _wire2api_u8_array_32(raw[2]),
          amount: _wire2api_u64(raw[3]),
          assetId: _wire2api_u8_array_32(raw[4]),
          txPointer: _wire2api_box_autoadd_tx_pointer(raw[5]),
          maturity: _wire2api_u64(raw[6]),
          predicate: _wire2api_uint_8_list(raw[7]),
          predicateData: _wire2api_uint_8_list(raw[8]),
        );
      case 2:
        return Input_Contract(
          utxoId: _wire2api_box_autoadd_utxo_id(raw[1]),
          balanceRoot: _wire2api_u8_array_32(raw[2]),
          stateRoot: _wire2api_u8_array_32(raw[3]),
          txPointer: _wire2api_box_autoadd_tx_pointer(raw[4]),
          contractId: _wire2api_u8_array_32(raw[5]),
        );
      case 3:
        return Input_MessageSigned(
          messageId: _wire2api_u8_array_32(raw[1]),
          sender: _wire2api_u8_array_32(raw[2]),
          recipient: _wire2api_u8_array_32(raw[3]),
          amount: _wire2api_u64(raw[4]),
          nonce: _wire2api_u64(raw[5]),
          witnessIndex: _wire2api_u8(raw[6]),
          data: _wire2api_uint_8_list(raw[7]),
        );
      case 4:
        return Input_MessagePredicate(
          messageId: _wire2api_u8_array_32(raw[1]),
          sender: _wire2api_u8_array_32(raw[2]),
          recipient: _wire2api_u8_array_32(raw[3]),
          amount: _wire2api_u64(raw[4]),
          nonce: _wire2api_u64(raw[5]),
          data: _wire2api_uint_8_list(raw[6]),
          predicate: _wire2api_uint_8_list(raw[7]),
          predicateData: _wire2api_uint_8_list(raw[8]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  List<Input> _wire2api_list_input(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_input).toList();
  }

  List<Output> _wire2api_list_output(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_output).toList();
  }

  List<StorageSlot> _wire2api_list_storage_slot(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_storage_slot).toList();
  }

  List<TransactionResponse> _wire2api_list_transaction_response(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_transaction_response).toList();
  }

  List<Witness> _wire2api_list_witness(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_witness).toList();
  }

  Mint _wire2api_mint(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Mint(
      txPointer: _wire2api_tx_pointer(arr[0]),
      outputs: _wire2api_list_output(arr[1]),
    );
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  Output _wire2api_output(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return Output_Coin(
          to: _wire2api_u8_array_32(raw[1]),
          amount: _wire2api_u64(raw[2]),
          assetId: _wire2api_u8_array_32(raw[3]),
        );
      case 1:
        return Output_Contract(
          inputIndex: _wire2api_u8(raw[1]),
          balanceRoot: _wire2api_u8_array_32(raw[2]),
          stateRoot: _wire2api_u8_array_32(raw[3]),
        );
      case 2:
        return Output_Message(
          recipient: _wire2api_u8_array_32(raw[1]),
          amount: _wire2api_u64(raw[2]),
        );
      case 3:
        return Output_Change(
          to: _wire2api_u8_array_32(raw[1]),
          amount: _wire2api_u64(raw[2]),
          assetId: _wire2api_u8_array_32(raw[3]),
        );
      case 4:
        return Output_Variable(
          to: _wire2api_u8_array_32(raw[1]),
          amount: _wire2api_u64(raw[2]),
          assetId: _wire2api_u8_array_32(raw[3]),
        );
      case 5:
        return Output_ContractCreated(
          contractId: _wire2api_u8_array_32(raw[1]),
          stateRoot: _wire2api_u8_array_32(raw[2]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  Script _wire2api_script(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 9)
      throw Exception('unexpected arr length: expect 9 but see ${arr.length}');
    return Script(
      gasPrice: _wire2api_u64(arr[0]),
      gasLimit: _wire2api_u64(arr[1]),
      maturity: _wire2api_u64(arr[2]),
      script: _wire2api_uint_8_list(arr[3]),
      scriptData: _wire2api_uint_8_list(arr[4]),
      inputs: _wire2api_list_input(arr[5]),
      outputs: _wire2api_list_output(arr[6]),
      witnesses: _wire2api_list_witness(arr[7]),
      receiptsRoot: _wire2api_u8_array_32(arr[8]),
    );
  }

  StorageSlot _wire2api_storage_slot(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return StorageSlot(
      key: _wire2api_u8_array_32(arr[0]),
      value: _wire2api_u8_array_32(arr[1]),
    );
  }

  Transaction _wire2api_transaction(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return Transaction_Script(
          _wire2api_box_autoadd_script(raw[1]),
        );
      case 1:
        return Transaction_Create(
          _wire2api_box_autoadd_create(raw[1]),
        );
      case 2:
        return Transaction_Mint(
          _wire2api_box_autoadd_mint(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  TransactionResponse _wire2api_transaction_response(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return TransactionResponse(
      transaction: _wire2api_transaction(arr[0]),
      status: _wire2api_transaction_status(arr[1]),
      blockId: _wire2api_opt_String(arr[2]),
      time: _wire2api_opt_String(arr[3]),
    );
  }

  TransactionStatus _wire2api_transaction_status(dynamic raw) {
    return TransactionStatus.values[raw];
  }

  TxPointer _wire2api_tx_pointer(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return TxPointer(
      blockHeight: _wire2api_u32(arr[0]),
      txIndex: _wire2api_u16(arr[1]),
    );
  }

  int _wire2api_u16(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  U8Array32 _wire2api_u8_array_32(dynamic raw) {
    return U8Array32(_wire2api_uint_8_list(raw));
  }

  Uint64List _wire2api_uint_64_list(dynamic raw) {
    return Uint64List.from(raw);
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  UtxoId _wire2api_utxo_id(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return UtxoId(
      txId: _wire2api_u8_array_32(arr[0]),
      outputIndex: _wire2api_u8(arr[1]),
    );
  }

  WalletUnlocked _wire2api_wallet_unlocked(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return WalletUnlocked(
      bridge: this,
      walletUnlocked: _wire2api_NativeWalletUnlocked(arr[0]),
      privateKey: _wire2api_String(arr[1]),
      mnemonicPhrase: _wire2api_String(arr[2]),
    );
  }

  Witness _wire2api_witness(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return Witness(
      data: _wire2api_uint_8_list(arr[0]),
    );
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

@protected
int api2wire_usize(int raw) {
  return raw;
}

// Section: finalizer
