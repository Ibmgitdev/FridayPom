count=1
result=`cat $(System.DefaultWorkingDirectory)/target/saap.xml | awk -v FS="(<EX_V_RESULT>|</EX_V_RESULT>)" '{print $2}'`
echo "Result: $result"
 
# #item="$(grep -c '</item>' NF.xml)"
# item="$(egrep -o '</item>' NF.xml  |wc -l)"
# echo "TotalItem: $item"
# cat NF.xml | egrep -oE '(<LINE>[^<]*</LINE>|<TEXT>[^<]*</TEXT>)'  | sed  -e 's:<LINE>::g' -e 's:</LINE>::g' -e 's:<TEXT>::g' -e 's:</TEXT>::g' |sed '$!N;s/\n/;/'>linetext.log
 
# cat linetext.log |while read linedata
# do
#    TEXT=$(echo $linedata |awk -F ";" '{print $1}')
#    LINE=$(echo $linedata |awk -F ";" '{print $2}')
#    if [ $item -ne $count ]
#    then
#      echo  -e "\n\t\"issues$count\": {\n\t\t\"line\": \"$LINE\",\n\t\t \"text\": \"$TEXT\"\n}," >>outlinetext.log
#    else
#     echo  -e "\n\t\"issues$count\": {\n\t\t\"line\": \"$LINE\",\n\t\t \"text\": \"$TEXT\"\n}" >>outlinetext.log
#    fi
#    count=`expr $count + 1`
 
# done
 
# echo  -e "{     \n
#     \"itemTotal\": \"$item\", \n\t
#     \"result\": \"$result\", \n\t
#     $(cat outlinetext.log)
# }\n">test.json
 
# rm -f outlinetext.log
# rm -f linetext.log
