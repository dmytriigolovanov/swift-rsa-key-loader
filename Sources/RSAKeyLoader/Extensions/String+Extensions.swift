//
//  String+Extensions.swift
//  RSAKeyLoader
//
//  Created by Dmytrii Golovanov on 1/14/22.
//  Copyright (c) 2022 Dmytrii Golovanov
//

import Foundation

extension String {
    func rsaKeyValue(header: String, footer: String) -> String {
        return string.replacingOccurrences(of: header,
                                           with: "",
                                           options: [.caseInsensitive, .regularExpression])
                     .replacingOccurrences(of: footer,
                                           with: "",
                                           options: [.caseInsensitive, .regularExpression])
                     .replacingOccurrences(of: "\n",
                                           with: "")
    }
}
