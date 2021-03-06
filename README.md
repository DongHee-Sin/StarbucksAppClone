# 라이징캠프 2주차 과제
#### 클론코딩 어플 : 스타벅스
#### 기간: 2022/02/12 ~ 2022/02/19
[실행영상](https://drive.google.com/file/d/1ty5JIaVsDDYafQCLGgr7zTxrTw95skr4/view?usp=sharing)

<br/>

## 생명주기를 활용한 앱 클론 프로그래밍
### 조건
* 화전 전환 및 데이터 전달을 포함한다.
* App / Scene / View 생명주기를 최대한 다양하게 활용한다. (최소 각각 1개 이상)

<br/>

### 구현된 기능
* 팝업광고 : UserDefault를 사용하여 팝업광고의 "다시보지않기" 구현
* 상품 이미지, 주문하기 버튼 등 View를 전환하는 액션이 발생하면 Delegate패턴을 사용하여 필요한 데이터를 전달
* 상품 정보에서 HOT/ICED 버튼을 Togle할 수 있음 (토글되면 상품 이미지, 설명 등 정보를 업데이트)
* 음료 사이즈, 컵선택을 SegmentControl을 사용하여 선택할 수 있고, 사이즈에 맞는 가격으로 금액 업데이트
* +, - 버튼으로 상품 수량 변경 & 수량에 맞는 가격으로 금액 업데이트
* 상품의 찜하기 버튼을 클릭하면 UserDefault로 저장
* SegmentControl과 ContainerView를 사용하여 상단탭 구현
* App Switcher 상태에서는 스타벅스 로고 이미지가 나오도록 설정
* 

<br/>

### 구현된 화면
* 팝업 View
* Home View (메인화면)
* Pay View
* Order View (상단탭 구현)
  * 음료탭
  * 푸드탭
  * 상품탭
  * 추천상품 리스트 View

* Gift View
* Other View
* 상품정보 View
* 주문 View
* 결제 View
* 이벤트&뉴스 View
