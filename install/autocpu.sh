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
BZh91AY&SY2�4� K��!x���?�������@D@  P�(WT�   ���)�Q���LjmF���4`��S���=OF���̚hd 1@0@�F� 2��& �4i��L�d�M�i�0�&L��#&A̚hd 1@0@�F� 2�� Bb5=��ڧ��I�=OĆS�Ǫx�`�{DhjP�̆�G���]���W���S��e`J F�i��w}�8�#��7Q pʨ��h����U��U�3x-��z��R{ �t����}SN�y��#t�s��R�6�:�a5s�`�]<�(TǇ��Ǩl���u��Eh��+$f�"5�ʩ^mo�&W~�+����ݛ�<X�(������� (����?~�g$����"��XÖ F�A%zAEqc����; l�z4���������o��Eua:h2��X�6��~�ER2ӛף�=�"�Bx�LAL�0�l�AA���	a�#��m��M��"�x�ғ^.n��5r�G���hjhOBX>��%3�=Ls2j���:C!@����Ca��_�j@C�;^Ј��ć�����OG��RYUE��3�>��u��[R72�C񌫄]I�ͭ6��zj��b�}��}��6��U�b�za�� ��["*Y���v<5b���8A%C�O���M݋�\[s`�v�{Y%z.�ȫ$f{ aT�D��{���xyC#Z�q�"����&�S�kJ��'k�=ZisG�Kz�u�;�"�'��l���gRD�*?^�m,7����z�X?{�u���#���{dJ]�i1"�	a�DN�W��be!c����%�\�0Z:�����C�8(�5���Zw��:K�jH�\�T�KwYe�?�h�R�.sma<;�KC2B2��}f�9�����E�!�Д���	�C��˹�?�E��n���4�!fjΞc���H�[X��-��"&���BKN�$b�XMm���18@���q�@@�&D�-pU
G���B�j���z����-ᤚAB�F��#W1����
��'����"��R0�PX����`Ħ��}�����3 ��fF�RD	�� ��Hq(;w~�0�M�;�ubH����lȘ&e�d�$��B#@$IMcvN5T�lZ����Z��)�4��S�TA?<1m�槌>���n`Y�y��A�$���x�r�PR+^��v���^9���]0�R��P/�m>�, gj��d�ˣ�r�̖AQL�ѧj��EHPb�gfJy�"�Ȍc�@�:H�;�v&/�el�X�B�Z5u]� D�F�4�D�1� �h �
�*X����B��a�|-rZ)�E���r$�7�Y�}V��Y�
��=�ʑ�ӆ�($"Q����g �-�[����q��ؒ:PY` ��G���г_�"�6�|p�ω�`�&����H� +�1��]��B@���P