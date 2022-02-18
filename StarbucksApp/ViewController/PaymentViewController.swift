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
    @IBOutlet weak var toPaymentProductImage: UIImageView!
    @IBOutlet weak var toPaymentProductName: UILabel!
    @IBOutlet weak var orderPrice: CustomLabel!
    @IBOutlet weak var finalPrice: CustomLabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRadiusToUIButton(paymentButton, size: 17)
        
        
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
        guard let receivedProductName = productVC.delegate?.getProductName() else {
            return
        }
        // 주문금액 가져오기
        guard let receivedOrderPrice = orderVC.orderPrice else {
            return
        }
        
        
        toPaymentProductImage.image = UIImage(named: "\(receivedProductName) 누끼.png")
        toPaymentProductName.text = "\(receivedProductName) / \(orderVC.selectedCupSize!) / \(orderVC.orderCount.text!)"
        orderPrice.text = DecimalWon(value: receivedOrderPrice)
        finalPrice.text = DecimalWon(value: receivedOrderPrice)
        paymentButton.setTitle("\(finalPrice.text!) 결제하기", for: .normal)
    }
}
