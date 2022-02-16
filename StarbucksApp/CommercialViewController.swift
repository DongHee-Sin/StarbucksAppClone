//
//  CommercialViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import UIKit

class CommercialViewController: UIViewController {
    
    @IBOutlet weak var titleView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 제목View 테두리 지정
        titleView.layer.borderWidth = 1
        titleView.layer.borderColor = UIColor(red: 44, green: 43, blue: 42, alpha: 1).cgColor
    }
}
