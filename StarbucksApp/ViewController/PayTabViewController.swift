//
//  PayTabViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/17.
//

import UIKit

class PayTabViewController: MainViewController {
    
    @IBOutlet weak var cardInfoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addShadow(cardInfoView, color: UIColor.lightGray.cgColor, width: 0, height: 10, alpha: 0.7, radius: 10)
    }
}
