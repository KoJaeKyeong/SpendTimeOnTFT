//
//  RiotAPIRequestURL.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/11/02.
//

import Foundation

struct RiotAPIRequestURL {
    static func summonerURL(by name: String) -> URL? {
        var components = URLComponents(
            string: "https://kr.api.riotgames.com/tft/summoner/v1/summoners/by-name/\(name)?"
        )
        let query = URLQueryItem(name: "api_key", value: Bundle.main.riotAPIKey)

        components?.queryItems?.append(query)

        return components?.url
    }

    static func matchURL(by puuid: String, start: Int) -> URL? {
        var components = URLComponents(
            string: "https://asia.api.riotgames.com/tft/match/v1/matches/by-puuid/\(puuid)/ids?"
        )

        let startQuery = URLQueryItem(name: "start", value: "\(start)")
        let countQuery = URLQueryItem(name: "count", value: "200")
        let apiKeyQuery = URLQueryItem(name: "api_key", value: Bundle.main.riotAPIKey)

        components?.queryItems?.append(contentsOf: [startQuery, countQuery, apiKeyQuery])

        return components?.url
    }
}
