//
//  ContentView.swift
//  Flashzilla
//
//  Created by Ahmed Juvale on 8/18/25.
//

import SwiftUI
import Combine

struct ContentView: View {
    @Environment(\.scenePhase)
    var scenePhase

    var body: some View {
        Text("Hello World!")
            .onChange(of: scenePhase) { oldPhase, newPhase in
                if newPhase == .active {
                    print("Active")
                } else if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .background {
                    print("Background")
                }
            }
    }
}

#Preview {
    ContentView()
}
