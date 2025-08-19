//
//  ContentView.swift
//  Flashzilla
//
//  Created by Ahmed Juvale on 8/18/25.
//

import SwiftUI
import Combine


func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct ContentView: View {
    // Color blindness Accesibility mode
//    @Environment(\.accessibilityDifferentiateWithoutColor)
//    var accessibilityDifferentiateWithoutColor
//
//    var body: some View {
//        HStack {
//            if accessibilityDifferentiateWithoutColor {
//                Image(systemName: "checkmark.circle")
//            }
//
//            Text("Success")
//        }
//        .padding()
//        .background(accessibilityDifferentiateWithoutColor ? .black : .green)
//        .foregroundStyle(.white)
//        .clipShape(.capsule)
//    }

    // Reduce motion
//    @Environment(\.accessibilityReduceMotion)
//    var accessibilityReduceMotion
//
//    @State
//    private var scale = 1.0
//
//    var body: some View {
//        Button("Hello, world!") {
//            withOptionalAnimation {
//                scale *= 1.5
//            }
//        }
//        .scaleEffect(scale)
//    }

    // Reduce transparency
    @Environment(\.accessibilityReduceTransparency)
    var accessibilityReduceTransparency

    @State
    private var scale = 1.0

    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(accessibilityReduceTransparency ? .black : .black.opacity(0.5))
            .foregroundStyle(.white)
            .clipShape(.capsule)
    }
}

#Preview {
    ContentView()
}
