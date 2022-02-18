//
//  OrderViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import UIKit

class OrderViewController: MainViewController {
    
    // MARK: - UI 연결
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: CustomLabel!
    @IBOutlet weak var orderCount: UILabel!
    
    @IBOutlet weak var hearImage: UIImageView!
    
    
    // 찜하기 버튼
    @IBAction func didHeartButtonTouched(_ sender: UIButton) {
        if isUserLikeProduct[productName.text!]! == false {
            hearImage.image = UIImage(named: "heartSelected.jpeg")
            isUserLikeProduct[productName.text!]! = true
        }else {
            hearImage.image = UIImage(named: "heartNomal.jpeg")
            isUserLikeProduct[productName.text!]! = false
        }
    }
    
    // 기준 금액
    var basePrice: Int?
    
    
    // 주문할 금액 (다 계산된거)
    var orderPrice: Int?
    
    @IBAction func minusButton(_ sender: UIButton) {
        let currentCount: Int = Int(orderCount.text!)!
        if currentCount > 1 {
            orderCount.text = String(currentCount-1)
            updateOrderPrice()
            updateOrderButtonText()
        }
    }
    @IBAction func plusButton(_ sender: UIButton) {
        orderCount.text = String(Int(orderCount.text!)!+1)
        updateOrderPrice()
        updateOrderButtonText()
    }
    
    
    
    // 그림자 넣기 위한 실선
    @IBOutlet weak var footerLine: UIView!
    // 헤더부분 실선
    @IBOutlet weak var headerLine: UIView!
    
    // delegate
    var delegate: ProductDataDelegate?
    
    // 버튼 스타일 지정 위한 연결
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var putInButton: UIButton!
    
    
    // MARK: - Segmented Control
    // 음료 사이즈 Segmented Control
    @IBOutlet weak var drinkSizeImage: UIImageView!
    @IBAction func chooseDrinkSize(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            drinkSizeImage.image = UIImage(named: "Short.jpg")
            basePrice = productPriceDictionary[productName.text!]!
            updateOrderPrice()
            updateOrderButtonText()
        case 1:
            drinkSizeImage.image = UIImage(named: "Tall.jpg")
            basePrice = productPriceDictionary[productName.text!]! + 500
            updateOrderPrice()
            updateOrderButtonText()
        case 2:
            drinkSizeImage.image = UIImage(named: "Grande.jpg")
            basePrice = productPriceDictionary[productName.text!]! + 1000
            updateOrderPrice()
            updateOrderButtonText()
        default:
            drinkSizeImage.image = UIImage(named: "Venti.jpg")
            basePrice = productPriceDictionary[productName.text!]! + 1500
            updateOrderPrice()
            updateOrderButtonText()
        }
    }
    
    // 컵 선택 Segmented Control
    @IBOutlet weak var chooseCupImage: UIImageView!
    @IBAction func chooseCupButton(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            chooseCupImage.image = UIImage(named: "매장컵.jpeg")
        case 1:
            chooseCupImage.image = UIImage(named: "개인컵.jpeg")
        default:
            chooseCupImage.image = UIImage(named: "일회용컵.jpeg")
        }
    }
    
    
    
    // 주문금액 업데이트하는 함수
    func updateOrderPrice() {
        orderPrice = basePrice! * Int(orderCount.text!)!
    }
    
    
    // 주문하기 버튼의 금액 업데이트하는 함수
    func updateOrderButtonText() {
        productPrice.text = DecimalWon(value: orderPrice!)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 주문하기 버튼 addTarget
        orderButton.addTarget(self, action: #selector(didTouchedButtonToPayment), for: .touchUpInside)
        
        
        // UI 업데이트
        guard let productVC = delegate as? ProductInfoViewController else {
            return
        }
        let toOrderProductName = productVC.delegate?.getProductName()
        productName.text = toOrderProductName!
        basePrice = productPriceDictionary[toOrderProductName!]!
        productPrice.text = DecimalWon(value: basePrice!)
        
        // 찜하기 버튼 UI 업데이트
        if isUserLikeProduct[productName.text!]! == false {
            hearImage.image = UIImage(named: "heartNomal.jpeg")
        }else {
            hearImage.image = UIImage(named: "heartSelected.jpeg")
        }
        
        
        
        
        // UI 세팅
        addBorderToUIView(footerLine, size: 1, color: UIColor.lightGray.cgColor)
        addBorderToUIButton(putInButton, size: 1, color: UIColor(red: 18/255, green: 166/255, blue: 104/255, alpha: 1).cgColor)
        addRadiusToUIButton(orderButton, size: 20)
        addRadiusToUIButton(putInButton, size: 20)
        addRadiusToUIView(headerLine, size: 3)
    }
}
