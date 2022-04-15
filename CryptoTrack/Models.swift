//
//  Models.swift
//  CryptoTrack
//
//  Created by Gizem Turker on 14.04.2022.
//

import Foundation

struct Crypto: Codable {
    let asset_id:String
    let name:String?
    let price_usd:Float?
    let id_icon:String?
}


/*
 "asset_id": "BTC",
   "name": "Bitcoin",
   "type_is_crypto": 1,
   "data_quote_start": "2014-02-24T17:43:05.0000000Z",
   "data_quote_end": "2022-04-15T08:28:56.8000000Z",
   "data_orderbook_start": "2014-02-24T17:43:05.0000000Z",
   "data_orderbook_end": "2020-08-05T14:38:38.3413202Z",
   "data_trade_start": "2010-07-17T23:09:17.0000000Z",
   "data_trade_end": "2022-04-15T08:31:58.8273760Z",
   "data_symbols_count": 86736,
   "volume_1hrs_usd": 3214058717563.83,
   "volume_1day_usd": 54742558178083.04,
   "volume_1mth_usd": 2400351105014453.11,
   "price_usd": 40169.075762649226146091487763,
   "id_icon": "4caf2b16-a017-4e26-a348-2cea69c34cba",
   "data_start": "2010-07-17",
   "data_end": "2022-04-15"
 */
