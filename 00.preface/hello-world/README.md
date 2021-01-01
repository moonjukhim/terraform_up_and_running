# 테라폼 "Hello, World" 예제

This folder contains a "Hello, World" example of a [Terraform](https://www.terraform.io/) configuration. 
The configuration deploys a single server in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). 

For more info, please see the preface of *[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## 선수 필요 항목

* [Amazon Web Services (AWS)](http://aws.amazon.com/) 계정 생성.
* [Terraform](https://www.terraform.io/) 에서 테라폼을 다운로드 받아 설치. 
    * a.테라폼을 로컬 PC에 설치 or
    * b.테라폼을 AWS 클라우드 내에 Cloud9에 설치

해당 코드는 Terraform 0.12.x에서 작성되었습니다.

## 시작하기

### 중요!!! 
이 예제는 실제 리소스를 AWS 계정에 배포합니다. 모든 리소스가 AWS 프리티어에 적합한지 확인하기 위해 모든 노력을 기울였지만 발생할 수 있는 비용에 대해서는 책임지지 않습니다. ** 

환경 변수에 [AWS access keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) 설정: 

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

Cloud9을 사용한다면...

```
mkdir Terraform
cd Terraform
wget https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip
unzip terraform_0.12.29_linux_amd64.zip
chmod 740 terraform
```

코드 배포:

```
terraform init
terraform apply
```

리소스 정리:

```
terraform destroy
```

---

Cloud9 사용하기

1. Management Console에서 Cloud9 서비스를 검색합니다.

![Cloud9 서비스 검색](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_000.jpg?raw=true)

2. 새로운 Environment를 생성합니다.

![New Environment](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_001.jpg?raw=true)

3. Environment에 적절한 이름을 지정합니다.

![Cloud9 서비스 검색](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_002.jpg?raw=true)

4. 설정 부분은 기본값으로 두고 Next Step을 클릭합니다.

![Cloud9 서비스 검색](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_003.jpg?raw=true)

5. 설정에 대한 부분을 확인하고 Create Environment를 클릭하여 환경을 생성합니다.

![Cloud9 서비스 검색](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_004.jpg?raw=true)

6. 얼마 후에 새로운 환경이 생성됩니다.

![Cloud9 서비스 검색](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_005.jpg?raw=true)

7. 다음과 같이 웹을 통해 IDE를 제공합니다.

![Cloud9 서비스 검색](https://github.com/moonjukhim/terraform_up_and_running/blob/master/00.preface/hello-world/img/terraform_cloud9_006.jpg?raw=true)
