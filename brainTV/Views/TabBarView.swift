//
//  TabBarView.swift
//  brainTV
//
//  Created by Felipe Grosze Nipper de Oliveira on 29/03/21.
//

import SwiftUI

enum Tabs {
case feedDeAulas
case palestrantes
case programacao
}

struct TabBarView: View {
    
    init() {
        let redPart: CGFloat = CGFloat(249) / 255
            let greenPart: CGFloat = CGFloat(249) / 255
            let bluePart: CGFloat = CGFloat(249) / 255
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        UITabBar.appearance().backgroundColor = UIColor.init(red: redPart, green: greenPart, blue: bluePart, alpha: 1)
    }
    
    @State var selectedTab:Tabs = .feedDeAulas
    var body: some View {
        TabView(selection: $selectedTab){
        RecentClassesScreen()
            .tabItem {
                Image(selectedTab == Tabs.feedDeAulas ? "home-red" : "home-black")
                Text("Feed de aulas")
        }
        .tag(Tabs.feedDeAulas)
        PanelistsScreen()
            .tabItem {
                Image(selectedTab == Tabs.palestrantes ? "palestrantes-red" : "palestrantes-black")
                Text("Palestrantes")
        }
        .tag(Tabs.palestrantes)
        ScheduleScreen()
            .tabItem {
                Image(selectedTab == Tabs.programacao ? "programacao-red" : "programacao-black-1")
                Text("Programação")
            }
            .tag(Tabs.programacao)
        }
        .accentColor(Color(.sRGB, red: 217/255, green: 44/255, blue: 45/255, opacity: 0.94))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
