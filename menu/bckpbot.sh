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
BZh91AY&SY!�U	  ���g�� ����������@F@�  P[ջm�gw��je6��S�h��������OP ���h�&Hا��4����Ѡ i�@� DMz�=A�&� �A�@� ��@ 8A�@ɠ � bhi�i�� 4I�� dҞ���&��M��6�i�#j=#C��=A�4�H"y_��2ĒZ��+�P�	����b<9�9�����'b�i��`$H$0*������C7=�F��jGXP���˛�\�����D�[+B��A!��b�P�D�/��l^���=��`�0�{ޖ+7�����|!M(̆˼7^���)�d)�ƛlh��ix�@4t̩
%��ʦ-[��UH��a������0I�	9�9�@��BY`��3,K��k���"Kro�dڊ��H�p�'6���k nUY̕�#vʋ�����wI\0�`�*�����D�̥!�%,����P �3,�R��,�X���MZr�=�*�Z�1m i�ss��0�H�bK��i}��*Ez9M#���͸pz+7x����� v4��5�P4��]�i�fo���-SE1��&(�Iq噤��C���[f[�4TK[�cl���H�a��)�B�����C7hΐ��Ԋ(l��){b�&��s�ʂWqEL����x ]5��GD�$�Qq\���=�����X�(2"�W-.Y��ƔyO�C��.]�B��/�U�8T� �&\"xo^f����L�:�1�G<o<�`p�:�2���0�D�U������]t�Ҳ�ICԙ�d���������n%��O�nl��6�G*]�#\���WƵAo��B9��c	�xI�S���'g.�;t#9H\��m��k
B	TTy��쟈eΘ��wMj�����Ⲳ f >�;R�M:wS�2\��5j���ƀ���Y"��&���fc���h�x���ǒЀf;Y�f�ɻa7*�F��L(��H$N�*\�1ю��1k@�QvZQI��,bD��L2"��s[L]i���t��J�E��,
5���-�����EQ":����5��2^�J�ĵ��9	��l�P�g����A���:�i��{ � �� Lz��W���!�c�=�` ,C���)�B�H