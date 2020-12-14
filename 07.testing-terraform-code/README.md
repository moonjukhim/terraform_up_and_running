# 7장. 테라폼 코드 테스트

## 7.1 수동 테스트

## 7.2 자동 테스트

## 7.3 결론

---

자습서: AWS Cloud9의 Ruby

https://docs.aws.amazon.com/ko_kr/cloud9/latest/user-guide/tutorial-ruby.html

    1단계 : 필수 도구 설치

    2단계 : 코드 추가

    3단계 : 코드 실행

    4단계 : Ruby용 AWS SDK 설치 및 구성

    5단계 : AWS SDK 코드 추가

    6단계 : AWS SDK 코드 실행

    7단계 : 정리

---

테라테스트(Terratest)

테라테스트를 사용하려면 다음을 수행해야 합니다.

    1. 다음의 내용을 확인하고 고를 설치합니다(Cloud9에는 이미 설치되어 있습니다.)

    2. GOPATH 환경 변수를 구성합니다.

    3. PATH 환경 변수에 $GOPATH/bin을 추가합니다.

    4. 테스트 코드를 위해 GOPATH내에 폴더를 생성합니다.

    5. 방금 만든 폴더에서 dep init 명령어를 실행합니다. 명령을 실행하면 Gopkg.toml, Gopkg.lock 및 비어 있는 vendors 폴더가 생성됩니다.
