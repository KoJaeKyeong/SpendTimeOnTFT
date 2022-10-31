//
//  Match.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/31.
//

struct Match {
    let matchInfo: MatchInfo

    enum CodingKeys: String, CodingKey {
        case matchInfo = "info"
    }
}
