#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`mktemp ${TMPDIR:-/tmp}/bzexe.XXXXXXXXXX` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> "$tmpfile"; then
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
BZh91AY&SYr�  �_� �}���?!�����P�t����v�����&��bd4�4Ƅ��L�z'�i���A�i1=S�jjxQ�h 4  4�$	��Q�C�4� �h@ )��Ɣ{QO�j6���    I&D4�S��=5�   E���<���}��A1!���������AD����֘��CӔ�G|�G�X�~�2� ���~,��x�C�v@1��EF��SYը�v�:�i�+���k�e�:���o�to��j�S1x�EѰx�vi��8L���7G�lװe�ft��2�U&խ��I�¨|ҷZ<ƚc67JA�ON��9�^�3s�����1N ��Tn��6�ϟ>�&22:�ꢥ���hw-#�X����EN���S��w�8�����$
��-̕a"yM��|���&��%�N.�^�?q3<A.Rb�\ϰ��Z�t��q����g���.��Cƍ���W��aCY��r�Ռ��E����|��B���<t1�r��U�	yt !�I�O;uf�g�Z���X��W�&A _��mld���JRe��w�0\��#y����4EFR�¾�F3��n0���/�s9���0|�qh_����[�6ȉ��Vˋg����v�}d�������S6��6z�8��j[�~B�i�2�:)t��Nl+[{�]Ugz����opY��Y�H&Ac�dF���5�������lԀr3��뿎	b��1a�N`��Y3�wS�E����a��&<^(�z������RN�vPvH�m�I-e�nky2V>�Fd�@�&,�
^B���S�Y S�+��+���|O��D��pAmN	ԥ���5�B�y�I��c%��#"�N�Q�ˮ����v7m�:�;v�<>�ov52:w��Fe���;y�WG!I{�ENj1\v�4t�Q"���S���^��=�D�vm�!�'�
i`��=vcq)p$X���l�eF�d;��X�z��6��P�0l�<0!�UY$d-�*,�
��L^�`eJ��6�%�dQ�Zv1I���Ķ�Xw̍yI���F:nq��f)��[D�5�F渼���g"E��zѪ��k���I��qM^�1���Z���Q]Q���
ˠ�(�DР،LSuHAx�^�l�n���؉�_i�"-��O*�jE�# 0;8�R#S$#[�Ì+n��t����.'ϙN��I�CV�`�]�J��~t��(޴�1`bs���b�ښ?��.�p� $,�J