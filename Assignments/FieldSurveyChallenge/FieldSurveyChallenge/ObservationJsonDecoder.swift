//
//  ObservationJsonDecoder.swift
//  FieldSurveyChallenge
//
//  Created by Thadeus Meneses on 12/3/22.
//

import Foundation


struct ObservationData: Codable, Identifiable{
    let id = UUID()
    var status: String
    var observations:[Observation]
    
    enum CodingKeys: String, CodingKey{
        case status
        case observations
    }
}

struct Observation: Codable, Identifiable, Hashable{
    let id = UUID()
    var classification: String
    var title: String
    var description: String
    var date:Date
    
    enum CodingKeys: String, CodingKey{
        case classification
        case title
        case description
        case date
    }
}

class ObservationLoader{
    class func load(jsonFileName: String)->ObservationData?{

        
        var observationData:ObservationData?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        //jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl){
            observationData = try? jsonDecoder.decode(ObservationData.self,from: jsonData)
        }
        
        return observationData
    }
}

func getObservationData() -> ObservationData? {
    let observationData: ObservationData?

    
    observationData = ObservationLoader.load(jsonFileName: "field_observations")
    if let observationData = observationData{
        print("Status: \(observationData.status)")
        for observation in observationData.observations{
            print("id = \(observationData.id), classification = \(observation.classification), title = \(observation.title), date = \(observation.date)" )
        }
    }else{
        print("error")
    }
    
    return observationData
}
