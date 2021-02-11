# 7장. 테라폼 코드 테스트

## 7.1 수동 테스트

## 7.2 자동 테스트

## 7.3 결론

---

테스트를 진행하기 위한 준비사항

1. yum repository 업데이트

```bash
sudo yum -y update
```

2. goenv 설정(설치)

```bash
git clone https://github.com/syndbg/goenv.git ~/.goenv
```

3. 환경 변수 설정

```bash
# To append to ~/.Bashrc 
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
```

4. .baschrc 적용

```bash
source ~/.bashrc
```

5. goenv 테스트

```bash
goenv -v

# goenv 2.0.0beta11
```

6. go 설치

```bash
goenv install -l
goenv install 1.15.5
```

7. 사용될 go 버전 체크(cloud9의 경우 1.15.5가 설치되어 있음)

```bash
goenv versions
goenv global 1.15.5
goenv rehash
```

8. go 버전 확인

```bash
go version
# go version go1.15.5 linux/amd64
```

9. 환경변수에 GOPATH 설정 (~/.bashrc에 설정)

```bash
# To append to ～/.Bashrc 
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
```

```bash
source ~/.bashrc
```

10. dep 설치

```bash
go get -u github.com/golang/dep/cmd/dep
mkdir -p $HOME/go/src/terraform-up-and-running
cd $HOME/go/src/terraform-up-and-running
dep init
```

11. 예제 코드 clone

```bash
cd ~
git clone https://github.com/moonjukhim/terraform_up_and_running.git
cp -rp terraform_up_and_running/07.testing-terraform-code/* /home/ec2-user/go/src/terraform-up-and-running/
```

12. 주의!!! 반드시 EC2의 볼륨 사이즈를 늘여야 함(ex.30GB)

```bash
sudo init 6
```

13. 테라테스트 종속성 라이브러리 다운로드

```bash
dep ensure -add github.com/gruntwork-io/terratest/modules/terraform@v0.15.9
```

14. MD generator 에러를 피하기 위해 Gopkg.toml에 다음의 내용 추가

```
[[override]]
  name = "github.com/russross/blackfriday"
  version = "1.5.2"
```

15. 필요한 종속성 다운로드

```bash
dep ensure
```

16. 테스트 수행

```bash
go test -v -timeout 30m
# go test -v -timeout 30m -run TestGoIsWorking
```

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


https://titanwolf.org/Network/Articles/Article?AID=67f37629-1096-4cb1-8372-862969ffb18a#gsc.tab=0
https://slacker.ro/2019/03/19/test-your-infrastructure-code-with-terratest/
