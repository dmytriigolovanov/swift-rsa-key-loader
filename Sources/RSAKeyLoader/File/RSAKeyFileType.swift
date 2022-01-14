//
//  RSAKeyFileType.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/14/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

public enum RSAKeyFileType: String {
    case pem = "pem"
    
    var fileExtension: String {
        return rawValue
    }
}
