//
//  DrinkListViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/19.
//

import UIKit

class DrinkListViewController: MainViewController {
    
    @IBOutlet weak var recomendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // addTarget
        recomendButton.addTarget(self, action: #selector(didRecommendButtonTouched), for: .touchUpInside)
    }
}
