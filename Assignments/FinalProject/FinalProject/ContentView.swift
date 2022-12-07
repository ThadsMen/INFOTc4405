//
//  ContentView.swift
//  FinalProject
//
//  Created by Thadeus Meneses on 12/5/22.
//
//

import SwiftUI


struct ContentView: View {
    
    let weather: Weather?

    init(){
        
        weather = WeatherLoader.load(jsonFileName: "Weather")
        if let weather = weather{
            print("\(weather.status)")
            
        }else{
            print("error")
        }
    }


    var body: some View {
            
            NavigationView{
                
                List{

                    ForEach(weather!.data,id:\.self){
                        forecast in
                        NavigationLink(destination:WeatherDetailView(observation: forecast)){
                            ForecastRowView(forcast: forecast)
                        }
                    }.navigationTitle("5-Day Forecast")
                }
            }
        
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
