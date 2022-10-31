//
//  MatchInfo.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/31.
//

struct MatchInfo {
    let gameLength: Float

    enum CodingKeys: String, CodingKey {
        case gameLength = "game_length"
    }
}
