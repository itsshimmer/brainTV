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
                        .font(.title)
                        .foregroundColor(.red)
                        .padding(.leading, 30)
                }
                else {
                    Spacer()
                }
            }
                .frame(width: 70)
            
            Divider()
            
            RoundedRectangle(cornerRadius: 10)
                
                .foregroundColor(schedule.color)
                .frame(maxWidth: 15)
                .padding(.vertical, 5)
            
            VStack(alignment: .leading) {
                Text(schedule.time)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(schedule.color)
                    .padding(.leading)
                    .padding(.top, 7.0)
                    .padding(.bottom, -5.0)
                Text(schedule.about)
                    .font(.subheadline)
                    .padding(.horizontal)
                    .frame(height: 50, alignment: .leading)
                Text(schedule.doctor.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom])
                    .padding(.top, -5.0)
            }
            Spacer()
        }
        .cornerRadius(10)
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
