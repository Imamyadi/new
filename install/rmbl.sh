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
BZh91AY&SY��#� &߀PP}������~����P� h   s	�4�F��&LM�d&U~��3M@C@      �h�F��i��A�h Ɂ�&��4aF��14F���J S�ԙ�?)�=�b�Q��O�L�������Z{��u���O������u�^�.U,?�����~���'��;[*O�b���T����>�n,$y�	����wx�ŭ�3�O������(�qD�d�2h��0��/IH�('����7)+ED�0�$�U�m$^-�3�;�T���`8�d��}D�
t�cfD�J1{m���M�t��^	�h(�2$�'	6}[Ľk*�'�z,.wP�����h���=�o)A�� �]X*@M:k� H �g$��#����}�4a�Ð���'�&�(���:�ji����*��q����>'0�c�%&�\O����׭KI�P�>)2��v�d,!�I�y�4�^N�l����Rn��R�̛D�.1Jt��<KMgQ�T��d��n-%��BefG��6�G1�U�$�EÛ��z+��G<E�̟��&rb��d�ohE	��:g�����t�L&�|'r����C)2����t6	��)������?/�?w�~�vI��n"����G��3�Pݱ2��j79_������_6��9-��q�G�ŉ9Y	�϶%ҏ<���N҄�RB���#�X��j���0K�a58d^,I����h��*J���}�����
3��ʖT��ybȔa*�K�,rC3<��K����(9ɬ�X�I��K�I�:��p7I�K	�W1,_��)�Ao#�а��x��NSdr�	Zh�,%,Z�KQ�k��ׂ����e�F�:�2�J�����ZFȚ�$�j%	�9Ir�ј�X$��	�&�Q���1g7Zf�gdΖ���=h��u�����9TQ�='2?���)�vY8