//
//  SearchSummonerUseCases.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/11/07.
//

import Foundation

struct SearchSummonerUseCase {
    static func requestMatchInfo(by name: String) async throws -> [String]? {
        return try await MatchRepository.requestMatchInfo(by: name)
    }
}
