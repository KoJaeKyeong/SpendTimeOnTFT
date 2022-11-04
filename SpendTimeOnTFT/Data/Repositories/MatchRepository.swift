//
//  MatchRepository.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/11/04.
//

import Foundation

struct MatchRepository {
    static func requestMatchInfo(by name: String) async throws -> [String]? {
        return try await RiotAPI.requestMatchInfo(by: name)
    }
}
