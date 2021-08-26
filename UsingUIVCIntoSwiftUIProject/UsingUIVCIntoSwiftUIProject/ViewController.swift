//
//  ViewController.swift
//  UsingUIVCIntoSwiftUIProject
//
//  Created by Paradox Space Rumy M1 on 26/8/21.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


struct ViewControllerRepresentation: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController {
        UIStoryboard(name: "TestUI", bundle: nil).instantiateViewController(withIdentifier: String(describing: ViewController.self))
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct ViewControllerRepresentation_Preview: PreviewProvider {
    static var previews: some View{
        ViewControllerRepresentation()
    }
}
