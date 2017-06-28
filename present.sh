while :
do
    <ui.http nc -v -l -p 8080 | {
        IFS=$'\n' read req
        echo $req >&2
        case "$req" in
            *next*) echo j ;;
            *back*) echo k ;;
        esac
    } | tee "$@"
done
