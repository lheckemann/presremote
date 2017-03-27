while :
do
    <ui.http nc -v -l -p 8080 | {
        IFS=$'\n' read req
        echo $req
        case "$req" in
            *next*) xdotool key space ;;
            *back*) xdotool key Left ;;
        esac
    }
done
