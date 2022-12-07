//
//  ContentView.swift
//  StatesMidtermProject
//
//  Created by Thadeus Meneses on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(USStates.list) { state in
                NavigationLink(destination: StateInformationView(state:state)){
                    StateRow(state: state)
                }
            }.navigationTitle("US States")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
