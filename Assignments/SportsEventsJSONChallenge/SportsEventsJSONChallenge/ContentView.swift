//
//  ContentView.swift
//  SportsEventsJSONChallenge
//
//  Created by Thadeus Meneses on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    let matchupData: MatchupData?
    let dateFormatter = DateFormatter()

    init(){
        
        dateFormatter.dateFormat = "MMM d, yyyy 'at' h:mm:ss a"
        
        matchupData = MatchupsLoader.load(jsonFileName: "sports_events")
        if let matchupData = matchupData{
            print("Success")
            
        }else{
            print("error")
        }
    }
    
    var body: some View {
        
        
        VStack{
            Text("Sports Events")
                .font(.title)
            List{
                ForEach(matchupData!.events,id:\.self){
                    event in
                    HStack{
                        Image("\(event.sport)")
                            .padding(.trailing, 24.0)
                        
                        VStack(alignment:.leading){
                            Text("\(event.matchup)")
                                .font(.headline)
                            Text("\(dateFormatter.string(from: event.date))")
                                .font(.footnote)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
