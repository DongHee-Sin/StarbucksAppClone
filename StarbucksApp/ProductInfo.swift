//
//  ProductInfo.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/15.
//

import Foundation
import UIKit

let productEnglishNameDictionary: [String: String] = [
    "아이스 자몽 허니 블랙 티": "Iced Grapefruit Honey Black Tea",
    "자몽 허니 블랙 티": "Grapefruit Honey Black Tea",
    "아이스 카페 라때": "Iced Caffe Latte",
    "아이스 카페 아메리카노": "Iced Caffe Americano",
    "콜드 브루": "Cold Brew",
    "봄 딸기 라때": "Spring Strawberry Milk",
    "유자 민트 티": "Yuja Mint Tea",
    "리저브 콜드 브루": "Reserve Cold Brew",
    "스프링 가든 자스민 드링크": "Spring Garden Jasmine Drink",
    "봄 딸기 그린 크림 프라푸치노": "Spring Strawberry Green Cream Frappuccino"
]


let productInfoDictionary: [String: String] = [
    "아이스 자몽 허니 블랙 티": "새콤한 자몽과 달콤한 꿀이 깊고 그윽한 풍미의 스타벅스 티바나 블랙 티의 조화",
    "자몽 허니 블랙 티": "새콤한 자몽과 달콤한 꿀이 깊고 그윽한 풍미의 스타벅스 티바나 블랙 티의 조화",
    "아이스 카페 라때": "샷넣고 우유넣고 얼음넣으면 완성",
    "아이스 카페 아메리카노": "가성비는 가장 구리지만 제일 많이 찾게되는 마성의 검정 액체",
    "콜드 브루": "아아가 가성비가 구리다면 콜드브루를 먹어보자. 똑같이 까만데 얘는 만드는데 오래 걸리니깨",
    "봄 딸기 라때": "라때는 말이야... 봄에 말이야..",
    "유자 민트 티": "반민초파는 유자 민트도 싫어하나?",
    "리저브 콜드 브루": "뭐가 다른가 담에 꼭 먹어보고싶은 리저브",
    "스프링 가든 자스민 드링크": "자스민 스멜 이즈 베리 나이쓰",
    "봄 딸기 그린 크림 프라푸치노": "말차의 쌉싸름과 봄 딸기의 상큼함, 달콤한 바닐라 프라푸치노가 어우러진 다양한 매력을 가진 프라푸치노"
]



let productPriceDictionary: [String: Int] = [
    "아이스 자몽 허니 블랙 티": 5700,
    "자몽 허니 블랙 티": 5700,
    "아이스 카페 라때": 5000,
    "아이스 카페 아메리카노": 4300,
    "콜드 브루": 4900,
    "봄 딸기 라때": 6900,
    "유자 민트 티": 5900,
    "리저브 콜드 브루": 6500,
    "스프링 가든 자스민 드링크": 6600,
    "봄 딸기 그린 크림 프라푸치노": 6900
]


let productIsHot: [String: Bool] = [
    "아이스 자몽 허니 블랙 티": false,
    "자몽 허니 블랙 티": true,
    "아이스 카페 라때": false,
    "아이스 카페 아메리카노": false,
    "콜드 브루": false,
    "봄 딸기 라때": false,
    "유자 민트 티": true,
    "리저브 콜드 브루": false,
    "스프링 가든 자스민 드링크": false,
    "봄 딸기 그린 크림 프라푸치노": false
]
