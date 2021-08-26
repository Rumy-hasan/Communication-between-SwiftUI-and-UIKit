//
//  TestSwiftUIView.swift
//  UsingSwiftUIInUiKitProject
//
//  Created by Paradox Space Rumy M1 on 26/8/21.
//

import SwiftUI

struct TestSwiftUIView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.green)
            Text("I will present 2 circle")
            Circle()
                .fill(Color.red)
        }
    }
}

struct TestSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestSwiftUIView()
            .previewLayout(.sizeThatFits)
    }
}
