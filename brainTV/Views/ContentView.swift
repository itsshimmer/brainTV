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
            LoginScreen(currentScreen: $currentScreen)
        case "RegisterScreen":
            RegisterScreen(currentScreen: $currentScreen)
        case "TabBarView":
            TabBarView()
        
        default:
            LoginScreen(currentScreen: $currentScreen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
