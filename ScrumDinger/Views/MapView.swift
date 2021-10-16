//
//  map.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 14/10/21.
//

import SwiftUI
import MapKit

struct MapView: View
{
    var coordinate : CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    var body: some View
    {
        Map(coordinateRegion: $region).onAppear
        {
            setRegion(coordinate: coordinate)
        }
    }
    
    private func setRegion(coordinate : CLLocationCoordinate2D)
    {
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    }
}

struct map_Previews: PreviewProvider
{
    static var previews: some View
    {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
