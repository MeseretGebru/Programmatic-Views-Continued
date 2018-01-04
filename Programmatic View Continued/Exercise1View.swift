//
//  Exercise1View.swift
//  Programmatic View Continued
//
//  Created by Richard Crichlow on 1/4/18.
//  Copyright © 2018 Richard Crichlow. All rights reserved.
//

import UIKit

class Exercise1View: UIView {

    // four custom views
    
    lazy var placeHolderView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "placeholder-image"), text: "PlaceHolder", backgroundColor: .green, textColor: .black, labelBackgroundColor: .purple)
        return view
    }()
    
    lazy var caramelView: CustomView = {
       let view = CustomView(image: #imageLiteral(resourceName: "caramel-wafer-pen-drawing-prints"), text: "CaramelWafer", backgroundColor: .white, textColor: .blue, labelBackgroundColor: .brown)
        return view
    }()
    
    lazy var dressView: CustomView = {
        let view = CustomView(image: #imageLiteral(resourceName: "The_Dress"), text: "Dress", backgroundColor: .blue, textColor: .white, labelBackgroundColor: .black)
        return view
    }()
    
    lazy var blackjackView: CustomView = {
    let view = CustomView(image: #imageLiteral(resourceName: "BlackJackicon"), text: "BlackJack", backgroundColor: .brown, textColor: .yellow, labelBackgroundColor: .white)
    return view
}()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupPlaceHolderView()
        setupCaramelView()
        setupDressView()
        setupBlackjackView()
        
    }
    
    private func setupPlaceHolderView() {
        addSubview(placeHolderView)
        placeHolderView.translatesAutoresizingMaskIntoConstraints = false
        placeHolderView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        placeHolderView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        placeHolderView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        placeHolderView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        
        
    }
    
    private func setupCaramelView() {
        addSubview(caramelView)
        caramelView.translatesAutoresizingMaskIntoConstraints = false
        caramelView.leadingAnchor.constraint(equalTo: placeHolderView.trailingAnchor).isActive = true
        caramelView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        caramelView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        caramelView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        
        
    }
    
    private func setupDressView() {
        addSubview(dressView)
        dressView.translatesAutoresizingMaskIntoConstraints = false
        dressView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        dressView.topAnchor.constraint(equalTo: placeHolderView.bottomAnchor).isActive = true
        dressView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        dressView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        
        
    }
    
    private func setupBlackjackView() {
        addSubview(blackjackView)
        blackjackView.translatesAutoresizingMaskIntoConstraints = false
        blackjackView.leadingAnchor.constraint(equalTo: dressView.trailingAnchor).isActive = true
        blackjackView.topAnchor.constraint(equalTo: caramelView.bottomAnchor).isActive = true
        blackjackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        blackjackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        
        
    }

}
