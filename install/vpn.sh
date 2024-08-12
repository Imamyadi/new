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
BZh91AY&SY�#O �߀R}��/ߠ����`�{�����n�j�   t  �BS����d� �@h 4� 4��?R��   �C    M)�P�        MRiO�G��S�f�&���F 	%6��z�P����hd�=5��  )�	�F� 5��	���Й�I$i��ŏ\y7ǹ�~�~��L4Y߆����� �)8e��p��l'�A��`~��+�91�A�p�pyv�,��9l�>[�M�����=QL9:X~2҇���3M�;�BV$(�HI$�iR�Ke=%�7���u!f�k�m<r(��O.��I���߁p~�M?�Gzp��J�`�yҤ������~�d�c�V��8��IS�p�oH��5n�D !�c�+F���*��S<�+
۴���M��N]�N��|�� n2�p�y���ix=�)��VL钹��Mr�E�y�Th�!\g!�t>*�¹o�J$��K}�:�+�l,J��a2~A"�|�.��$�����b��G�t|rȾ�e�%*WkT�c/-�w=�4b(���F��~73B�����Ƹ��Q>�s�� I>�]H.=�������}$ z��i�`}	�ȷ�\�L���1�����P��\{䋚S};e0�M�3l2乮�%R�pǊY��k�Q9d�ǔ�v��II~������@D�_S�`E���F���gHAeu1����
隺��ĆaiQ���H�UNIP4af@�B�
	@/�r���g��kd��0s�\y)R��U�a�ٖ,X�z��n�]��*;�/�HZ5Om��F�4��I������ۓ��DX4bă�O������(I�\�4��0��~�{��e���6��ݷԗ�;6t?{��8�6�e�g����3%,��|p�B��v���@�'g�|t�Vھa�f�����!�E���-�9;�)Kh�<��>X<R��R($L�r<ߙ
�/�Om�ݵ�"�܆����I�y��g��p�# ���}�+`f6�'`��j��lDDw6���������5e�#��-��Y �G*R��7@�!�������!M�e)���C�1*�lJ̬M6������#A�G�v�j�%ڙ>>��M�rtIT�Q$�6p*�RJ�1?�����/_��I ��O�ܟ��P[`I=	�ܞw�+S���N}�.���@V|����\Å�#���[�;���`�[5>������-I_�$���D�W�Ih>�{�u[�'"jy��1�m^;�׌��u5_X�5/,�j��Yz֜�d%�I��L����iP�HK����j�#���y:��u��+�_u9m�	��H�"���^2�p8��y��[��:8�(ꘄ���TM����
�Q��d������la�R�s0����%��	rZ�u������$�5l�(���T�,Ġ�I��m�O�T�pUp]q*���(��GmB�$x���)��BĹ.�@T�T7I ��T�d0�EEm�0��ΐ:�Ѥb5%���ǨF��[�������g�=(�>6�L:�>t�f�kX� /�{Hp�!K[���H�����H\n�w�@8��G��@��q($iP��ԧf�e�J��*4-�j����1 +< �+�{SٲwA.K �(��d�� �*Cx��F	��	&�μ��,����8�8f:�&�:���J�����[��ׄ��M�X�������c!���i����� 
Ɖ��rԒM/m�+Nc$Z�H���GUw��z�͚�����P�v��bX���6$u�abM#p��Yat�����Զ����J`D��:A�Upm	�hBZ��*쁍��Dۖ;�7���+�6�	��T�`����t����(1�3����=Iوۺ2����I���B-�,v!�.J^}Xa�@�B�	���)೹؜����Uގ7������H%@��3�����,��<]��a�|�~�O�.�p�!�PF�