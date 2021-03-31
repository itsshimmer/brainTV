//
//  ContentView.swift
//  brainTV
//
//  Created by João Brentano on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentScreen: String = "SplashScreen"
    
    var body: some View {
        
        switch currentScreen {
        case "SplashScreen":
            SplashScreen(currentScreen: $currentScreen)
        case "LoginScreen":
            LoginScreen()
        default:
            LoginScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
