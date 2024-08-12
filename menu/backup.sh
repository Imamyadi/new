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
BZh91AY&SY#�D�  ��=s �����������P F �  P�j;.�]�u�]�hD��56�S�lB2a��h124�)�m@$��e�@d�� h4  ��d ���Ƨ��� @ � 4   ��h���C!��h� �b ��LI��m4��Q��ڀd4d   �" Eٽ�T�Y������� M��B�1���{��j3���1�����8�n���Δ�^�i��Ҧ��ȯd�S7�I��xڙ���=�D��-�^̑R,�E:��?J��40ź�<��a �
���Q2@����* 7#�����cå�K_Wa�\��e��R�
I]7VBN8X��*A�5�n�v~ضު1�����s�;�kK��&�2!�V�Q�k �G��7;�f����L�v�c�!��R^($+"�@Ak>kY���H���"�k��8n�*׶_�u��2�d�m]�ۼ�Jg!��<�y�

X@�@z�+a�#,lN�P ���Y�&0|���2Q�����)B��O�����p��� d�Wh�2�74���X���G�(r��WI�-�5�2|��8E�.��8��|���	�w�>�a�k���s?vӴ�ƣ�l�!}DU�L�{�]aQ[�$CsY�I,l䴩�'�$��\��i�U��V��d.H���.��
q��Q�iJ�6��=��ˌ���3&f`C�?����t����_��Е�*��E��2e��Ԉm&�t��9����SDPi��6_qrJf!8��q�A>k&_���-���E�%��$��I�@�|��S1ZЀ]�|3����_h���hb!(p2�biˬD�)m6#�z*:�"Ɉjj�>V+��6���x��ё�r�:�r��AYʵ�V$�!���-�a8�:��>�&��0�zA�ԌvVM����IB�7,���ef��>�N�$��y��=hS<��Rw�x��BRe�S>/ʙ�x��ue،��1͐�y��^$e��"•%ˡ\R�]�i�� 6[RA��#�'0�0��ŉ�U�Ww-$[J�4Ls��F����\��ό��x�`�	}5�0]!P�ȍ��3��.��)��N�1AF�9�4��X���d�4"�J�qyZ}�FP���Û7:�;	���Y�i��aP/FE�8��-�)br�uV'S�-`�2H�d�������F��]
׀�&`Έ1 %�Dh�Y�P��N^Æ�J'$k7�~����	���8�2��y%�È�KX�]�}6��"?��N$!p�����#� ?��H�
}Ȗ�