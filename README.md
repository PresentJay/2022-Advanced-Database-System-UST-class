# 2022-1학기 UST, 데이터베이스시스템 특론 수강기록

### Licensed: PresentJay (정현재, UST-ETRI)

해당 프로젝트 내 모든 코드는 자체 제작되었고, 저작권은 "정현재"에게 있습니다.

관련 문의는 presentj94@gmail.com 또는 presentj94@etri.re.kr 또는 [git Issue](https://github.com/PresentJay/2022-Advanced-Database-System-UST-class/issues "이슈")로 남겨주셔도 됩니다.

<svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Docker</title><path d="M13.983 11.078h2.119a.186.186 0 00.186-.185V9.006a.186.186 0 00-.186-.186h-2.119a.185.185 0 00-.185.185v1.888c0 .102.083.185.185.185m-2.954-5.43h2.118a.186.186 0 00.186-.186V3.574a.186.186 0 00-.186-.185h-2.118a.185.185 0 00-.185.185v1.888c0 .102.082.185.185.185m0 2.716h2.118a.187.187 0 00.186-.186V6.29a.186.186 0 00-.186-.185h-2.118a.185.185 0 00-.185.185v1.887c0 .102.082.185.185.186m-2.93 0h2.12a.186.186 0 00.184-.186V6.29a.185.185 0 00-.185-.185H8.1a.185.185 0 00-.185.185v1.887c0 .102.083.185.185.186m-2.964 0h2.119a.186.186 0 00.185-.186V6.29a.185.185 0 00-.185-.185H5.136a.186.186 0 00-.186.185v1.887c0 .102.084.185.186.186m5.893 2.715h2.118a.186.186 0 00.186-.185V9.006a.186.186 0 00-.186-.186h-2.118a.185.185 0 00-.185.185v1.888c0 .102.082.185.185.185m-2.93 0h2.12a.185.185 0 00.184-.185V9.006a.185.185 0 00-.184-.186h-2.12a.185.185 0 00-.184.185v1.888c0 .102.083.185.185.185m-2.964 0h2.119a.185.185 0 00.185-.185V9.006a.185.185 0 00-.184-.186h-2.12a.186.186 0 00-.186.186v1.887c0 .102.084.185.186.185m-2.92 0h2.12a.185.185 0 00.184-.185V9.006a.185.185 0 00-.184-.186h-2.12a.185.185 0 00-.184.185v1.888c0 .102.082.185.185.185M23.763 9.89c-.065-.051-.672-.51-1.954-.51-.338.001-.676.03-1.01.087-.248-1.7-1.653-2.53-1.716-2.566l-.344-.199-.226.327c-.284.438-.49.922-.612 1.43-.23.97-.09 1.882.403 2.661-.595.332-1.55.413-1.744.42H.751a.751.751 0 00-.75.748 11.376 11.376 0 00.692 4.062c.545 1.428 1.355 2.48 2.41 3.124 1.18.723 3.1 1.137 5.275 1.137.983.003 1.963-.086 2.93-.266a12.248 12.248 0 003.823-1.389c.98-.567 1.86-1.288 2.61-2.136 1.252-1.418 1.998-2.997 2.553-4.4h.221c1.372 0 2.215-.549 2.68-1.009.309-.293.55-.65.707-1.046l.098-.288Z"/></svg>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FPresentJay%2F2022-Advanced-Database-System-UST-class&count_bg=%233D81C8&title_bg=%23909090&icon=mysql.svg&icon_color=%23FFFFFF&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)  ![Commit/Week](https://img.shields.io/github/commit-activity/w/PresentJay/2022-Advanced-Database-System-UST-class) 

---

# Prerequisite

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
# QuickStarts

## [0] get helps of mariadb container
```Shell
sh start.sh --help
```

## [1] start mariaDB container

<mark>if you want to change password or so, please check in "mariadDB"</mark>

```Shell
sh start.sh -u
```

![alt docker-running](/settings/images/docker-running-state.png)


## [2] access to mariaDB using vscode extension: MySQL

<mark>initial data is in below (table:test, user:testuser, password:testpw</mark>
![alt mysql_extension_connection](/settings/images/mysql-connected.png)
<mark>if you want to change secrets, copy&paste the /settings/secrets/initial.env</mark>

## ** !!! NEVER CHANGE "initial.env" !!!**

<mark>rename and change data, then change env_file to renamed env file!</mark>

---

# Usages

## [*] stop mariadb container (retaining data)
```Shell
sh start.sh -d
```

## [*] cleaning data of mariadb container (must be after stop container)
```Shell
sh start.sh -c
```

## [*] show logs of mariaDB container
```Shell
sh start.sh -l
```

---

# version note

- v1

   1. docker-compose yaml 작성
   2. start.sh 작성
   3. gitignore, README 초안 작성 
   4. UTF-8 setting
   
   ![alt utf-8 setting 증명](/settings/images/utf-8-confirm.png)
