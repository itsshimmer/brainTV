//
//  ScheduleScreen.swift
//  brainTV
//
//  Created by Lucas Dimer Justo on 31/03/21.
//

import SwiftUI

struct ScheduleScreen: View {
    var i: Int = 0
    
    var body: some View {
        VStack (spacing: 3){
            HeaderView(text: "Programação")
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(Array(zip(schedules.indices, schedules)), id: \.0) { index, item in
                        if index == 0 {
                            ScheduleCardView(schedule: item)
                        }
                        else {
                            let isSameDay = item.day == schedules[index-1].day
                            if isSameDay {
                                Divider()
                                    .padding(.vertical, 0)
                                    .padding(.leading, 78)
                            }
                            ScheduleCardView(schedule: item, shouldShowDay: isSameDay)
                        }
                    }
                }
                .padding(.bottom, 100)
            }
        }
        .ignoresSafeArea()
    }
}

struct ScheduleScreen_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleScreen()
    }
}
