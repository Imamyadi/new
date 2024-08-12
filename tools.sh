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
BZh91AY&SY��d�  �_� �}���?!�����P��	��[m�Da�'�d&F�4�z���&��hɉ�	���0 �`�0�(	505OS�F�    bI�=��=OS�O(mL� � 4 $��I���Oe(y'�yG�� S�_��y]����6�"^C����_��n��T�7�R��ߌ�Kl���`���Uu-Y���B�����7��8�C�"�]�Ś�Z.di�����}����ͭ�e�uO�"��Y���7���)���U�ߠ�=���K&y���3e/��������|��k�T�{��[�;��6P�%L5Ty����:Rby����w�>F���������x,k%`_h�m�xu��z�2�/����
 �/��Q�QI@�u�SC�]��aK��;���Q�ha @ϱL9�����>�0:!NI�L'eנO����ĩj�QZT%@g,@/h��o��ǈ�N�p�f+�G�0�� \�u/���L�[�,��69���M�~���-L�2�w���p�Q���8�C���8�9�a�b���b�S�$tO@�"^���@��0q�X����x��*����ùrL�2a�C���{%�M��uҋt��q:��^�>V8�-��a>V��H����%���FiK��7$�a�U鶇Fn�?�c�����P�&W&]q�MR`3.{�V�^�̗qV�i���v$=�}1$Asa�~|ƛ��I�w ��lրsK��|9v�A,B��*mZk8�^R���O�*p�;X�c�:̥ا��X�"X��RN�"-pbLD��\�!>��lyJ�r����0LZY�xj,"Z�+�5z�k���~^8�6�f/��)D�JPL�Φ��3�u�"RD9��CL"���W��6�)�mn����lX��!��[�h�u�ƈ�bd��!I�M����"�E5TC�"mtG�1v�/�QF2 HB�1f�a�bYϣy0p}����5�Ŝ//���Wчq�q�N-��8����/_L��+����E5�cuC�`�^&S�q�ca�D��1ĲL6}-�b�dXW�q߁}	B�A�6s�!�X��=�m��͑�ڋH�o�"³j�mH��#%h�(�GR�u�Ì)PLU��ꌌ8����]�Db&�G�$B�����Y൙�N%�D��G���ᯮޥB��E��!�V�12t���Y��_^�,�Ħ���B]�	����d֯�Ʈ��]����r7�WF4��7������?��H�
q� 