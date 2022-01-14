//
//  RSAKeyLoader.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/14/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

public final class RSAKeyLoader {
    private static func load(fileName name: String,
                      fileType: RSAKeyFileType,
                      fromBundle bundle: Bundle) throws -> String {
        let file = RSAKeyFile(name: name,
                              type: fileType,
                              bundle: bundle)
        
        return try file.load()
    }
    
    // MARK: RSA Private Key
    
    public static func loadPrivateKey(fileName: String,
                                      fileType: RSAKeyFileType,
                                      fromBundle bundle: Bundle = .main) throws -> RSAPrivateKey {
        let string = self.load(fileName: fileName,
                               fileType: fileType,
                               fromBundle: bundle)
        return RSAPrivateKey(string)
    }
    
    // MARK: RSA Public Key
    
    public static func loadPublicKey(fileName: String,
                                     fileType: RSAKeyFileType,
                                     fromBundle bundle: Bundle = .main) throws -> RSAPublicKey {
        let string = self.load(fileName: fileName,
                               fileType: fileType,
                               fromBundle: bundle)
        return RSAPublicKey(string)
    }
}
