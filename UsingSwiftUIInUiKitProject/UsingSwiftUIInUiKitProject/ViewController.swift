//
//  ViewController.swift
//  UsingSwiftUIInUiKitProject
//
//  Created by Paradox Space Rumy M1 on 26/8/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func loadSwiftUI(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: TestSwiftUIView())
    }
    
}

