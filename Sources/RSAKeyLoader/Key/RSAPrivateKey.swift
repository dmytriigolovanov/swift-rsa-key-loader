//
//  PEMPrivateKey.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/14/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

public enum RSAPrivateKeyError: Error {
    case invalidKey
}

public struct RSAPrivateKey {
    private let header: String = "-----BEGIN RSA PRIVATE KEY-----"
    private let footer: String = "-----END RSA PRIVATE KEY-----"
    
    public let originalString: String
    public let value: String
    
    // MARK: - Init
    
    init(from string: String) throws {
        guard
            string.contains(header),
            string.contains(footer)
        else {
            throw RSAPrivateKeyError.invalidKey
        }
        
        let value = string.rsaKeyValue(header: self.header,
                                       footer: self.footer)
        
        guard value != "" else {
            throw RSAPrivateKeyError.invalidKey
        }
        
        self.originalString = string
        self.value = value
    }
}
