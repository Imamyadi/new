#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�0��  �߀ ]� � >���@� �A�M���&��T��0�&�	�4�h�@di�����4�`��(�S�=�������\+�3:}��VF���?C��$�~��@8����$�H$� �7o��ϸo̎���Q�=�ե�G��k&,���=�v\���Q�m9��G�;���������'��s�u&��vDِ���d���Q�lFY�u����m��m�����������]�zx�<}�!�i�i��w�-��e��o���/� �f1�]�bk�0Ո�����^��<6���v<�P�2&��UZ�jҫ���Mr��>��ʶ����FC����"X�q�l�n�L��B�>�a3in�F��rπ�C1�t��?C�.�p�!�a�