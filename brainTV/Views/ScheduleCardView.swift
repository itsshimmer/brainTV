//
//  ScheduleCardView.swift
//  brainTV
//
//  Created by Lucca Molon on 29/03/21.
//

import SwiftUI

struct ScheduleCardView: View {
    var schedule: Schedule
    var shouldShowDay: Bool = false
    
    var body: some View {
        
        HStack (alignment: .top) {
            ZStack {
                if !shouldShowDay {
                    Text("\(schedule.day)")
                        .font(.title).bold()
                        .foregroundColor(.red)
                        .padding(.leading, 30)
                }
                else {
                    Spacer()
                }
            }.frame(width: 70)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .padding(.trailing,25)
                    .padding(.vertical, 5)
                    .padding(.leading)
                HStack /*(alignment: .top)*/{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(schedule.color)
                        .frame(maxWidth: 15)
                        .padding(.vertical, 5)
                        .padding(.leading)
                    
                    VStack(alignment: .leading) {
                        Text(schedule.time)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(schedule.color)
                            .padding(.top, 20.0)
                            .padding(.bottom, -5.0)
                        Text(schedule.about)
                            .font(.subheadline)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,30)
                        Text(schedule.doctor.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom)
                            .padding(.top, -5.0)
                    }
                    Spacer()
                }
            }

        }.cornerRadius(10)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.white, lineWidth: 2)
//                        .shadow(radius: 10)
//                )
    }
}

struct ScheduleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleCardView(schedule: schedules[0])
    }
}
