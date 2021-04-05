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
        ZStack{
            VStack (spacing: 0){
                HeaderView(text: "Programação")
                ScrollView {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.init(red: 240/255, green: 240/255, blue: 240/255))
                        .frame(width: 0, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(Array(zip(schedules.indices, schedules)), id: \.0) { index, item in
                            if index == 0 {
                                ScheduleCardView(schedule: item)
                            }
                            else {
                                let isSameDay = item.day == schedules[index-1].day
                                if !isSameDay {
                                    Divider()
                                        .padding(.vertical, 4)
                                        .padding(.leading, 95)
                                }
                                ScheduleCardView(schedule: item, shouldShowDay: isSameDay)
                            }
                        }
                    }
                    .padding(.bottom, 100)
                }
            }.ignoresSafeArea()
            HStack{
                Rectangle().foregroundColor(.white).frame(width: 70, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Divider()
                Spacer()
            }
        }.background(Color.gray.opacity(0.1)).ignoresSafeArea()
    }
}

struct ScheduleScreen_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleScreen()
    }
}
