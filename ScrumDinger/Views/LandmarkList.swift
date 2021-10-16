//
//  LandmarkList.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 15/10/21.
//

import SwiftUI

struct LandmarkList: View
{
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
           modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    var body: some View
    {
        NavigationView
        {
            List{
                Toggle(isOn: $showFavoritesOnly)
                {
                    Text("Favourites")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark))
                    {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }.navigationTitle("Bucket List").font(.title)
                .navigationBarTitleDisplayMode(.inline)
            Spacer()
        }
    }
}

struct LandmarkList_Previews: PreviewProvider
{
    static var previews: some View
    {
        LandmarkList()
        ContentView().preferredColorScheme(.dark)
    }
}
