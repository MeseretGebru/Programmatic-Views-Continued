//
//  CustomView.swift
//  Programmatic View Continued
//
//  Created by Richard Crichlow on 1/4/18.
//  Copyright © 2018 Richard Crichlow. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.backgroundColor = .red
        
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let imageViewObject = UIImageView()
        
        return imageViewObject
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    convenience init(image: UIImage,
                     text: String,
                     backgroundColor: UIColor,
                     textColor: UIColor,
                     labelBackgroundColor: UIColor
        ) {
        self.init(frame: UIScreen.main.bounds)
        self.imageView.image = image
        self.nameLabel.text = text
        self.nameLabel.backgroundColor = labelBackgroundColor
        self.backgroundColor = backgroundColor
        self.nameLabel.textColor = textColor
        
        
        setupViews()
    }
    
    private func commonInit() {
        backgroundColor = .green
        
        setupViews()
    }
    
    private func setupViews() {
        setupContainerView()
        setupNameLabel()
        setupImageView()
        
    }
    
    private func setupContainerView() {
        self.addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false //Tell the compiler that you are responsible for the constraints
        
        //Constraints by default are false. You have to TELL it to be true or it won't work
        containerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.75).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        
    }
    private func setupNameLabel() {
        self.addSubview(nameLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 16).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.numberOfLines = 0
        nameLabel.textAlignment = .center

    }
    
    private func setupImageView() {
        self.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        imageView.contentMode = .scaleAspectFit
    }
    
}
