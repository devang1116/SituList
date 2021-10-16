//
//  Profile.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 16/10/21.
//

import Foundation

struct Profile
{
    var name : String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(name: "Devang")
    
    enum Season : String ,  CaseIterable , Identifiable
    {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {
            self.rawValue
        }
    }
}
