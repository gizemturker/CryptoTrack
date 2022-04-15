//
//  APICaller.swift
//  CryptoTrack
//
//  Created by Gizem Turker on 14.04.2022.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private struct Constans {
        static let apiKey = "2365EB53-C1D2-4765-A671-1111698437C0"
        static let assetsEndpoint = "https://rest.coinapi.io/v1/assets/"
    }
    
    private init() {
    }
    
    // MARK: -Public
    public func getAllCryptoData(completion: @escaping (Result<[Crypto], Error>) -> Void) {
        
        guard let url = URL(string: Constans.assetsEndpoint + "?apikey=" + Constans.apiKey) else {
            
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
                // Decode response
                
                let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
                completion(.success(cryptos))
                
            }
            
            catch {
                completion(.failure(error))
                
            }
        }
        task.resume()
    }
}
