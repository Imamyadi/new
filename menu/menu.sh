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
BZh91AY&SY��*� �_������������PDFB�  `��ysŗ�z;��o��Ҟ��}&l���a�}��h�=0�z5i��EVlN��M�a�}n��e�A0��4�S�蚌(���i�L��z����@ a��Obf��=@4h=A���  =M @  0�D5�OM�i�M�SM�4� h  d  I�&<S����Q�{T�Fz�h� � � � � �ɩ�iOĞ�L���$ژ	�i�<��jm�6�&M4h4��F$@L��4h!�0�#I��SH��S���A�P��z�5�$�>�(*�x�*<_wB��ɗe�$~F�:>��G`�U��Q�GXje���CQT�9�)4�Ca*E��;(Q�b����}1z�]����`�KQ$���ƶ�#�|Jh���c=���H���na�
��ܤ�7����:�<�d�]f,��0��4�B6.��l���-3�* �j2R���.jd�'≀�%��3Yb0iؓ�M���9 8��4Q�ȕ�Q��V�X�L����Tx��U1&�g�������� $�إ��n�/�׿�(ƚ��LeE�B���~��v�=�램S-B�"�83@^d�uO��&��	:�����Q�9����'��}���P�E���Y�l��!�1I�H�8�u"�?5�K4������ �BQ$�|M�J#"k���A�xq(���w�[F�;C�dT���6�I�	�����=�Cp.�X��47\��B�Tٶ�<Vb� �������
cs�Ä.��г2b*���<I{K�8�340f!nն=��o2֮D�H��h��2�<l9LDpq�9�p\�4!p���b�R��=9�ϼ0x3���k�AK&Nr&�w�����U4ӊVi���k����[���V��P�~�E�_q�%��cQk���F�6��D��`��zx���;/0qG�Dv��X��l�RkQ	�%E�P���S=��֒��زQp������
�%J歕�A�vݣI,�E�e.@�Q��,��:��<N[�D��3i�V�����H;T �o߆
��y�rل������aF���l7�JF>^c��7lkֿl}� R{*UΏE�	#��r��Н��!G�;�!/��u,�X̏w� H����Eg�*W�yi��ZF��)2E䜜����Lw�^��D�L���W�j�5�qt����K��� pq�	�s�#�}�,`c4���2>uy��#\����T�(A��@-I�#��1/{����1!Ish�t:� iA3�yP�f�0RY�ɻ��X^���2�ԕ�Y/R\Y]K"m+Z��,,��E���cZi�_�-��b��0O
Q?%�R�6��9��ː���z9������","yQ/���<��/���aU>����U�a ���n=_�ɝ����#�)11�Y� sd��v:��6q��z�&eVBTEXH�!�d,��R��	->o%R֟��p�n@�����(��[D���BU3�Eq`B�y�ۥ�
�P)Z�)��R�9Ɩ0�d����)=7�H�L $�Tif4�	�OUK�d��P��Wx^߸��c�Fk˄D�A�7�Y{��9GR,������%O���>��枼*�T�$�B�W�� Z�ꒌ(�������)�{<����̴�~� 1u=�w�X���:��� X?!"D<��8��I���kU�4z�T�"ZIxe�E��|k��{�Oc���~o�R.�^]$��H���������~�DN�$~Y�����BN%/��B#��K�{��j�*�Úw�hz�{j \z!s̫x
�Ԓ�J*������␗�����$AÆ�@��5��x �*B>r|��g�Z'H���H5W)]�TҰB��&�D�Ί^'K[�\�h���\v�D��zE8���L`���wi�b/��G����%8���r߀(����i�7�>�#P�y�����eg!�T+�M-���7&���r��C�p�h�	�1aD#a��$-C�ތ��ƴ�Tw-�V�$
��eA�f��Z����#�?p��
;Y-���PUj�J��R���.y&�&�}���"(32S�#�P�Q)lƀ��
3l�\lod�(������h_n�Lγ��\���^3�I ]��8�͂�,Q~�+B>�U���h\э�V!۔TP�\�J�h��~�;1[)Fڵ���rBF�X	�V��(�m �)���uC����)����PL3��ԍa`�+����h�*���a�=A`*�wu�Sh2���~����	�B�����i��-'O�x�q�?��#�������* 751%3SHkKA1����L��
d{�a1��L�^��hi����y�x��F{�4��%�9��,�9�`|�Z�	K��^����c����T�Ҽ�Օ�ch��ѹ����
7��B<�-���<�k��� `lj��P|H��r><���n�`fƯ@���RE�0{N�p={5�KF�Z9@N��:{YW��$�7(R� �$��F��{'����Q�b	%�1�g�8]�N��7�p����o�G9�Y��*B����E;��0�)?��C,���Ht�ف^gH����1���1V	���T ����9�&"ҺT��Pw�<Q�0H	��F���tFaQ��fv"�����|��� �N���y�A�K��Ƀȗ���RWT!�	[Dߤ ���)&�f�9Q�c^�0�\L�ݫFEl�K���:f�SUr�4J�W��/U΁T|²�燼/�m�s��Q�6�$!�<(ǾV*��j컧FeVljEn�l���1�e�U?��0���giel���P�#~�T:�1*V�@����P���*�WI�嘾Q���Y̴�&S�$QQE.�	�)�E@Pb�D�+�#|h�͆w�q�{���nR��qM��Lz\b2X0	��4 �Vr�z�V
VU@c|H�*m����`khi������_5�&<��am�y� g���vv�И�/L�W�����d�#B�#���~�$�傤�^׆��/�zyɭ4+a��������/�X����ƨ�I���D����}���	�^�ތ����ac�=���#Y�H�4�6hl���4ՙ� �q ,�a�OBE�x��ک��n;�E;�[=ߠ"��EV�p�q�A�ͽrriM���I���2��^ܐ���z"8�����B� ހ����x{:�ڐ��0	(�$7�����Pt��'H��3�8¹Icu�7�b�����4ŚX���4}m ^�^Fj� tP c�R=��%%4N	�jܨ���!b76����R���!q?�)���%��\٦u��]Ľ�mBU��k�2��sxu�V��//i�|��"�Ai�dS�5��֫��ƒ�7ilUF*�JQTUrl�&bm�3ăڪ�0�*�ь�~ߢ:���MTu�hX+�4�<�1�M�!����1TT_��Qq@�0)]�F�/4����H���_��"g�$5b FB�u�m��1�!m�D~{�V<�u���d�2�&�(��������M"f ���.���P^V1�@�!�`]Ž(�;��<�pX�@�ׂӈ����$�
�F���i%=L6�N8n+�m�䬯�HG��B1ڇ� І`�:�K6�D*�����$�wM��-A1vU�Ey�����#�I����op�&uuj�IO=:�����\
���Pb 񉡍�q��Έ���x�6DSB��� �8˺7�gJ�s/��h�+X��+q���} |�>�p{3��z�li�[T�ܚN["ā���̤�n-aZ�BBr�`LfN �8ҕ�/
�H���%X�=$^���9K��աb�ZP�Ӄ6d�3$�e�@yb�i�U���bE^tV��-z����Hh�eqf.B8R��UQA��-�� &Ԅ��<)$3�m�k�A����ٰP�Pezл��Fq�a-�m:p�%Ch&�8@ȱ�1��ɆP���37�5��:%]��Ue����)��S6���o��l��g�5 �nj�%~���jJF�d��P:Q�.JҴ�H]�l:�0�ǲV�V,&RB�)f��[V����hKG����h�*X������2�.F��i��S�q�,��c%����hX1r�����EZ}x,y��;��$�!p��Z�թ�GRi��S̻'� ߊ��_�i���-�7f��`D��\�^x	�	K�v�-"i��&UA�V�}!�<s�p�8.��p�����0�F�0��������m?քq݉1��֌��l{s�(�`��ghPK=0�%H���Z�U7܉L����W"g�$��b�f(g��^�)��'d�\�N7�Nq�#ыpk��v�wF@��G=�!QK���*-�Y*�DD�E����-1gA�P��y �͐������JY|�pB�o�r��Pe�2�[2H3�X�4��
�%b;,U�{Z�4��3�l1�M$83!E���8�O�|�9<��~y�U慯j�P�]�ّo�|�\d�#8��. �
���^�}ݨ�(y�C�H�"m����3�՛L�e�R)��+R,���w�����I�'W6{ة��4$$	�6þcعF�Y\K�BBk�
��)Қ14�����R,�m&�ɣ��˗����^Ii�	I�f$��R��D�C9�\-2.Z���ؾ�hݚ����
2�3cV�sK�N#MJ��$Q����p"ݝ@5QF�*�F��-e�u!ݡ�
�ᾎF�c�D���!�E��$����I/F\��{	��H������f.3y�k5*S@�.P9������	�=�31g^�$,�f4h���h_����>sQQ.�>��|�1/Y����݌�)P��"#�Ђe��岰�5�*+[C-Gh���v_y�66*�A��	7N&|�)9Zj���x�G�@߫6S�y �d	YT���Dr�|Gbt4�<)�;�-�j��Q��ƪ��< QJ��8 f4:�[m��e��'8���g�`�TT�
w ��H�B@�k��8"�ej�  c>2"���BS X)�Om��u�O����/^�q�h���$̈́X�,��h�2v1#n*�In\H���f�,^=(��!�sV�Q
�{,�}a�Ғ�@��
�Xx���@�����"�F�AX_��PCC���b0P�T�DC���U��Q�(����R (T�iT1�"�"�^(!@VD��rE8P���*�