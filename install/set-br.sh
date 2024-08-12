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
BZh91AY&SYa߁  ]_�@y�&e�����@�h  �R'�ڞ��SOH4i�24Ѡb4`�����i�� 0CL@�=FA��       �&�4&�4��6ML���C�Q� :���cO"w�_�	�	�(�F\VD�R�b�S-�͍����q���������3�S��S�w��&LQ�ly\F���S��+�ܹ�K�N��Q�eF��*�`����1=7��G4��ھC�Zf����5�6v86f�埁ٸ�d�*^�b9%O�ޛ�wR���[�66�rc�fE�N�UB����<���?V�<�z>�Z���h�������@/������>O�x���5KǏ�黧9�`��uBD�`��b`>�f xG�Aʹ�:
G���J��8B��loK�%�����^��KNd�������67'K0���f���Y�� ܂��D���<�=l?>�=q����n��@�v�̔aY�ŝ�h6�0v'!�5�%ju' ̔t2�ph��nJ*�R�,u��8i^�ѱ
��8���\��Mo-�yd�	�jp#T�ҲO˻�I�nns:e�J��/�{�74�C�3YSu�g��\��KGmå�oK�F�F�z]�С�ӡ(�lE��į�.�p� "ÿ