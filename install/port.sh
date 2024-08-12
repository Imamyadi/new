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
BZh91AY&SYg�  �_�<�}���?�߾?���  �� 0 @��bm�4S(�	�=!��3Ph�z��j �i���A���e2=M�Ѓ4�Q�ƈ�p4�M���F�d��4ѐ 	��L�Lh���Q�F����P����Q��8;6L[���9�2��˝��쬣d��z����&c��?C����&�NpK;���(�,�$��yi��s�{�\a���LWgg���2�T`P��r,�3$��F%��ax�qu��P�@jx'ݶ@(��]�LH����%�#�p=[=%0���K���[�Fi��X�sGq�I6�4M����D}@�|QC9��^:�2�� ���a��������c7�X��'�09w�IQd�@8�q$y��r
�����zX>��@=� �Ԝ�i�����2晹Rs�-@Q[Q�J��@� �o�ILT� J���U %��r)|�ѹS0t$�l
��n�m&=ϸ�Xd�q� �ٸ�qH/����q�K�(�V��$F}k�D��"rlK�eb�I�`U���F`	_���vvM��'��tC�C�:=f��	p0�)]���d���(�ڰ��
'8C�s0�H��	��uI���c������kѓ*d�I0�Q��ِE�^���%�E�.���͆�b��Ly��3c�-��VPoyw�Ì�5o �A�� �4i�C 5�(�_��U�Qi\/�M�H�.�Ht�.�k�s�(�pH^R����K���a��%oY0^+�� 5�� A�� ��X�����rE8P�g�