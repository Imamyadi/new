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
BZh91AY&SY��X  �߀ ��%�*����Psc�Q �%OM�Ș�R0d�{T������{T�  h �i�B��T        D�OI�)��h�MOD� ɠ �s � L    1�����e�"�A�9Z�ε�f���#��R"5�<#F�H��ȁh�Ɉ�����9�      �=���9t�i��t|*�잵	��c��Tk,�ן�i%�5���N�6�YB$��̈L�T}T��WOe#0�e"�>��W!����v�����H��0A���!!!!!!!!!!!!5(Фԣj�"HHHHHM�
tX�b[��T��}�d?&E\��%Z�7�B����F^�S'`<ͪ?����NxHr�@3�^���Y$�|�93���/��%��sQF�߱�= �ψ����bd�˺`��w�S0���Q�G1��gQ�]Y$�I6�|Tu(型�ΣͿK�vBD�E�gb��<�z���ô���7 �D���C��ƥ��7s�*�iixױ̚�$1�w�T)L��QܣFTyG���=P���A*�F�		��d�s7�sEB�s�F�X,"�Nͨ^��i&M)�h;]��\^�j7�Q�;w�8[x4�����焁 |�yz�QͺP`i�qG��4p89�Y��J��ȣiK\T����G�onQŸ�ی�`����$A��g����I�pQ������I$�L�Tu��Q�6�*5V��'<���[���ܑN$&<(V 