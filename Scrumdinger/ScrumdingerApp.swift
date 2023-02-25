//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by sy-hash on 2023/01/28.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
