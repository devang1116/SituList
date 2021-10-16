//
//  ProfileSummary.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 16/10/21.
//

import SwiftUI

struct ProfileSummary: View
{
    @State private var profile = Profile.default
    @EnvironmentObject var modelData : ModelData
    
    var body: some View
    {
        ScrollView
        {
            VStack(alignment: .leading, spacing: 10)
            {
                Text("Name : ") + Text("\(profile.name)")
                    
                    .font(.title)
                Text("Prefers Notification : \(profile.prefersNotification ? "ON" : "OFF")")
                Text("Seasonal Photo : \(profile.seasonalPhoto.rawValue)")
                Text("Date : \(profile.goalDate , style: .date)")
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading)
            {
                Text("Completed Badges")
                
                HStack
                {
                    HikeBadge(name: "Mr Hicker")
                    HikeBadge(name: "Hike General")
                        .hueRotation(Angle(degrees: 90))
                    HikeBadge(name: "Back to Back")
                        .grayscale(0.5)
                        .hueRotation(Angle(degrees: 45))
                }
                .padding()
                
            }
            .padding()
            
            Divider()
            
            VStack
            {
                Text("Recent Hikes")
                HikeView(hike: modelData.hikes[0])
            }
            .padding()
        }
        .padding()
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary()
            .environmentObject(ModelData())
    }
}
