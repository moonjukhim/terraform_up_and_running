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

** 이 예제는 실제 리소스를 AWS 계정에 배포합니다. 모든 리소스가 AWS 프리 티어에 적합한 지 확인하기 위해 모든 노력을 기울 였지만 발생할 수있는 비용에 대해서는 책임지지 않습니다. ** 

Configure your [AWS access keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as 
environment variables:

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