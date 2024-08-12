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
BZh91AY&SY6�ד  V�A�@ ���������   @T���%a(F�h��~���@zCA���l���&���S�H���S5F��� 4zh@q�&�CL	��14�@J��MFM=1  4hh4� �^�B�i��\�����3I�|^L�3&������4p�i*(B�!���nO����#���h�����Ɛٓ��A�0Ӟ^��cY$����|�
1��e@�aT-��b� �($1��챧b�Q��)'�"�AEf
�.��C�oIjP�g��R���JtT���TMʃ��ڱ�ʌJgn!\�K6�w�9Jqڷ^�і������pNU��O�y��D�*!i��;H� %`�QB�f����������E+�O�R�Y��c��%��*[�9h;���*;	�"��F�5�`n�ȐE�u���ʷ-�����qhS�E$	�`f���������0��㢭&0k�G
n瓻�ɿK�A=�7��w?
��I��b*B�&���s�I<�H��
sŠ�y:��C)x�R��+�R/QR̸��ŵ�(̝pĭW��Eh����*��i��p[�csN��^3�
V��#���Q���:�\]���p�� �5�=��/ل
D�p�����H�
���`