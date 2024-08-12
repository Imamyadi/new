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
BZh91AY&SY�9� ���m}����������PF@�  `���w947Wq�@���mf(f� ��h�4dh�zA�ѧ�h  4h1 � � � #C       d         ��  H�)�O������M�c(��b4F@  h ��)����S=
i��C����G�P����=@dA�G��H�2ji��hh&�6R{T�SOS@�mOj���ɡ�3S#!�jS�H�К�U��Z�ee�شCn\aR�;�	YN��ۦ���W"*�����a��D)��yy3%��O�@�Zj�%���D���FT}�>�� �AXV�\��x�u�Zį���x̖�D�f,�c�$VƅCV .`�4N2TV��..fy�@��A!"�1��y�E�́��B��C�E�A$dE�����}��H�bBf��V��ʚ��uIS���D�N��	@u��`zCR����Xv����K�:P��[hA$�g�@U���..g� y	��p�rw�4���!�+'���=�B��ӿe�H�eXֲwb��W���9�m��wF�2*wE"��	�$5M����`�y��0�pB琥�.F��΢��5΁�5����P��x�)iQ��T��C��!�d�ې^�����u�Y�8;7y"�H2ס$H��dW�Eq�_�8�ـsU_�M\ď��O|i^5D`D�j�XQj�}��s����ц����|��P`,�ei�:<{�����g��/����FB
6��>Qb1��'�$���3*��ywj��P�����&�L`Ɔ� $l� �(��S9�4�X�)�#J���($�lf$Y$L�	�Ɛ�F�x3����<�����౻Q��M���ӓ��3��t6b�#9��B��xHiv+��4�@�P�8W$�4�cG0�y).�����j{a��Q��(Eń��O/�e�7�����匌��y��ہ�'i�4�=�#�b��?�G/�� q�n�F��$�1�6D*�;d#��aF��eC�n�-e�I�]��?P?=������J�#Z���xM6�m=�T&�m���c�}��h��-�}qKEi\ET����wF��&�m��T%��KA�nm��P:S1��T�����5 =fO� �F\aB��+[�|�7��"��!3u`M	q��(P�n��;U�����K��+�	mN##��	��Ϳ�h��1���7�����Qh���������|���
�^pI\��e�yA+��6o~At�4��H(6��L��.(�]_0 ��<.���C��DB|ԓ<m��M�E�]�p��<�
�H�<���%@�B�5l����`�e�����XUW��&Q�W���pj��Z�U@�OI����}E�g�.������~�R(��R�1
��eDCΆy���N?�i#�m�DD`��C�Q��M���R� �2x��H!T*!���BgjbU�%�%Dg����qs� H��� ���P�z�x���*���ņ?y��]6p�G	U��yh��r�tl�F;��W0�~�I��$r���	Y�lC��d�21��;f"���� �FY�Po�l�1.��$D� ذ�t��i�1/�܈Y�k�r#�/�-wF�Y�I���(?��U�20�q�.H���[b;�Aq�!ꇳ���v�=b�m��p��/e��|D�2��jF�Ь��YH��*@M.�R �M��8p�H��k�	U��3EhP��>EI�8�@S	�T�H4oV7�%��a��攮Lf��"�=}�p0�5˚�$aV�y�z�`jX�<��Sy�=d�j�@Q=0 �,>H�h�ZN0���i�	n:ʔ6�BKc�H
��#3� ��w�S&Bj���w�ZZVE�dF |���C��
B�����(YF 4�l��\�B&(���y//X���H⦖�cR���*��MrZ@����4��a�&��	fZ(���m��٥��D�t���7�@) ��㴿z�X2 9�G	����i�F{űv8HWA�&@�4F��`�{�Z�����
T�r��؊'�K�ĝz��s#i��2]Æ�f����yH3H��G��Ha�4A��4!A�I��`e�@m���f��<����X��0$J�)��y��x̍��^�h׻�Z|Q,z��)�+@V-�U	����lKt 1��ݚ�X���Q`�6iS Ld�.R���IX+6!/y(�SqĘ^�0lS0�\j7�(G�+�T�{�1�o;E�A��֨V�H��Ml� ����
H�Pz�;�n���<s��V��v3�I�����2P�'�(��6A!1����Q)�� lИ12Jf��A�B���9�/Ā�^%*��

J� �Q�"s��IL�L�Y�d(�ٰ����<"�5ܕb�A��J�Z �.U�X���E|��]�˸dqBEi���f8G�Y4�� f��.f'���+�����__{�A��E�utߧ��<!�a�`֑s$�ᬢ�j\�AJ- �	!���8�E�.��h/L�
øX�☃F"dLTH&`�����B��8��r��l��*u�.LA�16QCbE�p���n(K�xB22�kRIf@�\o9mZӔo됐d�Pu�F�*I�	(45�	�a"2,�n��(D^���T2%f��#Q9��E�Ȑ1DFT*��'T�dH�(D6�,� P*����j
�wN�_PP�4�1��1��t�H�/AZ�F9��HcEF����0 �`�t����nAY�0E80#ɯYa��Ep� <�E	��M]�h�M�17PLYPPlZ7_��r���u��K:X3J&�^y����xQ{8! �+��n��#�`tk{�|�@��т�6��¬6��ϺR�ax��0nZ3@1`h+
�	:�y�����q���W�-�G��p�i�G�"#B��:�@�~�-}7�Bs �� ��*�@�0�2fNr��A3�x���
4B!�]��BCHh�