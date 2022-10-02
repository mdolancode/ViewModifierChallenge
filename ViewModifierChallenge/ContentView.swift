//
//  ContentView.swift
//  ViewModifierChallenge
//
//  Created by Matthew Dolan on 2022-10-02.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .title()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
