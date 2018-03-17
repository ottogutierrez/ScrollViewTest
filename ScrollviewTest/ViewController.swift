//
//  ViewController.swift
//  ScrollviewTest
//
//  Created by Otto Gutierrez on 2018-03-15.
//  Copyright © 2018 Otto Gutierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    let scrollView: UIScrollView = {
        let scView = UIScrollView()
        // Basic configuration for the Scroll View
        scView.backgroundColor = UIColor.red
        scView.isScrollEnabled = true
        scView.bounces = false
        scView.translatesAutoresizingMaskIntoConstraints = false
        return scView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addScrollView()
        // Add extra views to the scroll view
        addExtraViews()
        
    }
    
 
    func addScrollView() {
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: view.frame.size.width-10, height: 1500)
        // Autolayout for the scroll view
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant:5).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant:-5).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant:5).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }
    
    func addExtraViews() {
        // Add a normal UIView
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(blueView)
        // Autolayout for the  blue view
        blueView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        blueView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        // Start adding internal views for the stack view
        let stcView1 = UIView()
        stcView1.backgroundColor = UIColor.white
        
        let stcView2 = UIView()
        stcView2.backgroundColor = UIColor.lightGray
        
        // Create the stackview
        let stackView = UIStackView(arrangedSubviews: [stcView1, stcView2])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.isUserInteractionEnabled = false
        scrollView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        // Autolayout for the stackview
        stackView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 40).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        // Add a last normal UIView
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(greenView)
        
        greenView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        greenView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        greenView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }


}

