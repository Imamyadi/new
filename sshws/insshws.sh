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
BZh91AY&SY��  [_� y�W?oߊ����Px�z � 	�	� L Úb`00 	� �G�L��Ma`FF ��4LR&�0���=#Oʞ��F��i���J�@Ѡdh4�  4h���5�O2���6�Z=G���@�D�N8�����(����Q$��t2L�>d�v1�Eۥ	☈q`i_�5D�)]����5���� ���/�""��ѣ����[<+mC�C �&�!���͵
�Q�2��D�����������7�'cFڛ����mh�s�7�8�Q���k|ƀ�l�G�����̈́�0��CFC�G�CX>.�����������SF�����,�@N��'��1>B����J�4�,���	c��m�G�g��8�3F�V��B�a����1,t2m|
����_�f�6BC{{�Gj���}�� ^P#S ���f�L,4}�ss���.���l�sp�a�ou�cјT����hɐ�ke(a�)S[��A���l����[!+�`�����֪���87^����P����������I{�$@�����Z��Px��n��sS��~-N��:ڌ���:�>��õk�1�z�>+�]Oo&���04�NMhv?�{�Y�Jd�Wņ 7�޴B�'��ք�c�����ۮ�p��V��06��K��L�f�q\����ѭ�@�6�ձ��%��kܶ�s0����v: �t���7�\WXd����1��Q&�聂m:����w$S�	�}��