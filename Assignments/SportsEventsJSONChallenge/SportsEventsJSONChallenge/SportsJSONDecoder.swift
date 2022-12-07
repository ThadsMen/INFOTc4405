//
//  SportsJSONDecoder.swift
//  SportsEventsJSONChallenge
//
//  Created by Thadeus Meneses on 12/3/22.
//

import Foundation

struct MatchupData: Codable, Identifiable{
    let id = UUID()
    var status: String
    var events:[Event]
    
    enum CodingKeys: String, CodingKey{
        case status
        case events
    }
}

struct Event: Codable, Identifiable, Hashable{
    let id = UUID()
    var sport: String
    var matchup: String
    var date: Date
    
    enum CodingKeys: String, CodingKey{
        case sport
        case matchup
        case date
    }
}

class MatchupsLoader{
    class func load(jsonFileName: String)->MatchupData?{

        
        var matchupData:MatchupData?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        //jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl){
            matchupData = try? jsonDecoder.decode(MatchupData.self,from: jsonData)
        }
        
        
        
        return matchupData
    }
}
