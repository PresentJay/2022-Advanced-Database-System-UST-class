# 2022-1학기 UST, 데이터베이스시스템 특론 수강기록

### Licensed: PresentJay (정현재, UST-ETRI)

해당 프로젝트 내 모든 코드는 자체 제작되었고, 저작권은 "정현재"에게 있습니다.

관련 문의는 presentj94@gmail.com 또는 presentj94@etri.re.kr 또는 [git Issue](https://github.com/PresentJay/2022-Advanced-Database-System-UST-class/issues "이슈")로 남겨주셔도 됩니다.

---

## Prerequisite

- Docker
- Visual Studio Code
    - using extension: MySQL

![alt mysql_extension](/settings/images/vscode-extension-mysql.png)


[Tested]
- macOS Monterey v12.2.1
- Docker Desktop 4.3.0
- Visual Studio Code version 1.65
    - Extension
        - MySQL v4.7.8

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

![alt docker-running](/settings/images/docker-running-state.png)


[2] access to mariaDB using vscode extension: MySQL

<mark>initial data is in below (table:test, user:testuser, password:testpw</mark>
![alt mysql_extension_connection](/settings/images/mysql-connected.png)
<mark>if you want to change secrets, copy&paste the /settings/secrets/initial.env</mark>

** !!! NEVER CHANGE "initial.env" !!!**

<mark>rename and change data, then change env_file to renamed env file!</mark>

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

## version note

- v1

   1. docker-compose yaml 작성
   2. start.sh 작성
   3. gitignore, README 초안 작성 
   4. UTF-8 setting
   
   ![alt utf-8 setting 증명](/settings/images/utf-8-confirm.png)
