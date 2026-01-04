#"!/bin/bash
# ./command_example.sh


file_absolute_path="$(readlink -f "$0")"
echo "$file_absolute_path"

sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' test.txt
sed -e ':a' -e 'N' -e '$!ba' test.txt

sed -e ':a' -e 'N' -e '1ba' -e 's/\n/ /g' test.txt
sed -e ':a' -e 'N' -e '2ba' -e 's/\n/ /g' test.txt

# 無限ループ
sed -e ':a' -e '$!ba' -e 's/\n/ /g' test.txt


# aaa
# bbb改行なし


# aaa
# bbb
# 改行あり

# 行末の改行は置換されない


