# love_battery

기획

UI / 기능

1.상단부
    a.	며칠 됐는지
    b.	다음 약속까지 며칠 남았는지
    c.	헤어진 날 기준 며칠 지났는지
2. 메인
    a. 1-3번을 기반으로 변경되는 캐릭터
3. 하단
    a. 일정을 추가하는 기능
    b. 초기 데이터 수정 기능

구현방안
1.  사용자 핸드폰에 저장되어야 할 정보 
    A.	사귄 날
    B.	만난 날(과거,현재)
    C.	만날 날(미래)
2.	입력값을 기준으로 반환할 값.
    A.	며칠 됐는지
    B.	최근 만난 날 기준 며칠 지났는지
    C.	다음 데이트까지 며칠 남았는지
3.	하단 부 기능
    A.	환경 설정 ( 1-A날짜 수정, 회원탈퇴,)
    B.	평균 만남 주기(일)
    C.	데이트 날짜 리스트 뷰

# history

    2023-05-22
    - 기획안 작성 
    - UI TOP/Body/BOT 파일로 구분 및 top.dart 내 dDay 구하는 메서드 구현

    2023-05-23
    - 사용자에게 NextMeet 관련 정보를 받을 textField 구성 완료
    - TextField 내부 메서드 구현 완료
    - 추후 데이터 저장 관리 예정

    2023-05-26
    - 사용자 입력값을 저장하기 위한 shared preferences 패키지 사용방법 구상.
    - 저장 값 : 처음 만난 날짜, Map[다음 데이트(언제,어디서,무엇을)], => List<Map<String , String>> date 
    - 처음 만난 날짜 저장.

    2023-06-02
    - 저장소 값 dDay , firstDay 저장 완료
    - Provider 이슈 발생 원인 파악필요
---------------------------------------------
    2023-06-19
    - 프로젝트 재기획 : 
    초기 기획안 notion : https://www.notion.so/battery-f82cc7636c864be4b5b4a1b4deae796a?pvs=4
    - firebase 초기 구성 android gradle 수정

    2023-06-20
    - firebase 연동 이슈 발생  (activate flutterfire_cli 관련) => dart SDK 환경 변수 등록으로 해결

    2023-06-21
    - firebase 연동 이슈 발생  (flutterfire configure 관련) => git 설치 및 환경 변수 등록으로 해결
    
    2023-06-22
    - firebase RealTimeDB구성하는 방법 공부
    - firebase auth 관련 구글 로그인 기능 확인
    - 프로젝트 재기획 : 
    수정 기획안 notion : https://romantic-sort-239.notion.site/23-06-22-fc5ba0ce52424055bcacb0158d2d7982?pvs=4
    
    2023-06-23
    want to do
    - firebase_auth 패키지
    - google_login 패키지를 통해