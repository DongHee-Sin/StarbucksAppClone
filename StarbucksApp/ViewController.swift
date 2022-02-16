//
//  ViewController.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/13.
//

import UIKit

class ViewController: UIViewController, ProductDataDelegate {
    
    // MARK: - 상품 버튼들 연결
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var b: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var d: UIButton!
    @IBOutlet weak var e: UIButton!
    @IBOutlet weak var f: UIButton!
    @IBOutlet weak var g: UIButton!
    @IBOutlet weak var h: UIButton!
    @IBOutlet weak var i: UIButton!
    @IBOutlet weak var j: UIButton!
    @IBOutlet weak var k: UIButton!
    @IBOutlet weak var l: UIButton!
    @IBOutlet weak var m: UIButton!
    @IBOutlet weak var n: UIButton!
    @IBOutlet weak var o: UIButton!
    @IBOutlet weak var p: UIButton!
    
    
    
    // MARK: - User Default
    var isPopUpOn: Bool = true
    
    
    
    // 버튼이 눌린 상품의 이름을 저장하는 변수
    var touchedProductName: String?
    
    
    // MARK: - Delegate Protocol 함수
    func getProductName() -> String {
        if let noneOptionalName = touchedProductName {
            return noneOptionalName
        }else {
            return ""
        }
    }
    
    
    // MARK: - 버튼이 눌리면 동작할 함수
    @objc func testMethod(_ sender: UIButton) {
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - 팝업View 띄우기
        isPopUpOn = UserDefaults.standard.bool(forKey: "popUpSwitch")
        if isPopUpOn == true {
            guard let popUpView = storyboard?.instantiateViewController(withIdentifier: "popUpView") as? PopUpViewController else {
                return
            }
            
            self.navigationController?.pushViewController(popUpView, animated: false)
        }
        
        print(UserDefaults.standard.bool(forKey: "popUpSwitch"))
        
        // MARK: - 버튼들 Target 지정
        a.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        b.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        c.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        d.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        e.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        f.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        g.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        h.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        i.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        j.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        k.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        l.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        m.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        n.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        o.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
        p.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
    }
}

