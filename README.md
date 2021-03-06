# 개발 환경
ios에서 사용할수 있는 언어로 Swift 언어를 이용하여 제작을 했다.

# 용도
  집 밖에 있을 때 냉장고에 뭐가 있는지 확인을 해주고 뭐가 들어 있는지 체크를 할수 있고
  장을 보러 갈때 부족한 재료들을 대형마트에서 온라인 으로 주문을 할 수 있고 주변 위치를 확인할 수 있다

# 이용 대상
  2~30대 자취상 또는 냉장고를 관리를 잘 못하고 장보러 갔을때 실수로 있는 물건을 또 사는 사람

# 제작 의도
  자취를 하다 보니 냉장고에 무엇이 들어있는지 잘 모르고 있던 재료를 또 사게 되거나 냉장고 구석에 있어 재료를 못찾고 유통기간이 지났던 경험을 바탕으로 그러한 일을 줄이기 위해 제작을 했다.
  
# 구현기술
  UI: LanuchScreen을 이용하여 로딩 화면 제작, Tabpar를 이용한 Main Scene제작, Navigationbar를 이용한 테이블 만들기, Date Picker를 이용하여 유통기간과 구입 일자 선택, Webview를 이용하여 youtube,googleMap 등 url을 앱 내에서 작동 시키기 위해<br>
  DataStorage: Archiving을 이용하여 데이터를 저장및 불러오기 

# 특징
  음식과 유통기간 구입 날짜를 적어 저장해 주는 부분은 다른 앱과 같으나 
  그 음식을 이용한 요리 법들을 Youtube url로 연결 함으로서 쉽게 요리를 배우면서 할 수 있다.
  Google Map을 이용하여 주변 편의점 또는 마트이 위치를 표시
  대형 마트의 홈페이지를 연결해 주면서 필요한 음식을 주문

# 구현하면서 어려웠던 점
  데이터를 저장하는 Archiving 부분
  음식이 바뀔 때마다 url을 바꿔주는 부분에서 Encoder 해주는 부분
  Info.plist를 수정하여 https 뿐만이 아니라 http를 웹 뷰로 띄워주는 부분

# Main UI
 ![image](https://user-images.githubusercontent.com/38156821/43880950-7b2dd052-9be5-11e8-84a6-7f3aa31c5ff5.png)
 ![image](https://user-images.githubusercontent.com/38156821/43881274-a5baa25e-9be6-11e8-8ad2-3db48947b23d.png)
![image](https://user-images.githubusercontent.com/38156821/43881285-aca3ed46-9be6-11e8-92a2-d40c4dff6a45.png)
![image](https://user-images.githubusercontent.com/38156821/43881289-b03ad0d2-9be6-11e8-8463-264d8fe554c9.png)
![image](https://user-images.githubusercontent.com/38156821/43881294-b2a5e7a8-9be6-11e8-9b17-7825fdaff727.png)

# 냉장고 기능 UI
![image](https://user-images.githubusercontent.com/38156821/43881384-fe3f3d9a-9be6-11e8-8f48-642a491b2ccc.png)

# 편의점 및 마트 위치 UI
![image](https://user-images.githubusercontent.com/38156821/43881440-28296626-9be7-11e8-8355-b9209bb61aba.png)

# 온라인 쇼핑 UI
![image](https://user-images.githubusercontent.com/38156821/43881540-768913ac-9be7-11e8-997c-b4d27a45ba7a.png)
