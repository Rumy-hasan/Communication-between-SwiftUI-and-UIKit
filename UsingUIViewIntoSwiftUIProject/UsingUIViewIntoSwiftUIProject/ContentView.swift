//
//  ContentView.swift
//  UsingUIViewIntoSwiftUIProject
//
//  Created by Paradox Space Rumy M1 on 26/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var count = 10
    var body: some View {
        VStack{
            Text("\(count)")
                .padding()
            Button(count: $count)
                .frame(width: 200, height: 50, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
