//
//  ContentView.swift
//  Flashzilla
//
//  Created by Ahmed Juvale on 8/18/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Hello")

            Spacer()
                .frame(height: 100)

            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("Vstack tapped!")
        }
    }
}

#Preview {
    ContentView()
}
