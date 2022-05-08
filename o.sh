#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="الاصدار التجربي"
TITLE="واجهة جنوم"
MENU="اختر"

OPTIONS=(1 "إنشاء مستند نصي جديد"
2 "إنشاء  مسند شل "
         3 "خروج"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            
            gedit newtext.txt
            ;;
        2)
           
            gedit newtext.sh
            ;;
        3)
            echo "تم الخروج"
            exit
            ;;
            
        4)
esac
