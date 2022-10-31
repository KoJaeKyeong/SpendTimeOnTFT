//
//  Bundle+Extensions.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/31.
//

import Foundation

extension Bundle {
    var riotAPIKey: String {
        guard let fileURL = self.url(forResource: "Keys", withExtension: "plist"),
              let result = NSDictionary(contentsOf: fileURL),
              let key = result["RiotAPIKey"] as? String else { return "" }

        return key
    }
}
