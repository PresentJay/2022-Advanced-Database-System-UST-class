# 2022-1학기 UST, 데이터베이스시스템 특론 수강기록

### Licensed: PresentJay (정현재, UST-ETRI)

해당 프로젝트 내 모든 코드는 자체 제작되었고, 관련 문의는 presentj94@gmail.com 또는 presentj94@etri.re.kr 으로 가능합니다.

또는 git Issue로 남겨주셔도 됩니다.

---
## Prerequisite

- Docker

(Tested) macOS Monterey v12.2.1
(Tested) Docker Desktop 4.3.0

---
## QuickStarts

[0] get helps of mariadb container
```Shell
sh start.sh --help
```

[1] start mariaDB container

<mark>if you want to change password or so, please check in "mariadDB"</mark>

```Shell
sh start.sh -u
```

(Result)

[alt docker-running](/settings/images/docker-running-state.png)


[2] access to mariaDB

<mark>initial data is in below (table:test, user:testuser, password:testpw</mark>
![alt ]


---

## Usages

[*] stop mariadb container (retaining data)
```Shell
sh start.sh -d
```

[*] cleaning data of mariadb container (must be after stop container)
```Shell
sh start.sh -c
```

[*] show logs of mariaDB container
```Shell
sh start.sh -l
```

---

### version note

- v1

   1. docker-compose yaml 작성
   2. start.sh 작성
   3. gitignore, README 초안 작성 
   4. UTF-8 setting
   
   ![alt utf-8 setting 증명](/settings/images/utf-8-confirm.png)
