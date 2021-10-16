//
//  Hike.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 16/10/21.
//

import Foundation

struct Hike : Codable , Hashable , Identifiable
{
    var name : String
    var id : Int
    var distance : Double
    var difficulty : Int
    var observations : [Observation]
    
    static var lengthFormatter = LengthFormatter()
    
    var distanceText: String {
           return Hike.lengthFormatter
               .string(fromValue: distance, unit: .kilometer)
       }
    
    struct Observation : Codable , Hashable
    {
        var distanceFromStart : Double
        var elevation : Range<Double>
        var pace : Range<Double>
        var heartRate : Range<Double>
    }
}
