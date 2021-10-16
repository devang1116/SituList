//
//  LandmarkDetail.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 16/10/21.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View
{
    var landmark : Landmark
    @EnvironmentObject var modelData: ModelData
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var body: some View
    {
        ScrollView(.vertical)
        {
            VStack
            {
                MapView(coordinate: CLLocationCoordinate2D(latitude: landmark.coordinates.latitude, longitude: landmark.coordinates.longitude)).frame( height: 300).ignoresSafeArea(edges:.top)
                
                ImageView(image: landmark.image).offset(y : -130).padding(.bottom , -130)
                
                VStack(alignment: .leading)
                {
                    
                    HStack
                    {
                        Text(landmark.name).font(.title)
                        FavButton(isSet:$modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    HStack
                    {
                        Text(landmark.park).font(.subheadline)
                        
                        Spacer()
                        Text(landmark.state).font(.subheadline)
                            
                    }
                    
                    Divider().padding()
                    
                    Text("About \(landmark.name)").font(.title2)
                    Text(landmark.description)
                }.padding()
                Spacer()
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider
{
    static let modelData = ModelData()
    static var previews: some View
    {
        LandmarkDetail(landmark: modelData.landmarks[0])
                    .environmentObject(modelData)
    }
}
