//
//  Exercise1ViewController.swift
//  Programmatic View Continued
//
//  Created by Richard Crichlow on 1/4/18.
//  Copyright © 2018 Richard Crichlow. All rights reserved.
//

import UIKit

class Exercise1ViewController: UIViewController {

    //let customView = CustomView(image: #imageLiteral(resourceName: "The_Dress"), text: "It's White and Gold", backgroundColor: .blue, textColor: .green)
    //A container view is also called a UIView
    
    let exercise1View = Exercise1View()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        //view.addSubview(customView)
        view.addSubview(exercise1View)

        
    }

    

}
