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
BZh91AY&SY��i ���E�@ ���?�������@�D@0  `9�/*�V��1{���R[V��&�ޒ4�hhh4�@bb242JdT�G�O��@       �M$m2�A�  d �44Pz��@~��cSSL�i��@�dd ��24� %�4CS�h��Oҟ�z��jd'�� ��i�E4d��O	��I��Lh���OP$d=D�D!H���u�v��E��L�};�r��C�b6p� ��Ĵ$4L�8%�s����hh��E2WW���i0$��A��PĮ����%D��	B��eYbI���jʔ굎I����$D@/�D�ܜ�S�DaE�{�!	���P)64l�������D4�+�[��bQ_�L�]'�ݩm_�*�s�d��2j��      �Řj�١9�Sn��I��o�iC�XqQ�zb"ڛ�	������5��m��B��!�K$�L�%�$AD���"�9��Y�q�U��#-m:#B�^�fI �B*����M"�0��>4��B#Ii�/d��C��'O���݁g] ��:����V�,��C�����&�V���+��G<�!��.�XfT.�r�x�reM	���f�P�����h��[w%E��> ��o|0h��q_� Z�#*��^�U_��B�!BMJ�)v*�7*ԷSB���)				��C~��� OmOF�w@P�02dؾ�������f��� @4�Ox�� F�}j%50Ns����u�tY����y$�E��0!j����s�Ɠ�cUPthH,�U̍��JXe�q��[ �&�~�����Ϙ����V�ėdI���3����')�xA������l�ϯ\�V�����J�0U�5t�� ���7��8�MR�Bx[)��r9�L�cRIF�Q(�ě� �o�$�K�3«�6;yUj�+�3��������N%W������$�Z1t�^�fb :u�T�B/.M%
��*X=����T�5/WI�6�x��zO��ڄE\�I�p�2�2ꪭ	�.�"" ��*�/+���Y��pi,H|*���m�;��@�m(+�Y,7zJ�*ֻ��_?��v�e�'dl/(@X#Ai���A�e'���<�TC&����~S#tk���:��$@�M�1�̔�H���,Z���}N7��1�c#�1�c�1�c�6p�!ʾ����9��Ⱥ��DW^�!
����k0#p�Z_HHθ��9�}ș��oIP3=C@;�"��U���Aq A�Rqf�k��B�M�l�A$�$�$�iOPԇ$�� �P�P#4�����Y�xUtU[��������� t��ah�kF�}f�M�n�W���� �$d1f�� 6M΃�o��E�k���Uq���8zcp�6TBBYWCR���*�[(dr k�NʻI�ѽW�q� �fma��*�H�[�+�$�{U���VU�Km�w���Bc$��;Uj�Ԩk]�Y3�n$@@2�YUU���8�K�ZW����M_�+f�q�G�NeX9G`,;����N#�1� ?�A�H>���  �"��"�(HLW4� 