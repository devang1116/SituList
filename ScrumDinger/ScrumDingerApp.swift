//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Devang Papinwar on 14/10/21.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
