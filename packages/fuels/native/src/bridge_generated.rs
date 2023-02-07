#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.57.0.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

use crate::model::balance::Balance;
use crate::model::pagination::PageDirection;
use crate::model::pagination::PaginationRequest;
use crate::model::pagination::TransactionsPaginatedResult;
use crate::model::receipt::InstructionResult;
use crate::model::receipt::Receipt;
use crate::model::receipt::ScriptExecutionResult;
use crate::model::response::TransferResponse;
use crate::model::transaction::Create;
use crate::model::transaction::Input;
use crate::model::transaction::Mint;
use crate::model::transaction::Output;
use crate::model::transaction::Script;
use crate::model::transaction::StorageSlot;
use crate::model::transaction::Transaction;
use crate::model::transaction::TransactionResponse;
use crate::model::transaction::TransactionStatus;
use crate::model::transaction::TxParameters;
use crate::model::transaction::TxPointer;
use crate::model::transaction::UtxoId;
use crate::model::transaction::Witness;

// Section: wire functions

fn wire_new_random__static_method__WalletUnlocked_impl(
    port_: MessagePort,
    provider: impl Wire2Api<Option<Provider>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new_random__static_method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_provider = provider.wire2api();
            move |task_callback| Ok(WalletUnlocked::new_random(api_provider))
        },
    )
}
fn wire_new_from_private_key__static_method__WalletUnlocked_impl(
    port_: MessagePort,
    private_key: impl Wire2Api<String> + UnwindSafe,
    provider: impl Wire2Api<Option<Provider>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new_from_private_key__static_method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_private_key = private_key.wire2api();
            let api_provider = provider.wire2api();
            move |task_callback| {
                Ok(WalletUnlocked::new_from_private_key(
                    api_private_key,
                    api_provider,
                ))
            }
        },
    )
}
fn wire_new_from_mnemonic_phrase__static_method__WalletUnlocked_impl(
    port_: MessagePort,
    phrase: impl Wire2Api<String> + UnwindSafe,
    provider: impl Wire2Api<Option<Provider>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new_from_mnemonic_phrase__static_method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_phrase = phrase.wire2api();
            let api_provider = provider.wire2api();
            move |task_callback| {
                Ok(WalletUnlocked::new_from_mnemonic_phrase(
                    api_phrase,
                    api_provider,
                ))
            }
        },
    )
}
fn wire_new_from_mnemonic_phrase_with_path__static_method__WalletUnlocked_impl(
    port_: MessagePort,
    phrase: impl Wire2Api<String> + UnwindSafe,
    provider: impl Wire2Api<Option<Provider>> + UnwindSafe,
    path: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new_from_mnemonic_phrase_with_path__static_method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_phrase = phrase.wire2api();
            let api_provider = provider.wire2api();
            let api_path = path.wire2api();
            move |task_callback| {
                Ok(WalletUnlocked::new_from_mnemonic_phrase_with_path(
                    api_phrase,
                    api_provider,
                    api_path,
                ))
            }
        },
    )
}
fn wire_address__method__WalletUnlocked_impl(
    port_: MessagePort,
    that: impl Wire2Api<WalletUnlocked> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "address__method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(WalletUnlocked::address(&api_that))
        },
    )
}
fn wire_get_asset_balance__method__WalletUnlocked_impl(
    port_: MessagePort,
    that: impl Wire2Api<WalletUnlocked> + UnwindSafe,
    asset: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_asset_balance__method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_asset = asset.wire2api();
            move |task_callback| Ok(WalletUnlocked::get_asset_balance(&api_that, api_asset))
        },
    )
}
fn wire_get_balances__method__WalletUnlocked_impl(
    port_: MessagePort,
    that: impl Wire2Api<WalletUnlocked> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_balances__method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(WalletUnlocked::get_balances(&api_that))
        },
    )
}
fn wire_get_transactions__method__WalletUnlocked_impl(
    port_: MessagePort,
    that: impl Wire2Api<WalletUnlocked> + UnwindSafe,
    request: impl Wire2Api<PaginationRequest> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_transactions__method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_request = request.wire2api();
            move |task_callback| Ok(WalletUnlocked::get_transactions(&api_that, api_request))
        },
    )
}
fn wire_transfer__method__WalletUnlocked_impl(
    port_: MessagePort,
    that: impl Wire2Api<WalletUnlocked> + UnwindSafe,
    to: impl Wire2Api<Bech32Address> + UnwindSafe,
    amount: impl Wire2Api<u64> + UnwindSafe,
    asset: impl Wire2Api<String> + UnwindSafe,
    tx_parameters: impl Wire2Api<TxParameters> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "transfer__method__WalletUnlocked",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_to = to.wire2api();
            let api_amount = amount.wire2api();
            let api_asset = asset.wire2api();
            let api_tx_parameters = tx_parameters.wire2api();
            move |task_callback| {
                Ok(WalletUnlocked::transfer(
                    &api_that,
                    api_to,
                    api_amount,
                    api_asset,
                    api_tx_parameters,
                ))
            }
        },
    )
}
fn wire_from_bech32_string__static_method__Bech32Address_impl(
    port_: MessagePort,
    s: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "from_bech32_string__static_method__Bech32Address",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_s = s.wire2api();
            move |task_callback| Ok(Bech32Address::from_bech32_string(api_s))
        },
    )
}
fn wire_from_b256_string__static_method__Bech32Address_impl(
    port_: MessagePort,
    s: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "from_b256_string__static_method__Bech32Address",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_s = s.wire2api();
            move |task_callback| Ok(Bech32Address::from_b256_string(api_s))
        },
    )
}
fn wire_to_bech32_string__method__Bech32Address_impl(
    port_: MessagePort,
    that: impl Wire2Api<Bech32Address> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "to_bech32_string__method__Bech32Address",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(Bech32Address::to_bech32_string(&api_that))
        },
    )
}
fn wire_to_b256_string__method__Bech32Address_impl(
    port_: MessagePort,
    that: impl Wire2Api<Bech32Address> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "to_b256_string__method__Bech32Address",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(Bech32Address::to_b256_string(&api_that))
        },
    )
}
fn wire_connect__static_method__Provider_impl(
    port_: MessagePort,
    url: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "connect__static_method__Provider",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_url = url.wire2api();
            move |task_callback| Ok(Provider::connect(api_url))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<PageDirection> for i32 {
    fn wire2api(self) -> PageDirection {
        match self {
            0 => PageDirection::Forward,
            1 => PageDirection::Backward,
            _ => unreachable!("Invalid variant for PageDirection: {}", self),
        }
    }
}

impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<usize> for usize {
    fn wire2api(self) -> usize {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for Balance {
    fn into_dart(self) -> support::DartAbi {
        vec![self.asset.into_dart(), self.amount.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Balance {}

impl support::IntoDart for Bech32Address {
    fn into_dart(self) -> support::DartAbi {
        vec![self.native.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Bech32Address {}

impl support::IntoDart for Create {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.gas_price.into_dart(),
            self.gas_limit.into_dart(),
            self.maturity.into_dart(),
            self.bytecode_length.into_dart(),
            self.bytecode_witness_index.into_dart(),
            self.storage_slots.into_dart(),
            self.inputs.into_dart(),
            self.outputs.into_dart(),
            self.witnesses.into_dart(),
            self.salt.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Create {}

impl support::IntoDart for Input {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::CoinSigned {
                utxo_id,
                owner,
                amount,
                asset_id,
                tx_pointer,
                witness_index,
                maturity,
            } => vec![
                0.into_dart(),
                utxo_id.into_dart(),
                owner.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
                tx_pointer.into_dart(),
                witness_index.into_dart(),
                maturity.into_dart(),
            ],
            Self::CoinPredicate {
                utxo_id,
                owner,
                amount,
                asset_id,
                tx_pointer,
                maturity,
                predicate,
                predicate_data,
            } => vec![
                1.into_dart(),
                utxo_id.into_dart(),
                owner.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
                tx_pointer.into_dart(),
                maturity.into_dart(),
                predicate.into_dart(),
                predicate_data.into_dart(),
            ],
            Self::Contract {
                utxo_id,
                balance_root,
                state_root,
                tx_pointer,
                contract_id,
            } => vec![
                2.into_dart(),
                utxo_id.into_dart(),
                balance_root.into_dart(),
                state_root.into_dart(),
                tx_pointer.into_dart(),
                contract_id.into_dart(),
            ],
            Self::MessageSigned {
                message_id,
                sender,
                recipient,
                amount,
                nonce,
                witness_index,
                data,
            } => vec![
                3.into_dart(),
                message_id.into_dart(),
                sender.into_dart(),
                recipient.into_dart(),
                amount.into_dart(),
                nonce.into_dart(),
                witness_index.into_dart(),
                data.into_dart(),
            ],
            Self::MessagePredicate {
                message_id,
                sender,
                recipient,
                amount,
                nonce,
                data,
                predicate,
                predicate_data,
            } => vec![
                4.into_dart(),
                message_id.into_dart(),
                sender.into_dart(),
                recipient.into_dart(),
                amount.into_dart(),
                nonce.into_dart(),
                data.into_dart(),
                predicate.into_dart(),
                predicate_data.into_dart(),
            ],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Input {}
impl support::IntoDart for InstructionResult {
    fn into_dart(self) -> support::DartAbi {
        vec![self.reason.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for InstructionResult {}

impl support::IntoDart for Mint {
    fn into_dart(self) -> support::DartAbi {
        vec![self.tx_pointer.into_dart(), self.outputs.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Mint {}

impl support::IntoDart for Output {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Coin {
                to,
                amount,
                asset_id,
            } => vec![
                0.into_dart(),
                to.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
            ],
            Self::Contract {
                input_index,
                balance_root,
                state_root,
            } => vec![
                1.into_dart(),
                input_index.into_dart(),
                balance_root.into_dart(),
                state_root.into_dart(),
            ],
            Self::Message { recipient, amount } => {
                vec![2.into_dart(), recipient.into_dart(), amount.into_dart()]
            }
            Self::Change {
                to,
                amount,
                asset_id,
            } => vec![
                3.into_dart(),
                to.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
            ],
            Self::Variable {
                to,
                amount,
                asset_id,
            } => vec![
                4.into_dart(),
                to.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
            ],
            Self::ContractCreated {
                contract_id,
                state_root,
            } => vec![
                5.into_dart(),
                contract_id.into_dart(),
                state_root.into_dart(),
            ],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Output {}
impl support::IntoDart for Provider {
    fn into_dart(self) -> support::DartAbi {
        vec![self.native_provider.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Provider {}

impl support::IntoDart for Receipt {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Call {
                id,
                to,
                amount,
                asset_id,
                gas,
                param1,
                param2,
                pc,
                is_field,
            } => vec![
                0.into_dart(),
                id.into_dart(),
                to.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
                gas.into_dart(),
                param1.into_dart(),
                param2.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::ReturnReceipt {
                id,
                val,
                pc,
                is_field,
            } => vec![
                1.into_dart(),
                id.into_dart(),
                val.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::ReturnData {
                id,
                ptr,
                len,
                digest,
                data,
                pc,
                is_field,
            } => vec![
                2.into_dart(),
                id.into_dart(),
                ptr.into_dart(),
                len.into_dart(),
                digest.into_dart(),
                data.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::Panic {
                id,
                reason,
                pc,
                is_field,
                contract_id,
            } => vec![
                3.into_dart(),
                id.into_dart(),
                reason.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
                contract_id.into_dart(),
            ],
            Self::Revert {
                id,
                ra,
                pc,
                is_field,
            } => vec![
                4.into_dart(),
                id.into_dart(),
                ra.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::Log {
                id,
                ra,
                rb,
                rc,
                rd,
                pc,
                is_field,
            } => vec![
                5.into_dart(),
                id.into_dart(),
                ra.into_dart(),
                rb.into_dart(),
                rc.into_dart(),
                rd.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::LogData {
                id,
                ra,
                rb,
                ptr,
                len,
                digest,
                data,
                pc,
                is_field,
            } => vec![
                6.into_dart(),
                id.into_dart(),
                ra.into_dart(),
                rb.into_dart(),
                ptr.into_dart(),
                len.into_dart(),
                digest.into_dart(),
                data.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::Transfer {
                id,
                to,
                amount,
                asset_id,
                pc,
                is_field,
            } => vec![
                7.into_dart(),
                id.into_dart(),
                to.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::TransferOut {
                id,
                to,
                amount,
                asset_id,
                pc,
                is_field,
            } => vec![
                8.into_dart(),
                id.into_dart(),
                to.into_dart(),
                amount.into_dart(),
                asset_id.into_dart(),
                pc.into_dart(),
                is_field.into_dart(),
            ],
            Self::ScriptResult { result, gas_used } => {
                vec![9.into_dart(), result.into_dart(), gas_used.into_dart()]
            }
            Self::MessageOut {
                message_id,
                sender,
                recipient,
                amount,
                nonce,
                len,
                digest,
                data,
            } => vec![
                10.into_dart(),
                message_id.into_dart(),
                sender.into_dart(),
                recipient.into_dart(),
                amount.into_dart(),
                nonce.into_dart(),
                len.into_dart(),
                digest.into_dart(),
                data.into_dart(),
            ],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Receipt {}
impl support::IntoDart for Script {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.gas_price.into_dart(),
            self.gas_limit.into_dart(),
            self.maturity.into_dart(),
            self.script.into_dart(),
            self.script_data.into_dart(),
            self.inputs.into_dart(),
            self.outputs.into_dart(),
            self.witnesses.into_dart(),
            self.receipts_root.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Script {}

impl support::IntoDart for ScriptExecutionResult {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Success => vec![0.into_dart()],
            Self::Revert => vec![1.into_dart()],
            Self::Panic => vec![2.into_dart()],
            Self::GenericFailure(field0) => vec![3.into_dart(), field0.into_dart()],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for ScriptExecutionResult {}
impl support::IntoDart for StorageSlot {
    fn into_dart(self) -> support::DartAbi {
        vec![self.key.into_dart(), self.value.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for StorageSlot {}

impl support::IntoDart for Transaction {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Script(field0) => vec![0.into_dart(), field0.into_dart()],
            Self::Create(field0) => vec![1.into_dart(), field0.into_dart()],
            Self::Mint(field0) => vec![2.into_dart(), field0.into_dart()],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Transaction {}
impl support::IntoDart for TransactionResponse {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.transaction.into_dart(),
            self.status.into_dart(),
            self.block_id.into_dart(),
            self.time.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for TransactionResponse {}

impl support::IntoDart for TransactionStatus {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Submitted => 0,
            Self::Success => 1,
            Self::Failure => 2,
            Self::SqueezedOut => 3,
        }
        .into_dart()
    }
}
impl support::IntoDart for TransactionsPaginatedResult {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.cursor.into_dart(),
            self.results.into_dart(),
            self.has_next_page.into_dart(),
            self.has_previous_page.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for TransactionsPaginatedResult {}

impl support::IntoDart for TransferResponse {
    fn into_dart(self) -> support::DartAbi {
        vec![self.tx_id.into_dart(), self.receipts.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for TransferResponse {}

impl support::IntoDart for TxPointer {
    fn into_dart(self) -> support::DartAbi {
        vec![self.block_height.into_dart(), self.tx_index.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for TxPointer {}

impl support::IntoDart for UtxoId {
    fn into_dart(self) -> support::DartAbi {
        vec![self.tx_id.into_dart(), self.output_index.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for UtxoId {}

impl support::IntoDart for WalletUnlocked {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.native_wallet_unlocked.into_dart(),
            self.private_key.into_dart(),
            self.mnemonic_phrase.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for WalletUnlocked {}

impl support::IntoDart for Witness {
    fn into_dart(self) -> support::DartAbi {
        vec![self.data.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Witness {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
#[path = "bridge_generated.web.rs"]
mod web;
#[cfg(target_family = "wasm")]
pub use web::*;

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;
