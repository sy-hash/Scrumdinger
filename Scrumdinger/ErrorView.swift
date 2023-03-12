//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by sy-hash on 2023/03/12.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text("An error has occurred!")
                .font(.title)
                .padding(.bottom)
            Text(errorWrapper.error.localizedDescription)
                .font(.headline)
            Text(errorWrapper.guidance)
                .font(.caption)
                .padding(.top)
            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(16)
    }
}

struct Error_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }

    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error.")
    }

    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}
