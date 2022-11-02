//
//  RiotAPI.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/31.
//

import Foundation

struct RiotAPI {
    static func requestSummonerInfo(by name: String) async throws -> Summoner? {
        var components = URLComponents(
            string: "https://kr.api.riotgames.com/tft/summoner/v1/summoners/by-name/\(name)?"
        )
        let query = URLQueryItem(name: "api_key", value: Bundle.main.riotAPIKey)
        components?.queryItems?.append(query)

        guard let components = components,
              let requestURL = components.url else { return nil }

        let (data, response) = try await URLSession.shared.data(from: requestURL)

        guard let httpResponse = response as? HTTPURLResponse,
              200..<300 ~= httpResponse.statusCode else { return nil }

        let result = try JSONDecoder().decode(Summoner.self, from: data)

        return result
    }

    static func matchInfo(by puuid: String) {

    }
}
