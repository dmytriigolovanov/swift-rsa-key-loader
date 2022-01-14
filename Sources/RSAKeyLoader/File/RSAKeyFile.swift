//
//  RSAKeyFile.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/14/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

enum RSAKeyFileError: Error {
    case fileNotExist
}

struct RSAKeyFile {
    let name: String
    let type: RSAKeyFileType
    let bundle: Bundle
    
    var url: URL? {
        return bundle.url(forResource: name,
                          withExtension: type.fileExtension)
    }
    
    func load() throws -> String {
        guard let url = self.url else {
            throw RSAKeyFileError.fileNotExist
        }
        return try String(contentsOf: url, encoding: .utf8)
    }
}
