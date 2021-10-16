//
//  ProfileEditor.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 16/10/21.
//

import SwiftUI

struct ProfileEditor: View
{
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
       let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
       let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
       return min...max
   }
    
    var body: some View
    {
        List
        {
            HStack
            {
                Text("Username :")
                    .bold()
                Divider()
                TextField("Username : " , text: $profile.name)
            }
            
            Toggle(isOn: $profile.prefersNotification) {
                            Text("Enable Notifications").bold()
            }
            
            VStack
            {
                Text("Seasonal Photo : ")
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto)  {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                            Text("Goal Date").bold()
                        }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
