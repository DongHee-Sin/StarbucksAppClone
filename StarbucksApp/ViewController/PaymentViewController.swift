//
//  PaymentViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/17.
//

import UIKit

class PaymentViewController: MainViewController {
    
    // delegate
    var delegate: ProductDataDelegate?
    
    
    // dismissButton
    @IBAction func didDismissButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // UI 연결
    @IBOutlet weak var paymentButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRadiusToUIButton(paymentButton, size: 20)
        
        
        // MARK: - UI 업데이트
        
        // orderVC 가져오기
        guard let orderVC = delegate as? OrderViewController else {
            return
        }
        
        // productInfoVC 가져오기
        guard let productVC = orderVC.delegate as? ProductInfoViewController else {
            return
        }
        
        // 주문할 제품 이름 가져오기
        guard let toPaymentProductName = productVC.delegate?.getProductName() else {
            return
        }
        
        
    }
}
