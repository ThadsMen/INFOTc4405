//
//  WeatherAPIContent.swift
//  FinalProject
//
//  Created by Thadeus Meneses on 12/5/22.
//

import Foundation

struct Weather:Decodable, Identifiable{
    let status:String
    let id = UUID()
    let city_name:String
    let data:[Forecast]
    enum CodingKeys: String, CodingKey{
        case status
        case city_name
        case data
    }
    
}


struct Forecast:Decodable, Identifiable, Hashable{
    let id = UUID()
    let clouds:String
    let date:String
    let precip:String
    let humidity: String
    let temp_hi:String
    let temp_low:String
    let wind_spd:String
    let pic: String
    
    enum CodingKeys: String, CodingKey{
        case clouds
        case date
        case precip
        case humidity
        case temp_hi
        case temp_low
        case wind_spd
        case pic
    }
}




class WeatherLoader{
    class func load(jsonFileName: String)->Weather?{

        
        var weather:Weather?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        //jsonDecoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl){
            weather = try? jsonDecoder.decode(Weather.self,from: jsonData)
        }
        
        
        
        return weather
    }
}


