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
    "아이스 카페 라때": "에스프레소가 우유와 얼음을 만나 고소함과 시원함을 느낄 수 있는 카페 라때",
    "아이스 카페 아메리카노": "에스크레소에 정수물과 얼음을 더하여 부드럽고 시원하게 즐길 수 있는 커피",
    "콜드 브루": "스타벅스 바리스타의 정성으로 탄생한 콜드 브루!",
    "봄 딸기 라때": "상큼한 봄 딸기와 신선한 우유가 만나 부드럽고 달콤한 풍미를 느낄 수 있는 음료",
    "유자 민트 티": "달콤한 유자와 알싸하고 은은한 진저가 조화로운 유자 민트 티",
    "리저브 콜드 브루": "스타벅스 바리스타의 정성으로 탄생한 콜드 브루!",
    "스프링 가든 자스민 드링크": "맛보는 순간 달콤한 향이 가득한 정원에 있는 듯한 느낌을 주는 음료",
    "봄 딸기 그린 크림 프라푸치노": "말차의 쌉싸르함과 봄 딸기의 상큼함, 달콤한 바닐라 프라푸치노가 어우러진 음료"
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



var isUserLikeProduct: [String: Bool] = [
    "아이스 자몽 허니 블랙 티": false,
    "자몽 허니 블랙 티": false,
    "아이스 카페 라때": false,
    "아이스 카페 아메리카노": false,
    "콜드 브루": false,
    "봄 딸기 라때": false,
    "유자 민트 티": false,
    "리저브 콜드 브루": false,
    "스프링 가든 자스민 드링크": false,
    "봄 딸기 그린 크림 프라푸치노": false
]
