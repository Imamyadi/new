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
BZh91AY&SY�jȚ  �_�1s�����������P F �  P�ݓT�ZU�)JA(��1OL���i�CF��2z�ha�#�h�Ɠ �@h i� h� FL� $ �	�T��)�l��4�dM2�H�M   p ���d 4� ѓ  �I�'�?J��mD�=M�4i���C   44i��\���[�^<=����Zj(֢B���v4)���!���(�$DN�E��&���K�9�;2V]�Ğ��h�I���Q5��0ۡ�f'���yQ2U*u�v��MZ
?SG�؈VZ�c���;�
�-M��9d��LNU��t�T���V�)Vdݲv&}A�����kY�.mk��̴�RUˏ���@�tp9	���ʖL��M�Qlֽ9E�J~l��5�z��|˱���i-������Υ�d�ԙἀS���x<^*"�e���p�0��F>Y�z������?L��E��m'�V��n+��]�����.7;,��v��޼oc�|$��b�cM����ˆa��#�Y���,�f���g��)�H��u+	˯ZBvB@�	X���BB�3�a5bB�)k}�3�L�0�)F�D��O�n;�w� I���Q��Mv���QϿ��&����$������-+oUuc;�.�v?En %c�46�tmt�0q��*�������#aT�ce��,�n$dy�$gϮ���ODꈳkg��+�,>�6
��[	�}e ��D1�;�ӧ@'�̴xZ��2�e�b���,Y���FU��n��"WI���a�[�^5u���K��|	K܈##��-��e�yD��t�m�J(WCĠ�
�1���6�ۃ�m
9!�Q��H#���.p�0�������'�Q�*7^R�ŵe}�+	����%�T�Ms3=ͻ���������]+��;6h�r����몲�3�a0co��w�5 �HP50�a�W�R4�8r����;&])����ta�j�U#\ȴt/��60�A�Ԋ	ڎ�U�q��IFZg�Z�4I��I�d��7~V���2|c>�z��)F
�c�dpVK��	��!�F2���N�T���٩l��vў��p���hꁜ;j���i�P���f��ˉ��WTz<{��,��������>i�U��è��\��X[s�w,�!�PD'�k�
���M�8�Re��fHT�I_�g[4��(T
B,S�k��R��q��$���֦�X��0�꩖b{6�Τ8fQ�1�(��RӶs�6�4L(�M�4��n���fQ��dG�� �[�ل�*JQ$�N��'�L��m�Ň�1V5�5�[o�OA��¼e3A}p�ݡ�VΌL�a0*�:��^�J�Q9n�"����$�$k�=!�A��'����2 :�굤����nΰ�k�V����Z(\���)�9pX�ݿ��K�r��D��H72k�6��M��:���@'	\#��߈���q �`c�.�p�!�Ց4