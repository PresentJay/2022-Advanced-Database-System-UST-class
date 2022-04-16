#!/bin/sh

help() {
    echo -e "\n\n(bash | sh | ..some_command_shell..) start.sh [OPTIONS] ..."
    echo -e "\t\t    -h, --help \t print help messages"
    echo -e "\t\t    -u, --up \t start mariaDB container"
    echo -e "\t\t    -c, --clean \t clean volume of mariaDB container"
    echo -e "\t\t    -x, --exec \t access into mariaDB container"
    echo -e "\t\t    -d, --down \t pause mariaDB container"
    echo -e "\t\t    -l, --log \t show logs of mariaDB container"
    echo -e "\n"  
    exit 1
}

clean() {
    test=$(docker volume ls | grep $1 | awk "{print \$2}")
    if [[ -n ${test} ]]; then
        docker volume rm ${test} && echo "[SUCCESS] volume of ${test} was cleaned !" || echo "[WARNING] something error was occured while cleaning"
    else
        echo "no container of $1. please confirm!"
    fi
}

while getopts hucxdl-: OPT; do
    if [ $OPT = "-" ]; then
        OPT=${OPTARG%%=*}
        OPTARG=${OPTARG#$OPT}
        OPTARG=${OPTARG#=}
    fi
    case $OPT in
        h | help) help ;;
        u | up) docker-compose -f ./mariaDB.yaml -p mariadb up -d ;; 
        c | clean) clean mariadb ;;
        x | exec) docker exec -it $(docker ps | grep mariadb | awk "{print \$11}") sh ;; 
        d | down) docker-compose -f ./mariaDB.yaml -p mariadb down ;; 
        l | log) docker-compose -f ./mariaDB.yaml -p mariadb logs -f ;; 
        ??*) help ;;
        ?) help ;;
    esac
done
shift $((OPTIND-1))