//
//  RiotAPI.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/31.
//

import Foundation

struct RiotAPI {
    static func requestSummonerInfo(by name: String) async throws -> Summoner? {
        guard let requestURL = RiotAPIRequestURL.summonerURL(by: name) else { return nil }

        let (data, response) = try await URLSession.shared.data(from: requestURL)

        guard let httpResponse = response as? HTTPURLResponse,
              200 == httpResponse.statusCode else { return nil }

        let result = try JSONDecoder().decode(Summoner.self, from: data)

        return result
    }

    static func matchInfo(by puuid: String) {

    }
}
