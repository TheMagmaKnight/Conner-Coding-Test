//
//  Conner_Coding_TestApp.swift
//  Conner Coding Test
//
//  Created by Conner Donnelly on 7/27/22.
//

import SwiftUI

@main
struct Conner_Coding_TestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
