//
//  UIButton.swift
//  UsingUIViewIntoSwiftUIProject
//
//  Created by Paradox Space Rumy M1 on 26/8/21.
//

import SwiftUI

struct Button: UIViewRepresentable {
    @Binding var count: Int
    
    class Coordinator: NSObject {
        var parent: Button
        init(_ btn: Button) {
            self.parent = btn
        }
        
        @objc func changeCount(){
            parent.count += 1
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = UIColor.red
        btn.addTarget(context.coordinator, action: #selector(Coordinator.changeCount), for: .touchUpInside)
        return btn
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        uiView.setTitle("Count = \(count)", for: .normal)
    }
}

struct UIButton_Previews: PreviewProvider {
    static var previews: some View {
        Button(count: .constant(12)).previewLayout(.fixed(width: 200, height: 50))
    }
}
