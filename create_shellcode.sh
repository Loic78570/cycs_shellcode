echo "Dumping shellcodes in progress..."
for arg in "$@";
do
  echo "Shellcode for $arg"
  # shellcheck disable=SC2046
  objdump -d $arg |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
done