//
//  MainViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/16.
//

import Foundation
import UIKit



class MainViewController: UIViewController, ProductDataDelegate {
    
    // MARK: - Delegate Protocol
    var touchedProductName: String?
    func getProductName() -> String {
        if let noneOptionalName = touchedProductName {
            return noneOptionalName
        }else {
            return ""
        }
    }
    
    
    
    
    
    // MARK: - 버튼이 눌리면 동작할 함수
    
    // 상품 버튼
    @objc func didProductButtonTouched(_ sender: UIButton) {
        // 선택된 상품의 이름을 가져와서 변수에 저장
        guard let productName = sender.superview?.subviews[1] as? UILabel else {
            return
        }
        touchedProductName = productName.text ?? ""
        
        // 뷰 연결, delegate지정
        guard let productView = storyboard?.instantiateViewController(withIdentifier: "productView") as? ProductInfoViewController else {
            return
        }
        productView.delegate = self
        
        self.navigationController?.pushViewController(productView, animated: true)
    }
    
    // 광고 버튼
    @objc func didCommercialButtonTouched() {
        guard let commercialView = storyboard?.instantiateViewController(withIdentifier: "commercialView") as? CommercialViewController else {
            return
        }
        self.navigationController?.pushViewController(commercialView, animated: true)
    }
    
    // 주문하기 버튼
    @objc func didOrderButtonTouched() {
        guard let orderView = storyboard?.instantiateViewController(withIdentifier: "orderView") as? OrderViewController else {
            return
        }
        orderView.delegate = self
        
        self.present(orderView, animated: true, completion: nil)
    }
    
    // 결제창 이동하는 버튼
    @objc func didTouchedButtonToPayment() {
        guard let paymentView = storyboard?.instantiateViewController(withIdentifier: "paymentView") as? PaymentViewController else {
            return
        }
        paymentView.delegate = self
        
//        self.navigationController?.pushViewController(paymentView, animated: true)
        self.present(paymentView, animated: true, completion: nil)
    }
    
    
    
    // MARK: - UIView
    
    // 테두리 추가
    func addBorderToUIView(_ to: UIView, size: CGFloat, color: CGColor) {
        to.layer.borderWidth = size
        to.layer.borderColor = color
    }
    
    // Radius 추가
    func addRadiusToUIView(_ to: UIView, size: CGFloat) {
        to.layer.cornerRadius = size
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
    func popView(animation: Bool) {
        self.navigationController?.popViewController(animated: animation)
    }
    
    
    
    
    
    // MARK: - TabBar Controller
    func tabBarControllerHidden() {
        tabBarController?.tabBar.isHidden = true
    }
    
    
    
    
    
    // MARK: - 숫자 -> 콤마찍어서 문자열 반환
    func DecimalWon(value: Int) -> String{
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let result = numberFormatter.string(from: NSNumber(value: value))! + "원"
            return result
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
