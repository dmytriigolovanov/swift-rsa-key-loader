//
//  RSAKeyLoader.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/14/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

public enum RSAKeyLoaderError: Error {
    case fileNotExist
    case emptyKey
    case invalidKey
}

public final class RSAKeyLoader {
    private static func load(fileName: String,
                             fileExtension: String,
                             fromBundle bundle: Bundle) throws -> RSAKey {
        guard let url = bundle.url(forResource: fileName, withExtension: fileExtension) else {
            throw RSAKeyLoaderError.fileNotExist
        }
        
        let value = try String(contentsOf: url, encoding: .utf8)
        
        guard value.isEmpty == false else {
            throw RSAKeyLoaderError.emptyKey
        }
        
        guard let keyType = RSAKeyType(value: value) else {
            throw RSAKeyLoaderError.invalidKey
        }
        
        return RSAKey(type: keyType, value: value)
    }
    
    // MARK: - PEM
    
    public static func loadFromPEM(fileName: String,
                                   fromBundle bundle: Bundle = .main) throws -> RSAKey {
        return try load(fileName: fileName,
                        fileExtension: "pem",
                        fromBundle: bundle)
    }
}
