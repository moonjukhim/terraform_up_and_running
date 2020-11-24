# 테라폼 "Hello, World" 예제

This folder contains a "Hello, World" example of a [Terraform](https://www.terraform.io/) configuration. 
The configuration deploys a single server in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). 

For more info, please see the preface of *[Terraform: Up and Running](http://www.terraformupandrunning.com)*.

## 선수 필요 항목

* [Terraform](https://www.terraform.io/) 에서 테라폼을 다운로드 받아 설치. 
* [Amazon Web Services (AWS)](http://aws.amazon.com/) 계정 생성.

해당 코드는 Terraform 0.12.x에서 작성되었습니다.

## 시작하기

**Please note that this example will deploy real resources into your AWS account. We have made every effort to ensure 
all the resources qualify for the [AWS Free Tier](https://aws.amazon.com/free/), but we are not responsible for any
charges you may incur.** 

Configure your [AWS access 
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as 
environment variables:

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
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