//
//  RecommendListViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/19.
//

import UIKit

class RecommendListViewController: MainViewController {
    
    // MARK: - 상품 버튼들 연결
    @IBOutlet weak var a: UIButton!
    
    
    
    
    
    @IBAction func forBackButtonTouched(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a.addTarget(self, action: #selector(didProductButtonTouched(_:)), for: .touchUpInside)
    }
}
