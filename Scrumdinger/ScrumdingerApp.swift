//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by sy-hash on 2023/01/28.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
