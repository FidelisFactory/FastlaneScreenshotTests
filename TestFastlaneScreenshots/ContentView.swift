//
//  ContentView.swift
//  TestFastlaneScreenshots
//
//  Created by Sandro Meier on 13.10.21.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Hello"
    var body: some View {
        let textfield = TextField("Foo", text: $name)
        textfield.accessibilityIdentifier("field")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
