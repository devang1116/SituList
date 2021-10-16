//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 14/10/21.
//

import SwiftUI

@main
struct ScrumDingerApp: App
{
    @StateObject private var modelData = ModelData()
    let persistenceController = PersistenceController.shared

    var body: some Scene
    {
        WindowGroup
        {
            ContentView().environmentObject(modelData)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
