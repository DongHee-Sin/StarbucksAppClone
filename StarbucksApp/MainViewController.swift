//
//  MainViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import Foundation
import UIKit



class MainViewController: UIViewController {
    
    // MARK: - UIView
    
    // 테두리 추가
    func addBorderToUIView(_ to: UIView, size: CGFloat, color: CGColor) {
        to.layer.borderWidth = size
        to.layer.borderColor = color
    }
    
    
    
    
    
    // MARK: - UIButton
    
    // 테두리 추가
    func addBorderToUIButton(_ to: UIButton, size: CGFloat, color: CGColor) {
        to.layer.borderWidth = size
        to.layer.borderColor = color
    }
    
    // Radius 추가
    func addRadiusToUIButton(_ to: UIButton, size: CGFloat) {
        to.layer.cornerRadius = size
    }
    
    
    
    
    
    // MARK: - Navigation Controller
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
