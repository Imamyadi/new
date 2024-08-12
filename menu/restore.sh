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
BZh91AY&SY5�
 ���qs���?�������P F �  `>� �!@
  �  �h4��� �Ѧ@@��@ 4� hi�@44i�4 p� �@`�i�d � 4 A�� ��dCF� 1@)	�F��b)��z)��S2��SCj4�cT�@(�'�����=!�1�jz@z�OP�M�� 4i\?�x��e�ӯ�}gK�����Z$��	���"TU({�}�M��
���sCy�qfs��`C�h�G`�{�� a�,2f���Oq�Q
(�Jަ����?��c�w�!���vL��d��&�c�~��I:��b@�,	��lfQ�JޣH�a[�q-xqp��P[]M�Y�a����ks/e��nm���oS����lph���x���|�s�ѣas�;��[���a�s����Z75�:[�''��۴{ۋ�SSP��7����l�i��k���B`l�C-��C��m�C�:P{^��nlf���\ۼ���MC6�<E��̙(z�̃���m��A(C�%Z̃i�vN&���!8ͧ=���z������|�v�<�9��OM�t���37�|��	���{�=,��ޞԘ�hUP����y���js���a^��0T;���Z�9��8�`܊7�mLgO�Ad����6�ű���{Z}���%�x�Y,���8S��Eo>RFӦ0��l�D�r�)�a3�pg>��s��.�ZV��2���IwX.��Y&����T���MR���ڐ�z���fpzG���� �٭��mkku��&�?��!�yD��M��,>�jd�3�2w����4�[s��
��[Ekz�+q�s3r}�$�|.w��!���u
0Д5{��;C#`�V����k���&ԕ?����mn,mG�d����X{��(![�o`^�;�D<D�i}CP�|O޻f�(�s�0+Yq;�#Ȅ����8�.��<	�j���=������︙ꆍá�����1������!(���S'���6߸-vTڗ�!nI���
�9 fx��(5���iWy����QP����0�����f��� �8�6<�.ӘaM��������Î5�ø��!\5��P��C�`f$�@�o��;�m�K��ǁ�nt2d�m~C��8��0��s�7�<��w���Hå�GSp�򎑭������7��y��1kĘw�O��.!�c�;�0�x��A{n�t	�t�@ԝ'���C�._C�d�>v��<�s[��4x��k��f�a���u��IP8�!�mp������ɐgAd��젽�s��ǘ��T	6�G��.kHh���i��S0d2�q�H��\�`jv�E��BO;[yMf�;��7�h����kpw�&�2Q��RF��L�E�A�!��7E;F!y��Q�mLCx��AŽ�ք�����tu�os?`��0�8��=f�����B��^C����@�N��Ҧ�����Z�.Z����BXn�\l��[c]�F^��T���ѽ̹2pFe���.Nś�b��f�3As���08������h>�wCR��ƃ�:X48�V��ip�/B��u���y������
���9O`u�5\��,�O�
�AA	8�@r_;�+�1� (0�]��B@�p(@