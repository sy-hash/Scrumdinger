//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by sy-hash on 2023/01/28.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
