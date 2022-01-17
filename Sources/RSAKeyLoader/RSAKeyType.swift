//
//  RSAKeyType.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/17/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

fileprivate let RSA_PUBLIC_KEY_HEADER: String = "-----BEGIN RSA PUBLIC KEY-----"
fileprivate let RSA_PUBLIC_KEY_FOOTER: String = "-----END RSA PUBLIC KEY-----"
fileprivate let RSA_PRIVATE_KEY_HEADER: String = "-----BEGIN RSA PRIVATE KEY-----"
fileprivate let RSA_PRIVATE_KEY_FOOTER: String = "-----END RSA PRIVATE KEY-----"

public enum RSAKeyType {
    case `private`
    case `public`
    
    init?(value: String) {
        switch value {
        case _ where value.contains(RSA_PRIVATE_KEY_HEADER) && value.contains(RSA_PRIVATE_KEY_FOOTER):
            self = .private
        case _ where value.contains(RSA_PUBLIC_KEY_HEADER) && value.contains(RSA_PUBLIC_KEY_FOOTER):
            self = .public
        default:
            return nil
        }
    }
}
