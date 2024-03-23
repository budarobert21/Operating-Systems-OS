cat last.fake | grep '(Sun)(economica)'
cat last.fake | grep '(Sun)&&(economica)'
cat last.fake | grep '(Sun)'
cat last.fake | grep 'Sun'
cat last.fake | grep '[Sun]'
cat last.fake | grep 'Sun'| grep 'economica'
cat last.fake | grep 'Sun' grep 'economica'
cat last.fake | grep 'Sun'/ grep 'economica'
cat last.fake | grep 'Sun/' 
cat last.fake | grep 'Sun\' 
cat last.fake | grep 'Sun\1' 
man grep
cat last.fake | grep 'Sun \|' 
cat last.fake | grep 'Sun \| economica' 
cat last.fake | grep 'Sun \|| economica' 
cat last.fake | grep 'Sun \| economica' 
cat last.fake | grep 'Sun \& economica' 
cat last.fake | grep 'Sun \&& economica' 
cat last.fake | grep 'Sun \& economica' 
man grep
cat last.fake | grep 'Sun \? economica' 
cat last.fake | grep 'Sun \/ economica' 
cat last.fake | grep 'Sun \\ economica' 
cat last.fake | grep 'Sun | economica' 
cat last.fake | grep 'Sun '|' economica' 
cat last.fake | grep 'Sun "\" economica' 
cat last.fake | grep 'Sun "|" economica' 
cat last.fake | grep 'Sun & economica' 
cat last.fake | grep 'Sun /& economica' 
cat last.fake | grep 'Sun /| economica' 
cat last.fake | grep 'Sun \ economica' 
cat last.fake | grep 'Sun | economica' 
cat last.fake | grep 'Sun || economica' 
cat last.fake | grep 'Sun \| economica' 
cat last.fake | grep 'Sun \|\ economica' 
cat last.fake | grep 'Sun |\ economica' 
cat last.fake | grep 'Sun' | grep 'economica' 
cat last.fake | grep 'Sun' | grep 'economica' | sort | uniq
cat last.fake | grep 'Sun' | grep 'economica' | cut -f1  | sort | uniq 
cat last.fake | grep 'Sun' | grep 'economica' | cut -f1 
cat last.fake | grep 'Sun' | grep 'economica' | cut -f 1
cat last.fake | grep 'Sun' | grep 'economica' | cut -f
man cut
cat last.fake | grep 'Sun' | grep 'economica' | cut 
cat last.fake | grep 'Sun' | grep 'economica' | cut -d ' ' -f1
cat last.fake | grep 'Sun' | grep 'economica' | cut -d ' ' -f1 | sort | uniq
ls
touch grep/awk/sed_exerc.txt
touch grep/awk/sed_exerc
touch `grep/awk/sed_exerc`
touch 'grep/awk/sed_exerc'
touch "grep/awk/sed_exerc"
touch "grep_awk_sed_exerc"
vi grep_awk_sed_exerc 
cat last.fake
cat last.fake | cut -d ' ' -f1,7
cat last.fake | cut -d ' ' -f1, 7
cat last.fake | cut -d ' ' -f1,7
cat last.fake | cut -d ' ' -f7
cat last.fake | cut -d ' ' 
cat last.fake 
cat last.fake | cut -d ' ' -f1,3
cat last.fake | cut -d ' ' -f1,2
cat last.fake | cut -d ' ' -f1,4
cat last.fake | cut -d ' ' -f1,2
cat last.fake | cut -d ' ' -f1,8
cat last.fake | cut -d ' ' -f1,9
cat last.fake | cut -d ' \t' -f1,9
cat last.fake | cut -d ' \t' -f1,3
cut help
cut --help
cat last.fake | cut -d  -f1,3
cat last.fake | cut -d -f1,3
cat last.fake | cut -d '\t3'  -f1,3
cat last.fake | cut -d '\t'  -f1,3
cat last.fake | 
awk info
info awk
man awk
cat last.fake | awk $1
cat last.fake | awk 
cat last.fake | awk '$1'
cat last.fake | awk '$2'
cat last.fake | awk '$3'
cat last.fake | awk '$4'
cat last.fake | awk '$NR'
cat last.fake | awk '$'
cat last.fake | awk '$0'
cat last.fake | awk 
cat last.fake | awk 'print $1'
cat last.fake | awk '{print $1}'
cat last.fake | awk '{print $1$7}'
cat last.fake | awk '{print $1,$7}'
cat last.fake | awk '{print $1$7}'
cat last.fake | awk '{print $1,$7}'
cat last.fake | awk '{print $1,$7}'| sed /s
cat last.fake | awk '{print $1,$7}'| sed -e /s
cat last.fake | awk '{print $1,$7}'| sed -e /s/
cat last.fake | awk '{print $1,$7}'| sed  's/ /;/
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/;
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/'
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/;
cat last.fake | awk '{print $1,$7}'| sed -e 's/ /;/'
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/;
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/' | cut -f 1
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/;
cat last.fake | awk '{print $1,$7}'| 
cat last.fake | sed 's/ /;/'
cat last.fake | sed 's/ /;/'
cat last.fake | awk '{print $1,$7}'| sed -n 's/ /;/'
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/'
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/'| awk '{print $2}'
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/'| awk '{print $1}'
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/'| awk -d ';' '{print $1}'
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/'| awk -d';' '{print $1}'
cat last.fake | awk '{print $1,$7}'| sed 's/ /;/'| awk -d' ' '{print $1}'
man awk
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{print $1}'
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23)print $1}'
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'|head
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| head
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head
man head
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -
man head
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head --n
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n 4
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n NF
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n $
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n 0
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n 1
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n 4
ls
vi grep_awk_sed_exerc 
info head
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n 1
man tail
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n +1
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n -1
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n -0
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n 1
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n 2
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | tail -n +2
cat last.fake | awk '{print $1,$7}'| sed 's/:/ /'| awk '{if ($2>=23) print $1}'| sort | uniq | head -n -1
vi grep_awk_sed_exerc 
ls
cat grep_awk_sed_exerc 
ls
cat passwd.fake
cat passwd.fake | grep '^m*'
cat passwd.fake | grep '^M*' |
cat passwd.fake | grep '^M*' 
cat passwd.fake | grep '^m' 
cat passwd.fake |cut -d ':' -f 4 | grep '^m' 
cat passwd.fake |cut -d ':' -f 4 
cat passwd.fake | grep '^m' 
cat passwd.fake |cut -d ':' -f 5 
cat passwd.fake |cut -d ':' -f 5 | grep '^M'
cat passwd.fake |cut -d ':' -f 5 | grep '^M' | awk '{if($3 % 7 == 0) print $5 }' passwd.fake
cat passwd.fake |cut -d ':' -f 5 | grep '^M' | awk -d ':' '{if($3 % 7 == 0) print $5 }' passwd.fake
man awk
cat passwd.fake |cut -d ':' -f 5 | grep '^M' | awk -F ':' '{if($3 % 7 == 0) print $5 }' passwd.fake
cat passwd.fake |cut -d ':' -f 5 | awk -F ':' '{if($3 % 7 == 0) print $5 }' passwd.fake | grep '^M'
vi grep_awk_sed_exerc 
ls
cat grep_awk_sed_exerc 
vi grep_awk_sed_exerc 
cat grep_awk_sed_exerc 
cat ps.fake
cat grep_awk_sed_exerc 
cat ps.fake | grep "^root"
cat grep_awk_sed_exerc 
cat ps.fake | grep "^root"| cut -d ' ' -f 6
cat ps.fake | grep "^root"| cut -d ' ' -f 5
cat grep_awk_sed_exerc 
cat ps.fake | grep "^root"|  cat ps.fake | grep "^root"
cat ps.fake | grep "^root"| awk '{print $6}' 
cat ps.fake | grep "^root"| awk '{print $6}' | sort | uniq
vi grep_awk_sed_exerc 
cat passwd.fake
vi grep_awk_sed_exerc 
cat ps.fake | grep "^root"| awk '{print $6}' | sort | uniq
cat ps.fake | grep "^root"| cut -d ' ' -f 5
cat ps.fake | grep "^root"| cut -d ' ' -f 6
vi grep_awk_sed_exerc 
cat passwd.fake
cat passwd.fake | grep '88:\b'
cat passwd.fake | grep '88:\b' | cut -d ':' -f 5
vi grep_awk_sed_exerc 
ls
ls .
cat grep_awk_sed_exerc 
cat passwd.fake 
cat passwd.fake | grep ':23'
cat passwd.fake | grep ':23.'
cat passwd.fake | grep ':23.:'

vi grep_awk_sed_exerc 
cat grep_awk_sed_exerc 
cat last.fake | grep '^t'
cat last.fake 
cat grep_awk_sed_exerc 
cat last.fake | grep '^t' | grep 'pts/9'
cat last.fake | grep '^t' | grep 'pts/9' | awk '{print $1}'
vi grep_awk_sed_exerc 
cat ps.fake
cat ps.fake | grep '^r' 
cat ps.fake | grep '^r' | sort | uniq
vi grep_awk_sed_exerc 
cat ps.fake | cut -f 1  | grep '^r' | sort | uniq
cat ps.fake | cut -f1  | grep '^r' | sort | uniq
cat ps.fake | cut -f1 
cat ps.fake | cut -1 
cat ps.fake | cut 1
cat ps.fake | cut 
cat ps.fake | cut -F1
cat ps.fake | cut -F 1
cat ps.fake | cut -f 1
cat ps.fake | cut -f 2
cat ps.fake | cut -f 3
cat ps.fake | cut -f 
cut --help
cat ps.fake | cut -f 
cat ps.fake | cut -f1
cat ps.fake | cut -f 1
cat ps.fake |head -n 1 |cut -f 1
cat ps.fake |head -n +1 |cut -f 1
cat ps.fake |head  +1 |cut -f 1
cat ps.fake |head  |cut -f 1
cat ps.fake |head -n -1 |cut -f 1
cat ps.fake |head -n +1 |cut -f 1
cat ps.fake |tails -n +1 |cut -f 1
cat ps.fake |tail -n +1 |cut -f 1
cat ps.fake |tail -n -1 |cut -f 1
man cut
cat ps.fake |tail -n -1 |cut -f 1 -s
cat ps.fake |tail -n -1 |cut -f 1 
cat ps.fake |cut -f 1 
cat ps.fake |cut -f 1 -s
cat ps.fake |cut -s -f 1 
cat ps.fake |cut -s -f1 
cat ps.fake |cut -f1 
cat ps.fake |awk '{print $1}'
cat ps.fake |awk '{print $1}'| grep '^r'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU]//'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])//'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU]//'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU]*//'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU].//'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU]+//'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU]//g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/[aeiouAEIOU]/[aeiouAEIOU]{2}/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/([aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/([aeiouAEIOU][aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/([aeiouAEIOU],[aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU\])/([aeiouAEIOU][aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/([aeiouAEIOU]+)/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/([aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/[aeiouAEIOU]/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed 's/([aeiouAEIOU])/[aeiouAEIOU]+/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/([aeiouAEIOU])/[aeiouAEIOU]+/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/([aeiouAEIOU])/\([aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/([aeiouAEIOU])/\[aeiouAEIOU]+/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/[aeiouAEIOU]/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/([aeiouAEIOU])/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/'[aeiouAEIOU]'/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/`[aeiouAEIOU]`/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/\[aeiouAEIOU]/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/$1/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/''/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/~a/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/`a`/g'
man sed
info sed
ls
sed -n 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
cat angajati.txt
sed -n 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed  's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed -n 's/\[0-9\]\[0-9\]$/&\.5/' angajati.tx
sed -n 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed -p 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed 's/\[0-9\]\[/' angajati.txt
sed 's/\[0-9\]/&\.5/' angajati.txt
sed 's/\[0-9\]//&\.5/' angajati.txt
sed 's/Tudor/Tudorel/' angajati.txt
sed 's/Tudor/Tudoraaaaaaaaaaaaaaaaaa/' angajati.txt
sed 's/\[0-9\]\[0-9\]$/&\.5/' angajati.txt
sed 's/\[0-9\]\[0-9\]$//' angajati.txt
sed 's/[0-9\]//' angajati.txt
sed 's/[0-9]//g' angajati.txt
sed 's/\[0-9\]\[0-9\]$/&\.5/g' angajati.txt
sed 's/\[0-9\]\[0-9\]$/&\5/g' angajati.txt
sed 's/\[0-9\]\[0-9\]$/&\./g' angajati.txt
sed 's//g' angajati.txt
sed 's/[/g' angajati.txt
sed 's/[0-9][0-9]/&\./g' angajati.txt
sed 's/[0-9][0-9]/\./g' angajati.txt
sed 's/[0-9][0-9]/&\./g' angajati.txt
sed 's/[0-9][0-9]/&/g' angajati.txt
sed 's/[0-9][0-9]/\./g' angajati.txt
sed 's/[0-9][0-9]/&./g' angajati.txt
sed 's/[0-9][0-9]/&\./g' angajati.txt
sed 's/[0-9\][0-9\]/&\./g' angajati.txt
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/[aeiouAEIOU]/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/[aeiouAEIOU]/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/\[aeiouAEIOU]g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/&[aeiouAEIOU]/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/&/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/&&/g'
vi grep_awk_sed_exerc 
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/\./g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/./g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]//./g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]/&./g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]././g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]./&/g'
cat ps.fake |awk '{print $1}'| grep '^r' | sort | uniq |sed -E 's/[aeiouAEIOU]./&&/g'
info sed
vi grep_awk_sed_exerc 
cat passwd.fake
cat passwd.fake |sed 's/[a-zA-Z0-9]//g' |
cat passwd.fake |sed 's/[a-zA-Z0-9]//g' 
cat passwd.fake |sed 's/[a-zA-Z0-9 ]//g' 
cat passwd.fake |sed 's/[a-zA-Z0-9 ]//g' | sort | uniq
vi grep_awk_sed_exerc 
cat passwd.fake |sed 's/[r^]//g' | sort | uniq
cat passwd.fake |sed 's/[!r]//g' | sort | uniq
cat passwd.fake |sed 's/[\^r]//g' | sort | uniq
cat passwd.fake |sed 's/^[r]//g' | sort | uniq
cat passwd.fake |sed 's/\^[r]//g' | sort | uniq
cat passwd.fake |sed 's/^[!r]//g' | sort | uniq
cat passwd.fake |sed 's/[!r]//g' | sort | uniq
cat passwd.fake |sed 's/[r]//g' | sort | uniq
cat passwd.fake |sed 's/[\!r]//g' | sort | uniq
cat passwd.fake |sed 's/[r]//g' | sort | uniq
cat passwd.fake |sed 's/[M]//g' | sort | uniq
cat passwd.fake |sed 's/[!M]//g' | sort | uniq
cat passwd.fake |sed 's/![M]//g' | sort | uniq
cat passwd.fake |sed 's/[\!M]//g' | sort | uniq
cat passwd.fake |sed 's/\![M]//g' | sort | uniq
cat passwd.fake |sed -v 's/[M]//g' | sort | uniq
cat passwd.fake |sed 's/[M]//g' | sort | uniq
cat passwd.fake |sed 's/?[M]//g' | sort | uniq
cat passwd.fake |sed 's/?[m]//g' | sort | uniq
cat passwd.fake |sed 's/[M]?//g' | sort | uniq
cat passwd.fake |sed  's/[M]\?//g' | sort | uniq
cat passwd.fake |sed  's/[M]//g' | sort | uniq
cat passwd.fake |sed  's/[M]/aaaaa/g' | sort | uniq
cat passwd.fake |sed  's/[M]\?/aaaaa/g' | sort | uniq
cat passwd.fake |sed  's/[M]\?//g' | sort | uniq
cat passwd.fake |sed  's/[M]\?/ddd/g' | sort | uniq
cat passwd.fake |sed  's/[M]\?//g' | sort | uniq
cat passwd.fake |sed  's/[M]\?/''/g' | sort | uniq
cat passwd.fake |sed  's/[M]\?/x/g' | sort | uniq
cat passwd.fake |sed  's/[M]?/x/g' | sort | uniq
cat passwd.fake |sed  's/[M]/x/g' | sort | uniq
cat passwd.fake |sed  's/\?[M]/x/g' | sort | uniq
cat passwd.fake |sed  's/?[M]/x/g' | sort | uniq
cat passwd.fake |sed  's/[M]\?/x/g' | sort | uniq
cat passwd.fake |sed  's/[]\?//g' | sort | uniq
cat passwd.fake |sed  's/\?//g' | sort | uniq
cat passwd.fake |sed  's/\?/aa/g' | sort | uniq
cat passwd.fake |sed  's/\//g' | sort | uniq
cat passwd.fake |sed  's/[M]\!//g' | sort | uniq
cat passwd.fake |sed  's/[r]\?//g' | sort | uniq
cat passwd.fake |sed  's///rd' | sort | uniq
cat passwd.fake |sed  's//rd' | sort | uniq
cat passwd.fake |sed  's/[]//d' | sort | uniq
cat passwd.fake |sed  's/[r]//d' | sort | uniq
cat passwd.fake |sed  's/[r]//g' | sort | uniq
cat passwd.fake |sed  's/[m]//g' | sort | uniq
cat passwd.fake |sed  's/[M]//g' | sort | uniq
cat passwd.fake |sed  's/[M]//gi' | sort | uniq
cat passwd.fake |sed  's/[M]//g' | sort | uniq
cat passwd.fake |sed  's/[M]//gi' | sort | uniq
cat passwd.fake |sed  's/[M]//g' | sort | uniq
vi grep_awk_sed_exerc 
cat passwd.fake |sed  's/~[M]//g' | sort | uniq
cat passwd.fake |sed  's/\~[M]//g' | sort | uniq
cat passwd.fake |sed  's///g' | sort | uniq
cat passwd.fake |sed  's/[a-qs-z]//g' | sort | uniq
cat passwd.fake |sed  's/[a-q-s-z]//g' | sort | uniq
cat passwd.fake |sed  's/[a-qs-z]//g' | sort | uniq
cat passwd.fake |sed  's/[a-q]//g' | sort | uniq
cat passwd.fake |sed  's/[a]//g' | sort | uniq
cat passwd.fake |sed  's/[a-qs-z]*//g' | sort | uniq
cat passwd.fake |sed  's/[a-qs-z]//g' | sort | uniq
cat passwd.fake |sed  's/[a-qs-z: //]//g' | sort | uniq
cat passwd.fake |sed  's/[0-9a-qs-z: //]//g' | sort | uniq
cat passwd.fake |sed  's/[0-9a-qs-z: //]//gi' | sort | uniq
cat passwd.fake |sed  's/[0-9a-qs-z-: //]//gi' | sort | uniq
cat passwd.fake |sed  's/[0-9a-qs-z\-: //]//gi' | sort | uniq
cat passwd.fake |sed  's/[0-9a-qs-z: //]-//gi' | sort | uniq
cat passwd.fake |sed  's/[0-9a-qs-z: //-]//gi' | sort | uniq
vi grep_awk_sed_exerc 
cat grep_awk_sed_exerc 
cat ps.fake
cat grep_awk_sed_exerc 
cat ps.fake
cat ps.fake | BEGIN {s=0 ,nr=0}{s=s+$2,nr=nr+1}{print s/nr }
cat ps.fake |awk -F  BEGIN {s=0 ,nr=0}{s=s+$2,nr=nr+1}{print s/nr }
cat ps.fake |awk -F  BEGIN {s=0,nr=0}{s=s+$2,nr=nr+1}{print s/nr }
cat ps.fake |awk -F  BEGIN{s=0,nr=0}{s=s+$2,nr=nr+1}{print s/nr }
cat ps.fake |awk BEGIN{s=0,nr=0}{s=s+$2,nr=nr+1}{print s/nr }
cat ps.fake |awk BEGIN{s=0 nr=0}{s=s+$2,nr=nr+1}{print s/nr }
cat ps.fake |awk BEGIN{s=0 nr=0}{s=s+$2 nr=nr+1}{print s/nr }
cat ps.fake |awk BEGIN{s=0; nr=0}{s=s+$2 nr=nr+1}{print s/nr }
cat ps.fake |awk BEGIN{s=0 nr=0}{s=s+$2 nr=nr+1}{print s/nr }
cat ps.fake |awk BEGIN{s=0}{s=s+$2}{print s }
cat ps.fake |awk BEGIN{s=0}{s=s+$2}{ print s }
cat ps.fake |awk BEGIN{s=0} {s=s+$2} END{ print s }
cat ps.fake |awk BEGIN{s=0}{s=s+$2}END{ print s }
cat ps.fake |awk BEGIN{s=0}{s=s+$2} END{ print s }
cat ps.fake |awk BEGIN{s=0} {s=s+$2} END{ print s }
cat ps.fake |awk BEGIN{s=0} {s=s+$2} END{ print  }
cat ps.fake |awk BEGIN{s=0} {s=s+$2} END{ print $s }
cat ps.fake |awk 'BEGIN{s=0} {s=s+$2} END{ print s }'
cat ps.fake |awk 'BEGIN{s=0} {s=s+$2} END{ print s/NR }'
cat ps.fake |awk 'BEGIN{s=0,nr=0} {s=s+$2,nr+=1} END{ print s/nr }'
cat ps.fake |awk 'BEGIN{s=0 nr=0} {s=s+$2 nr+=1} END{ print s/nr }'
cat ps.fake |awk 'BEGIN{s=0;nr=0} {s=s+$2;nr+=1} END{ print s/nr }'
vi grep_awk_sed_exerc 
cat ps.fake
cat passwd.fake |sed  's/[0-9a-qs-z: //-]//gi' | sort | uniq
cat passwd.fake |sed  'f/[r]//g' | sort | uniq
cat passwd.fake |sed  's/^[r]//g' | sort | uniq
cat passwd.fake |sed  's/\^[r]//g' | sort | uniq
cat passwd.fake |sed  's/[^r]//g' | sort | uniq
vi grep_awk_sed_exerc 
man grep
ls
find /etc -type l    
find /etc -type l | grep 'system'
find /etc -type l 
ls
cat directoare2.txt 
ls
cat direct_script.sh 
vi script_tutorial
vi script_tutorial_1
ls
cd labs
cd Labs
ls
cd Lab_04
ls
cat lab4_notite.doc
ls
cd awk
ls
cat exercitii.txt
cat angajati.txt | awk {print $0}
cat angajati.txt | awk {print$0}
cat angajati.txt | awk '{print $0}'
cat angajati.txt
cat angajati.txt | awk '{print  $0}'
cat angajati.txt | awk '{print NR $0}'
cat angajati.txt | awk '{print NR " " $0}'
cat angajati.txt | awk '{print NF " " $0}'
cat angajati.txt | awk '{print $2 $1 $4}'
cat angajati.txt | awk '{print $2,$1,$4}'
cat angajati.txt
cat exercitii.txt
cat angajati.txt | awk '/t/{print }'
cat angajati.txt | awk '/^t/{print }'
cat angajati.txt | awk '/^T/{print }'
cat angajati.txt | awk '/^T/'
cat angajati.txt | awk '/^t/i'
cat angajati.txt | awk '/^[tT]/'
cat exercitii.txt
cat angajati.txt | awk '/\/3\//'
cat angajati.txt | awk '/\/3\//{print $2 %1}'
cat angajati.txt | awk '/\/3\//{print $2,%1}'
cat angajati.txt | awk '/\/3\//{print $2,$1}'
cat angajati.txt | awk '{if(NF == 1969)print $2,$1}'
cat angajati.txt | awk '{if($NF == 1969)print $2,$1}'
cat angajati.txt | awk '{if($5 == 1969)print $2,$1}'
cat angajati.txt | awk '{if($5 == 1969) print $2,$1}'
cat angajati.txt | awk '{if ($5 == 1969) print $2,$1}'
cat angajati.txt | awk '{if ($5 == 1942) print $2,$1}'
cat angajati.txt | awk '{if (NF == 1942) print $2,$1}'
cat angajati.txt | awk '{if (NR == 1942) print $2,$1}'
cat angajati.txt | awk '{if ($NR == 1942) print $2,$1}'
cat angajati.txt | awk '{if ($Nf == 1942) print $2,$1}'
cat angajati.txt | awk '{if ($NF == 1942) print $2,$1}'
cat angajati.txt | awk '{print NR,$0}'
cat exercitii.txt
cat angajati.txt | awk '{if ($NF < 2000) print $2,$1}'
cat angajati.txt | awk '{if (length($0)==42) print $0}'
cat angajati.txt | awk '{if (length($0)==41) print $0}'
cat angajati.txt | awk '{if (length($0)==40) print $0}'
cat angajati.txt | awk '{if (length($0)==39) print $0}'
cat angajati.txt | awk '{if (length($0)==38) print $0}'
cat angajati.txt | awk '{if (length($0)==337) print $0}'
cat angajati.txt | awk '{if (length($0)==37) print $0}'
cat angajati.txt | awk '{if (length($0)==36) print $0}'
cat angajati.txt | awk '{s=s+1}{print s}'
cat angajati.txt | awk '{s=s+1}END{print s}'
cat exercitii.txt
cat angajati.txt | awk '{s=s+$nF}END{print s}'
cat angajati.txt | awk '{s=s+$NF}END{print s}'
ls
cat script_1
cat script_2
ls
cd ..
ls
cd sd
cd sed
ls
cat exercitii.txt
cat angajati.txt | sed 'r'
cat angajati.txt | sed ''
cat angajati.txt | sed '/5,10'
cat angajati.txt | sed '/5-10'
cat angajati.txt | sed '//5-10'
cat angajati.txt | sed ''{5,10}
cat angajati.txt | sed -n ''
cat angajati.txt | sed -n 
cat angajati.txt | sed '5,10p' 
cat angajati.txt | sed -n '5,10p' 
cat angajati.txt | sed -n '8,p' 
cat angajati.txt | sed -n '8p' 
cat angajati.txt | sed -n '8 p' 
cat angajati.txt | sed -n '8,$ p' 
cat angajati.txt | sed -n 'TUDOR' 
cat angajati.txt | sed -n 'Tudor' 
cat angajati.txt | sed -n '/TUDOR/' 
cat angajati.txt | sed -n '/TUDOR/p' 
cat angajati.txt | sed -n '/Tudor/' 
cat angajati.txt | sed -n '/Tudor/p' 
cat angajati.txt | sed -n '/\<Tudor\>/p' 
cat angajati.txt | sed -n '/\bTudor\b/p' 
cat exercitii.txt 
cat angajati.txt | sed -n '1,3d' 
cat angajati.txt | sed -n '1,3/d' 
cat angajati.txt | sed -n '' 
cat angajati.txt | sed -n '1/d' 
cat angajati.txt | sed '1,3/d' 
cat angajati.txt | sed -n '1,3d' 
cat angajati.txt | sed  '1,3d' 
cat angajati.txt | sed  '1,4d' 
cat angajati.txt | sed  '1,3d' 
cat angajati.txt | sed  '/Popescu/d' 
touch script_sed
vi script_sed 
cat angajati.txt 
vi script_sed 
cat angajati.txt | sed -f script_sed
vi script_sed 
cat angajati.txt | sed -f script_sed
vi script_sed 
cat angajati.txt | sed '1 i DATE DESPRE PERSONAL'
cat angajati.txt | sed '/49\$/d'
cat angajati.txt | sed '/49/d'
cat angajati.txt | sed '/49\>//d'
cat angajati.txt | sed '/49\>/d'
cat angajati.txt | sed 's/\([a-zA-Z]* \) \([a-zA-Z]* \)/\2 \1 /g'
cat angajati.txt | sed 's/\([a-zA-Z]* \) \([a-zA-Z]* \)/\2\1/g'
cat angajati.txt | sed 's/\([a-zA-Z]* \)\([a-zA-Z]* \)/\2\1/g'
vi script_sed 
cat angajati.txt | sed -f script_sed
cat angajati.txt | sed  script_sed
cat angajati.txt | sed -f script_sed
vi script_sed 
cat angajati.txt | sed -f script_sed
vi script_sed 
cat angajati.txt | sed -f script_sed
ls
cat script_sed
cd ..
ls
cd awk
ls
cat script_1
cat script_2
cd ..
ls
cd sed
ls
vi script_sed
cd ..
ls
cd ..
ls
vi grep_awk_sed_exerc 
cat ps.fake |awk 'BEGIN{s=0} {s=s+$2} END{ print s/NR }'
cat ps.fake |awk 'BEGIN{s=0} {s=s+$2} END{ prints/NR }'
cat ps.fake |awk 'BEGIN{s=0} {s=s+$2} END{ print; s/NR }'
cat ps.fake |awk 'BEGIN{s=0} {s=s+$2} END{ print s/NR }'
ls
cat ' '
cat ';'
ls
cat grep_awk_sed_exerc 
man find
find -type f
find -type f '*.txt'
man find
find -type f `*.txt'
find -type f `*.txt`
find -type f `*.txt'
man find
find -type f (*.txt)
find -type f '/*.txt/'
find -type f `/*.txt/'
find -type f /*.txt/
man find
find -type f | grep 'txt$'
ls
cat exercitii.txt
touch lab0_5_script
ls
touch ana.txt
cat >ana.txt
grep 'ana' ana.txt
grep '\<ana\>' ana.txt
grep -q '\<ana\>' ana.txt
grep '\<ana\>' ana.txt
grep -o '\<ana\>' ana.txt
man grep
ls
cd EXAMEN/
ls
cat Cerinte2.txt 
ls
cat Solutii_cerinte2/
cat Solutii_cerinte2
cd Solutii_cerinte2
ls
cat ex1.sh 
ls
man sed
cd ..
ls
cat Cerinte_2
cat Cerinte_2.txt
ls
cat Cerinte2.txt
ls
cd Solutii_cerinte2/
ls
cat ex2.sh 
cd ..
ls
cat Cerinte2.txt 
ls
cd Solutii_cerinte2/
ls
cat ex3.sh 
cd ..
ls
cat Cerinte2.txt 
cd Solutii_cerinte2/
ls
cat ex4.sh 
man grep
cd ..
ls
cat Cerinte2.txt 
ls
cd Solutii_cerinte2/
cat ex5.sh 
ls
cat ex7.sh 
ls
./ex8.sh
cat ex8.sh
cat ex9.sh
ls
cd EXAMEN/
ls
vi exec_1
chmod u+x exec_1 
./exec_1
chmod u+x exec_1 
vi exec_1
./exec_1
./exec_1 alo
./exec_1 ahh
vi exec_1
./exec_1 ahh
vi exec_1
./exec_1 ahh
vi exec_1
./exec_1 4
ls
cat file_1.txt 
vi exec_2
chmod u+x exec_2
./exec_2
./exec_2 dir/
./exec_2 Rezolvare_probleme_site/
cd Rezolvare_probleme_site/
ls
cd ..
./exec_2 .
vi exec_2
./exec_2 .
vi exec_2
./exec_2 .
vi exec_2
./exec_2 .
vi exec_2
./exec_2 .
vi exec_2
./exec_2 .
vi exec_2
./exec_2 .
vi exec_3
chmod u+x exec_3
./exec_3
vi exec_3
./exec_3
./exec_3 .
./exec_3 dir
vi exec_3
./exec_3 dir
vi exec_3
./exec_3 dir
vi exec_3
./exec_3 dir
./exec_3 dir/
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3vi exec_3
vi exec_3
./exec_3 .
vi exec_3
file
file Cerinte.txt
file Cerinte.txt | grep -n 'ASCII text'
wq!
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_3
./exec_3 .
vi exec_4
chmod u+x exec_4
./exec_4
./exec_4 .
vi exec_4
./exec_4 .
vi exec_4
./exec_4 .
vi exec_4
./exec_4 .
vi exec_4
./exec_4 .
vi exec_4
./exec_4 .
vi exec_4
./exec_4 .
vi exec_5
chmod u+x exec_5
vi exec_5
./exec_5
./exec_5 a.log
vi exec_5
./exec_5 a.log
./exec_5 dir
./exec_5 dir/
vi exec_5
./exec_5 a.log
vi exec_5
./exec_5 a.log
vi exec_5
./exec_5 a.log
vi exec_5
./exec_5 a.log
./exec_5 a
ls
./exec_5 Cerinte2.txt 
vi exec_5
vi exec_6
chmod u+x exec_6
vi exec_6
vi exec_7
ls
cd So_Procesese/
ls
cd Fork/
ls
cat fork_3.c 
gcc -Wall -g fork_3.c
ls
/a.out
./a.out
gcc -Wall -g fork_3.c
gcc -Wall -g fork_4.c fork_4.out
gcc -Wall -g fork_4.out fork_4.c
man gcc
gcc -Wall -g fork_4.c
ls
./a.out 
gcc -Wall -g fork_5.c
./a.out 
gcc -Wall -g fork_6.c
./a.out 
gcc -Wall -g fork_7.c
./a.out 
gcc -Wall -g fork_8.c
./a.out 
gcc -Wall -g -o fork_8  fork_8.c
ls
cd ..
ls
cd Labs/
ls
cd Lab_08
ls
cd exemple
ls
cd pipe
ls
gcc -Wall -g -g pipe_1 pipe_1.c
gcc -Wall -g -o pipe_1 pipe_1.c
./pipe_1 
gcc -Wall -g -o pipe_2 pipe_2.c
./pipe_2 
gedit
sudo apt install gedit
sudo apt install gedit --fix-missing
gedit
gedit pipe_1.c
sudo apt install gedit
man gedit
gedit pipe_1.c
sudo apt -y install gnome
gedit pipe_1.c
ls
cd So_Procesese/
ls
cd Labs/
ls
cd Lab_08
ls
cd exercitii/
ls
cd solutii/
ls
gedit
gedit ex1.c
ls
vi ex1_rezolvare.c
cat ex1.c
vi ex1_rezolvare.c
gcc -Wall -g -o ex1_rezolvare ex1_rezolvare.c 
vi ex1_rezolvare.c
gcc -Wall -g -o ex1_rezolvare ex1_rezolvare.c 
./ex1_rezolvare
cat ex1.c
vi ex3_rezolvare.c
cat ex3.c
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
./ex3_rezolvare
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
./ex3_rezolvare
vi ex3_rezolvare.c
cat ex3.c
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
./ex3_rezolvare
vi ex3_rezolvare.c
cat ex3.c
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
./ex3_rezolvare
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
./ex3_rezolvare
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
vi ex3_rezolvare.c
gcc -Wall -g -o ex3_rezolvare ex3_rezolvare.c 
./ex3_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
ls
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
vi fisier_proces
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi fisier_proces
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi fisier_proces
./ex5_rezolvare
vi fisier_proces
./ex5_rezolvare
vi fisier_proces
./ex5_rezolvare
vi fisier_proces
vi ex5_rezolvare.c
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
./ex5_rezolvare
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
vi fisier_proces
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
cat ex5_rezolvare.c
vi fisier_proces
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
gcc -Wall -g -o ex5_rezolvare ex5_rezolvare.c 
./ex5_rezolvare
vi ex5_rezolvare.c
ls
cd So_Procesese/
ls
cd Labs/
ls
cd Lab_08/
ls
cd exercitii/
ls
cd solutii/
ls
cat ex5_rezolvare.c
ls
cd So_Procesese/
ls
cd Labs/
ls
cd Lab_08
ls
cd exercitii/
ls
cd solutii/
ls
cd ex1_rezolvare.c
cat ex1_rezolvare.c
cat ex3_rezolvare.c
cat ex5_rezolvare.c
clear
ls
./randuri_matrice 
nano randuri_matrice_iulian.c
gcc -Wall -g -o randuri_matrice_iulian randuri_matrice_iulian.c
nano randuri_matrice_iulian.c
gcc -Wall -g -o randuri_matrice_iulian randuri_matrice_iulian.c
./randuri_matrice 
./randuri_matrice_iulian
nano randuri_matrice_.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
nano randuri_matrice.c
cat randuri_matrice.c
nano randuri_matrice.c
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
gdb
nano thread.txt
gcc -Wall -g -o randuri_matrice randuri_matrice.c
./randuri_matrice
strace ./randuri_matrice
ls
nano Problema_2_Iuli.c
gcc -Wall -g -o Problema_2_Iuli Problema_2_Iuli.c 
nano Problema_2_Iuli.c
gcc -Wall -g -o Problema_2_Iuli Problema_2_Iuli.c 
./Problema_2_Iuli aaaa bbbb cccc
nano Problema_2_Iuli.c
gcc -Wall -g -o Problema_2_Iuli Problema_2_Iuli.c 
./Problema_2_Iuli aaaa bbbb cccc
nano Problema_3_Iulian
nano Problema_3_Iulian.c
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
nano Problema_3_Iulian.c
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
./Problema_3_Iulian
nano Problema_3_Iulian.c
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
./Problema_3_Iulian
./Problema_3_Iulian aa2c-
nano Problema_3_Iulian.c
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
./Problema_3_Iulian aa2c-
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
nano Problema_3_Iulian.c
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
./Problema_3_Iulian aa2c-
nano Problema_3_Iulian.c
gcc -Wall -g -o Problema_3_Iulian Problema_3_Iulian.c 
./Problema_3_Iulian aa2c-
./Problema_3_Iulian aa2c- bbb3333-=-
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  aaavvv
nano Problema_4_Iulian.c
./Problema_4_Iulian  aaavvv
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  aaavvv
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  aaavvv
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  aaavvv
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  aaavvv
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  aaavvv
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  2323234
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  2323234
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  2323234
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  2323234
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
nano Problema_4_Iulian.c
gcc -Wall -g -o Problema_4_Iulian Problema_4_Iulian.c 
./Problema_4_Iulian  2323234
nano Problema_5_Iulian
ls
nano Problema_5
nano Problema_5.c
ls
nano Problema_5_Iulian
mv Problema_5_Iulian Problema_5_Iulian.c
ls
nano Problema_5_Iulian.c 
y
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
dd if=/dev/urandom of=thread3.txt bs=1 count=1024
ls
cat thread3.txt
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian_facuta.c
gcc -Wall -g -o Problema_5_Iulian_facuta Problema_5_Iulian_facuta.c 
nano Problema_5_Iulian.c 
nano Problema_5_Iulian_facuta.c
gcc -Wall -g -o Problema_5_Iulian_facuta Problema_5_Iulian_facuta.c 
./Problema_5_Iulian_facuta 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
gcc -Wall -g -o Problema_5_Iulian_facuta Problema_5_Iulian_facuta.c 
./Problema_5_Iulian_facuta 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
nano Problema_5_Iulian.c 
gcc -Wall -g -o Problema_5_Iulian Problema_5_Iulian.c 
./Problema_5_Iulian 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iulian 34
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iulian 34
cat Problema_6_Iulian.c 
./Problema_6_Iulian 34
cat Problema_6_Iulian.c 
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iulian 34
nano Problema_6_Iulian.c 
./Problema_6_Iulian 34
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iulian 34
./Problema_6_Iulian 55
./Problema_6_Iulian 155
./Problema_6_Iulian 34
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iulian 34
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iulian 34
nano Problema_6_Iulian.c 
gcc -Wall -g -o Problema_6_Iulian Problema_6_Iulian.c 
./Problema_6_Iul
cat Problema_6_Iulian.c 
man fread
fread help
help fread
ls
nano Problema_2.c
nano Problema_2_Iuli.c
nano randuri_matrice.c
nano Problema_3_Iulian.c
nano Problema_5_Iulian.c
ls
nano verificare_fork()
nano verificare_fork.c
gcc -g -o verificare_fork.c verificare_fork
gcc -g -o verificare_fork verificare_fork.c
gcc -g -o verificare_fork.c verificare_fork
;s
ls
nano verificare_fork.c
ls
gcc -g -o verificare_fork.c verificare_fork
ls
gcc -g -o verificare_fork verificare_fork.c
history
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
ls
gcc -g -o verificare_fork verificare_fork.c
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
ls
./verificare_fork 
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
./verificare_fork 
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
./verificare_fork 
sda
./verificare_fork 
gcc -g -o verificare_fork verificare_fork.c
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
./verificare_fork 
ls
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
./verificare_fork 
nano verificare_fork.c
gcc -g -o verificare_fork verificare_fork.c
./verificare_fork 
nano verificare_fork.c
nano script_for_while
./script_for_while b
chmod +x script_for_while
./script_for_while b
nano script_for_while
./script_for_while b
nano script_for_while
./script_for_while b
nano script_for_while
./script_for_while b
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
./script_for_while b a c
nano script_for_while
nano a.txt
cat a.txt > b.txt
nano b.txt
rm b.txt
ls
nano comanda.c
gcc -g -o comanda comanda.c
./comanda
ls
cat a.txt
nano comanda.c
gcc -g -o comanda comanda.c
./comanda
touch b
touch b.txt
gcc -g -o comanda comanda.c
./comanda
gcc -g -o comanda comanda.c
nano comanda.c
gcc -g -o comanda comanda.c
./comanda
ls
cat b.txt
sh
nano fork7.c
y
nano fork7.c
gcc -g -o fork7 fork7.c
./fork7
nano fork7.c
gcc -g -o fork7 fork7.c
./fork7
nano fork7.c
gcc -g -o fork7 fork7.c
./fork7
nano fork7.c
gcc -g -o fork7 fork7.c
./fork7
nano fork7.c
ls
cat Problema_5_Iulian_facuta.c
nano FLO.c
gcc -g -o FLO.c FLO
ls
cat FLO.c
nano FLO.c
nano client.c
gcc -g -o client.c client
gcc -g -o client client.c
nano client.c
gcc -g -o client client.c
./client
nano client.c
cat client.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
ssh brir3293@172.30.0.4
nano client_1a_8.c
ls
nano server_1a_8.c
cat server_1a_8.c 
./client_1a_8
cat client_1a_8.c 
nano client_1a_8.c 
./client_1a_8
nano client_1a_8.c 
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c 
cat client_1a_8.c
./client_1a_8
cat client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
cat client_1a_8.c
./client_1a_8
nano client_1a_8.c 
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c 
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c 
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c 
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c 
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
ssh brir3293@172.30.0.4
Mz*3YzA#YzJj
ssh brir3293@172.30.0.4
ls
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
dasd
asd
as
nano server_1a_8.c
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
nano server_1a_8.c
gcc -g -o server_1a_8 server_1a_8.c 
nano server_1a_8.c
gcc -g -o server_1a_8 server_1a_8.c 
nano server_1a_8.c
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
cat server_1a_8.c
nano server_1a_8.c
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
nano server_1a_8.c
./server_1a_8 
nano server_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
cat client_1a_8.c
NANO client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8 
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
cat client
cat client.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
./client_1a_8
nano client_1a_8.c
cat client_1a_8.c
./client_1a_8
1

./client_1a_8
cat client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
cat client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
3
./client_1a_8
gcc -g -o client_1a_8 client_1a_8.c
nano client_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./client_1a_8
./server_1a_8 
nano server_1a_8.c
gcc -g -o client_1a_8 client_1a_8.c
./server_1a_8 
gcc -g -o server_1a_8 server_1a_8.c
./server_1a_8 
nano server_1a_8.c 
./server_1a_8 
gcc -g -o server_1a_8 server_1a_8.c
./server_1a_8 
ls
cat server_1a_8.c
ls
cat client_1a_8.c
javac
sudo apt install default-jdk
apt-get up
sudo apt install default-jdk --fix-missing
sudo apt install default-jdk 
apt --fix-broken install
sudo apt --fix-broken install
sudo apt-get update
sudo apt install default-jdk 
javac
sudo apt install default-jdk --fix-missing
sudo apt --fix-broken install
javac
javac 
nano client_1b_8.java
javac client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
javac client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
javac client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
nano client_1a_8.c
nano client_1b_8.java
javac client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
javac client_1b_8.java
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
javac client_1b_8.java
nano client_1b_8.java
javac client_1b_8.java
java client_1b_8 127.0.0.1 53293
./server_1a_8 
nano server_1b_8.c
ggc -g -o server_1b_8 server_1b_8.c
gcc -g -o server_1b_8 server_1b_8.c
nano server_1b_8.c
nano server_1a_8.c
nano server_1b_8.c
gcc -g -o server_1b_8 server_1b_8.c
nano server_1a_8.c
nano server_1b_8.c
gcc -g -o server_1b_8 server_1b_8.c
nano server_1b_8.c
gcc -g -o server_1b_8 server_1b_8.c
nano server_1b_8.c
gcc -g -o server_1b_8 server_1b_8.c
nano server_1b_8.c
gcc -g -o server_1b_8 server_1b_8.c
./server_1b_8
nano server_1b_8.c
./server_1b_8
./server_1a_8 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
./server_1a_8 
java client_1b_8 127.0.0.1 53293
nano client_1b_8.java
cat client_1b_8.java
nano client_1b_8.java
nano client_1b_8_2.java
javac client_1b_8_2.java
nano client_1b_8_2.java
javac client_1b_8_2.java
java client_1b_8_2 127.0.0.1 53293
nano client_1b_8_2.java
cat client_1b_8_2.java
nano client_1b_8_2.java
nano client_1b_8_3.java
javac client_1b_8_3.java
nano client_1b_8_3.java
javac client_1b_8_3.java
java client_1b_8_3.java
java client_1b_8_3
java client_1b_8_3 127.0.01 53293
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
nano server_1a_8.c 
gcc -g -o server_1a_8 server_1a_8.c 
./server_1a_8 
ls
nano server_1b.c
cat server_1a_8.c 
nano server_1b.c
gcc -g -o server_1b_8 server_1b.c 
nano server_1b.c
gcc -g -o server_1b_8 server_1b.c 
nano server_1b.c
./server_1b_8
nano server_1b.c
./server_1b_8
nano client_1b_8_3.java
nano client_1b_8_2.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_2.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_2.java
java client_1b_8_2 127.0.01 53293
nano client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
javac client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
javac client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
javac client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
javac client_1b_8_3.java
nano client_1b_8_3.java
javac client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
javac client_1b_8_3.java
nano client_1b_8_3.java
javac client_1b_8_3.java
nano client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
java client_1b_8_3 127.0.01 53293
nano client_1b_8_3.java
nano client_1a_8.c
nano server_1a_8.c
java client_1b_8_3 127.0.01 53293
ls
cat client_1a_8.c 
ls
cat client_1a_8.c
cat server_1a_8.c
ls
mkdir solutii_retele/
cd solutii_retele/
ls
mkdir serverUDP
cd serverUDP/
ls
nano clientUDP.c
nano serverUDP.c
gcc -g -o clientUDP clientUDP.c
gcc -g -o serverUDP serverUDP.c
nano serverUDP.c
gcc -g -o serverUDP serverUDP.c
./clientUDP 
a
./clientUDP 
nano clientUDP.c
gcc -g -o clientUDP clientUDP.c
./clientUDP 
gcc -g -o serverUDP serverUDP.c
./clientUDP 
gcc -g -o clientUDP clientUDP.c
./clientUDP 
nano clientUDP.c
nano serverUDP.c
./clientUDP
gcc -g -o serverUDP serverUDP.c
./clientUDP
ls
mkdir solutii_retele
cd solutii_retele/
mkdir teme_1a
cd teme_1a/
nano client_1a_1.c
gcc -g -o client_1a_1 client_1a_1.c 
nano client_1a_1.c
gcc -g -o client_1a_1 client_1a_1.c 
nano server_1a_1.c
gcc -g -o server_1a_1 server_1a_1.c 
./client_1a_1 
nano server_1a_1.c
gcc -g -o server_1a_1 server_1a_1.c 
./client_1a_1 
nano client_1a_1.c
gcc -g -o client_1a_1 client_1a_1.c 
./client_1a_1 
nano client_1a_1.c
gcc -g -o client_1a_1 client_1a_1.c 
./client_1a_1 
nano client_1a_1.c
gcc -g -o client_1a_1 client_1a_1.c 
./client_1a_1 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
gcc -g -o server_1a_2 server_1a_2.c 
nano client_1a_2.c
nano server_1a_2.c
gcc -g -o server_1a_2 server_1a_2.c 
./client_1a_2 
nano server_1a_2.c
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
./client_1a_2 
nano client_1a_2.c
gcc -g -o client_1a_2 client_1a_2.c 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
gcc -g -o server_1a_3 server_1a_3.c 
./client_1a_3 
nano client_1a_3.c
gcc -g -o server_1a_3 server_1a_3.c 
./client_1a_3 
nano client_1a_3.c
gcc -g -o server_1a_3 server_1a_3.c 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
./client_1a_3 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
./client_1a_3 
nano client_1a_3.c
gcc -g -o server_1a_3 server_1a_3.c 
./client_1a_3 
gcc -g -o server_1a_3 server_1a_3.c 
./client_1a_3 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
./client_1a_3 
nano client_1a_3.c
gcc -g -o client_1a_3 client_1a_3.c 
./client_1a_3 
cd ..
ls
cd serverUDP/
./serverUDP 
nano serverUDP.c
./serverUDP 
./serverUDP
ls
nano serverUDP.c
./serverUDP 
cat serverUDP.c
cat clientUDP.c
cd solutii_retele/
cd teme_1a/
./server_1a_1 
nano server_1a_2.c
./server_1a_2 
nano server_1a_3.c
./server_1a_3
nano server_1a_3.c
./server_1a_3
nano server_1a_3.c
./server_1a_3
nano server_1a_3.c
./server_1a_3
ls
cd solutii_retele/
ls
cd teme_1a/
ls
nano client_1a_10.c
nano server_1a_10.c
gcc -g -o client_1a_10 client_1a_10.c
gcc -g -o server_1a_10 server_1a_10.c
nano server_1a_10.c
gcc -g -o server_1a_10 server_1a_10.c
gcc -g -o client_1a_10 client_1a_10.c
nano client_1a_10.c
gcc -g -o client_1a_10 client_1a_10.c
./client_1a_10
./server_1a_10
nano client_1a_10.c
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
gcc -g -o server_1a_10 server_1a_10.c
./client_1a_10
cd ..
ls
service
cd serverUDP/
ls
./serverUDP 
./server_1c_1 
cd solutii_retele/
cd serverUDP/
./clientUDP 
nano client_1c_1.c
nano server_1c_1.c
gcc -g -o server_1c_1 server_1c_1.c 
gcc -g -o client_1c_1 client_1c_1.c 
./client_1c_1 
nano client_1c_1.c
nano server_1c_1.c
./client_1c_1 
tlnb
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
gcc -g -o test_client test_client.c
nano test_client.c
gcc -g -o test_client test_client.c
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
gcc -g -o test_client test_client.c
nano test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
gcc -g -o test_client test_client.c
./test_client 
nano test_client.c
./test_client 
nano test_client.c
cat test_client.c
ls
