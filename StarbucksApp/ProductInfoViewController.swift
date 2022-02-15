//
//  ProductInfoViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/15.
//

import UIKit


class ProductInfoViewController: UIViewController {
    
    @IBOutlet weak var hotOrIced: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Segmented Control 세팅
        hotOrIced.backgroundColor = .white
        hotOrIced.selectedSegmentTintColor = .orange
        
    }
}
