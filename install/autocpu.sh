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
BZh91AY&SY�kC Q��!x���?�������@D@  P�J'F  BISd�4i�<jdA����6I��#�ښS�OSM y2�P�M42 �� � b�M @L� @    h    �M42 �� � b�M @D� M��54�mS�O&���=OQ�5P����!
"%�҃��v˲�&���7	�LD��=�>�\����[��8�\��h����D���<,� �S?'.��*>����a��P���B�F;���o,%��c']|�֋�瘴��:���=Ƙ���Z���0A�t�e(�����	-����nוt�a�th?�p�wg�6_
r��]��Y����j��a�蜐�U�T������b��B�I�"l���0��7Z�e=��o�+;~0�w���4��+^�5�����s�l����5~g��T���z�
�PCd�1&��D	�G���GI�(������	McL�;�F�>�@5�G4a; 6�%�찄�b	�|>>?#�R���d4y�?t�z ���;�G�Z��H@obCД#G������E��a0��I�,����V��*P�+�bt��F��BȈ����E�?�sA���9c�N����ةN�5i�N#%�2&rdt7OU!�e��ӄtb���K��(��t�@\��iJi�,#�舞�8� 	Be��
^PG��I����c)��ß�w(44�䷝j�ZR�_1��A���I:C����J�[?��J8�U��H!�Rwy6U��$���hk�*G6��E��9�|�a��T�A#�Vz��L�-psB�{"K����� ;��=��B�H�I*"i�'����%({fd�	����O�h�����`Q�z��f�#D�w#�5��u�%Đ��+RS5���]&P���R%�
o/�~'��x��6�����k�"O�k$���� ��E)HT���f@�U�}Ľ.)#�//G0,�d���
�L�dq�#����oi��J=�E�4�H)[$b��!��l�>_E�W�9]��D��L��Doj�_��t�EX.S��sr����4"���h��`\��Ԛ��qK3Y�R��boQ�7�U��k��ѳA@&hۺf�hȥ��MP�DZݥ	ʺĮ�U�|�����@��E�wx�Uo+!?t��Put��ixm�0Y����2��a����W=e� �0TN��50s'�������T��R/��=�� �D�l�z��ի�w��K@VU�j׽B�)2GK�B�=ȶ�C�1�
�JB��;D��Ʒ�"�_N�N��)���S<�&-�@$	Rk X�	+��6�> �E�j�x�j��W1��M,���T��m�Y�U�h|���S�$RLD䖴ihfӠsK���U����;�=��"�@:4@�|���j� 0=�/&����k`H���c���c��ܑN$�Z��