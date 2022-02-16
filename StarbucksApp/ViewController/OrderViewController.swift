//
//  OrderViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import UIKit

class OrderViewController: MainViewController {
    
    // 그림자 넣기 위한 실선
    @IBOutlet weak var footerLine: UIView!
    
    
    // delegate
    var delegate: ProductDataDelegate?
    
    
    // 버튼 스타일 지정 위한 연결
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var putInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBorderToUIView(footerLine, size: 1, color: UIColor.lightGray.cgColor)
        addBorderToUIButton(putInButton, size: 1, color: UIColor(red: 18/255, green: 166/255, blue: 104/255, alpha: 1).cgColor)
        addRadiusToUIButton(orderButton, size: 15)
        addRadiusToUIButton(putInButton, size: 15)
    }
}
