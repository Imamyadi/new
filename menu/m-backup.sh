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
BZh91AY&SY'q ���� ����������pF@�  `
�|Q^���={[Tz�m�R��(�h�z=��� 4 �L�4h4hh =C� � iL�j��$�M ڟ�h�  �       h���'�~�2 ��  4  d   @ 2   �h�      ��4IMM�$�E����3P4hf�&��4d��4 �D�M M�m4�頚i4�'�b2�j1i6��"�g�q�C&�w�s";��/�v�Q�)rDK鮴���-��|�jǵ,��H�	�**}���QA�	�C���m"���E��ʫ�a���M�c��OSi�&.0mgMd�6��#�l�ߧ�����B(�?��.g?�|OM�b��|>HK�����|�����5d������y��L���`Qb,���!'��X��%�r.���^���ԇM���D���w<�e�}�X��!��Z7N���=������Y��V��H%Y�9%�uƑ�AnѨ�&T@l�^��[��5��wm����7�Ǥ��4A��D�GZ Z!�N)U4���!���$s��rʭU����֐�u�@R�G��<~=�����!�	�2�&��J���ڿ2�]��F"َ>�A��s��a0�g��S�q�SB�;��SԴ����C��d��yP��� `��aז*�[�}A����Mvʊe���s�jѐ���r�@DFHD��aډɂ;����]���7��0h��O��2P�&^�/&4�)��$�FEX����4�A�g|}z;��%��'J~R��)#�@��{	� ,N^��6D�C�.�V8`N�_�S��@����D��$�2�ICol��_N��Ԇ\����* ����䀸J�Pqϫ�b ��ೃ����:�0�@�׭�'�+
r�*�e	C��BUH��v�boҜ�y�5Y��1N<�! #퓒A���i����g�B���ß�tw��[�_a���M+��}F�\K� z$�q]���� ڐI �p.B�� �U!�����	��Bܰ�z=���=JNr�*��#��>i$�����8�� �eoM�m8�=�W�tV�̀Ôt=ƫ_Yk�9Hl�f l��t�q��# h��Og�*�t6�M�d����xQxI�rP1ޏ�W�p8���$!��(���m����˽���幽��9;�.�h �ۚ�� �H� ? ���?�Η�;H�?eH8�&b�<A�H^H6�O���E���y��.��w�F�Rz0\	]]��L*x��[P�{U4g��i���ΩG-	_qe��{��|�u����
�w�Վ�hLN�J�(�4sQ���=_7N[x�[;o�v�<�,HAG�テ�Q[���HJn�']�M�P!�3-)��:f��P����
֠��AFw��;��_(Nd��q!!�Z�<����%:T�ɢ�u��b�(��3B�9!o
�D��cl(O&=�\Abr�� ݆�����[���|B���2K�����}����l����p�ŀ�r�K_d�����l>��9N����%�Ov��)|@��W�b�b�]�Ѭ�Y^�&DO�-3:�*iA�a��ι��rDC�B��p���/���ϣ� �@՜N����ϫ4 I�l0)�n�&z����v�k��t�*o6 �(���q�l /{������K��h�q� 5J� \k<�R�BC!1�5�Մ���C�	���,h���&g��Vȁt������zEN�9m)8>��`h��3��3ل �fp�KM,L���]|U�&x�.'|�N�u4���X�خC�����g|O'S���;^V�9AyEC�����Nt�'�|�nў�
>�����A��-j����Wo���$�������7�i���\1��X�,f �8��i�N��U�^�׳�'��\2+� �i T�.��⼆g?#���zx��(I�6�`0J ���G5�&>m��1��c"���P�@5�	�6;�8��x��"�T.�w0'�>Õ�ڑ� Z�=�Pz�&�kn����JM�d�%62�.�u�5]"=��G�1#��A.��y��D%z��ʲnV�����f�HlJ�����aBa0ΕgC&��Nh�	��b�:�
�kq.Yǰ� �^�Y��� �(q剑m��N��k���Ӽ����F��u��}�bs�z:L��0�6��Rؚ���ʸj3��CfTK���iӝ7qta*��,��T�P��'3�lm֛6-�*���	�2#�h5�%�wzFf�3�����o/'��(h5	�� �F~s����$ ����m:ӫJ&����!�h5�@��H�&���VϘ��e���}FR�` h�yT�U�PV� J"���`M���A�(��(8$00?�yCƄ�e��H$O�.�p� N"&�