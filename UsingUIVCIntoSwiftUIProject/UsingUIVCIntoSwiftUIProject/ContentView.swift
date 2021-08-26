//
//  ContentView.swift
//  UsingUIVCIntoSwiftUIProject
//
//  Created by Paradox Space Rumy M1 on 26/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented = false
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: ViewControllerRepresentation()) { Text("Click to load") }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
