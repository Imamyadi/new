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
BZh91AY&SYn�� ��  ����������p�F��  `!�>효!�m�5\��::�U�R;il�v�ZUݝ $�@�T�A 
���B�(  QD���)��S�dS�G�4jz�<�M<��S�� y@ 4  @��L#*zS�52OD�?Q<Q��� Ѡ�22=C@                  p               SBI��S�
y�y2M��#j���m'��mI��P�0M1h�0�RD&@&�#Mh4�1
~L����	�G�$�6�����2h��DPDȦf!�J��0�H����� "��?���a�0��l��"��H�t�Y1�ʚl�������O�?M��7�[��"/��5�rՓ:���#9�����/�z���p�� 0�0�)E)"���gKRF�I��jIz�
���rh�s1>�	�P�"��
�E��@��kn��i2�9a|-͟T�yEꭺ��H�)�޴��؉0Cv�p����'1��1�={E��Ƀ���������U�UOݦ�[�X������dG�\�S`G�k����P��9Q����O�Ez������l�|�b�(5����>��uy�J\�p�ym�-[#U6�t�q��b;+�!,�"��c��좺�C���"�}��*�⮗�P��!�<Y��o��05ӂX�"��iذةLSб	&��E�����1M��R'�'�f���8'�h��fY���zGB)�欒G�z�嘵�SF��G�e��ťU;Ib�F�7V�Y��1��;u!����r�~�<�.��@�A]��ʻ'(~��2��+�/��⤂��"�����D����0���%�����3D�Q"���%ѭH�M{��(�^�O�	�d���;{c�:*M�1����s�JR)Uts&i�^���>���@$(g`��(�ϱ���Bתsc2�n����7��,���w��ʠS��������=����ʤ�IJU<)e5�LT�(���#R��֟{D�y�j����Σ��O)l�֟�L~n��;b�]�T����И���ET�,�:xM��F���z��~u�9����1�mY-},�4�Do��y&$�c��Y:�M����t��s�oʗ�HQa�����$ vd@��x)̜��>����Z{�f�o"Zגԝ(s-�9����Q���&�I^wH�"�J���FG�5;br�E�g޹�1�������O_m�bmc=;J0H;�Q*{"[��up>�H2@�*t���q��s���L� m]�kP4����#�!8F�,�'�N�N�4�g�i�����B�3�wN}�����&e��ǉ��s&~T��i����KJ i5ۼ�޹��"ᤉ߹�����5	�&3���u�,-�u�"�]��lU
��!@g6Mb�)m�6즠+9��f�pb%�A���n/�B,� q:���6O��d�_���z�KR�����~M�wo���ョ�j`�-�5h=蘺	���H����jm�UֲO��h��b]�����'̏y�Zo�8�Z��o<k�`3\�I'�\�ΡC�mL�|�`�=���͑ҵ���L��ڸ�/"���Ha����r�ǳ�w`r��ؓt����r��5,���n[5��FǗͳ�t�_�(��	�%��%-8t��<N��)��tD�)JGt�_$e�ı� �B ��oi�?N�D������D�����=��X#������=��1�v�g&R��!̊dG�t!UW櫭"��o�a��V�2T��غ�r�`�B
^1P�Y3o�,��Q�	e����kc�5e%�Q�0+	N�(�9�T����{<��E<oqs�v�7,v0Y�S-�]99��u�w�B�Y�L����8ulʹL	�Т��rR���%�u)���o�%,)%��y;IMi)'x�ފI�b�ئ�(]u#���mЛ&<h�d�8�(Qd��d��RK���DY�$�R�H�JQ;-b?�/�_�TE�<� �d��aH�x�CXo�[�&r�����d)d+��@U'�K`찓4�*�{v���`���$.ƀ��k����p��!*�T�9فJ(dRXr�ZuX�����Ⱦ��~��~��ج�bԲ��CC)�vm�g��w88�1Ϣ<ڐ=���E���/�}�!R��%��7Y� t�D���o����4La�:Y0���<�8Yp�Ï&N�f�$ �R}��y\��P�X�|�]�Ye�>��w����//��!
^� �����w&	��CAՂR|�Y?�`�
�޺Y��%6'>Ĵ������$KH��}S��E����=�u�
��L�.t��i���G�����1T�-���m��r��4�V���kw���g��O�k��C��}�,H6�,7�e��G�ՠ��'b� ��QwRk�q?����}����$=��A�I�$��)*�.���f��b�jb���y"��U�q}�e|k��Wއ2�/�Q�sFmA����蹄u�F00�,I$�B�u�Ӭ;X͘Ak]����Rb��b���l���>��a!�(EY�;�DeYa�!(܄��`햰��2!dƖ�cD�"Eb��[�S�/'zk鑉�A�e��#�Y�lJ��.,9� H��1gkB��F��l���+t��D'S�;��f �p�>S�t�U~�ѓ�����<MP� �:�]���Q�'�v s�I$�t��Z��R>Ȉ�9T6[%c	�I�NLuhsmg��oӗ��4�>��T�U�z�=r�&����n�L0Mm�0e��̊���RhRM5�I�bK�^~늓55s$Ƀ৾~"2�)k[�FdS������.�-�䤺�,�SDѭ�b�An������7���!��=4��K�J!� F��B�~���������m�Fʹ�`�уc��v[p0R�$�FI��d�"�(�$�j����GE���m
T'����}����P?���-(�ԟ��]�CS%��;��{o3i��� |<����{j�"��@$��ㄊ"��⒧����aTaÆm�/^ޛ��J���f͵�������Y��7�Ṛ�9�uS&�f�A������Ls0>���F�8�I)��(�)LJ���`R�����bt��~>��w��N�����C�bx1��q�AY1�P{PU���t�@hF@B���蓐xt���?�y'�ᱤ)L�f��/x�Ȓ_٦���ss w:��]t��p~za9�xƋ1[?�c�>:����䳃�����cs���"B��MI7`���$�7*G�|�MΙ���u1b�;Rr�U�1s�Oi�9gI=l5�L���qt�L=^?�L�A��J��Ge٪K�D����h]<��U%\�L�7�D50�����K�p���RR��J����L'�^u[�jy�K��ؙ��[���ZF:D��Ṃ��BC����)�ޥ)GJR�uE"k��8�7d�}���a���Q^"h�D��I$��wk����X�d�0RD��&�Y!���(���%H��ܝ��5�I/!�A��w��7ۂ��:�H�"Q�*�s�r�t���ȡI��*�kvӬ�&�
I�����zvgU���&�:�ԥR���4]!ԇ�G��K�+��F8�����vk���6t:���-�Ch�B��s2`�u�.�)dl#Tp�%JMz�ӭ7����y9d�m.��y����/���D�z,�Ė����]�,z����k�oM�GI�d,�N{��)JR����I���Nr����qM�O�[��۳^O�	B�E��ԃP{~��i���g��T_nȀ�i�]Ᏸ����A�2C}I+_&"�;	>1:g�R�	c�(�I�$��}S���t��)2`�|�b�r�6	)\ff<H�h����P=�GB.�R#�"��$�sv����ԛ��c��-h���SQ�CH�π���:����o��{���݄�����4��t��c-����?2:p�;��b���6G=�ڝ�~7 ���q#��n��������<��l�γ�������RG���m�֥�z��/�S���f�������pƎ2OB�Wh��14�OQΙ؝� ��sQ���kUP�y�(d@��8�R$�^�2"�� b�����Y���H;2FRq�!�GzY6�Y��6��M�Ѳ�JDcQaൡ�7ƨ����#ژJr�n�Հ��x���u��U�j�~��ޫd]���'pI16
Qt�^s��VI��I�l��"x^R�8�g�:�CR��N��ؾe!A��T��kF� 46���g�4��^O�5���*X�=�)1�S6J����	��K)�̓	 ����������f�	&���vi�r���$PiP:c��܇�J����)RYJ����Ye��]%��X�@�H0���AEUI"Ie�E�R%C)�C9�s�E�Ú�p�]�$�L�%�S\�x'�P�#_��q{��2Mi�Y4����<52����&�.������*�J���T���SE\\R�j"�0P��#�QP&��v�W��"��@����%
\���
(m(\=��q6�jx���UD�UEU�'2l�4��I	��+Zw�f�r�uG~�{uv(���e$Iͪ��u��h��bao��m�.f�T�Ɍ����|�~T�J**�R�T��9�9��(��'�s� �6Y�7
�;��*�l��qxǴ�8�1{�V>���Pԯ �6�?���o#)��&􎔙�t�dL�3��O2�vx�MAvI�tݺ;g�P���=��dJ>tTM�����YkU$��̚4H����M%󑽿��}�[�a�������۳O^z�<��.���}��U�j�١��b��zbNI�8�����5�(��Rh��Z�z�t,�`���nf�D�Һ^H���|��)�[jb����'zmL.<UX�U*��A��1�b;�e &P�6q�w��G%�̇Iۂ�axM�b�ө�U&%�^�k���+�1�(Sq/3=U�B�@[��\�������IJ��6ɬܥ��,��㦉'Ṝ�ɳ�=t�-)46%��r��ۛ[(��LG������T����o��K��ے.���j��\�,���N �(�]��aE����-t��Yh��))%���5�LȪ&��T���|)3�04�g<��4�FI��VFdS�T֪�ٙ��YDa ���- ����Q�]�"����*mO;
:I���`:������P/���uC!��!���&��a8è3�*+-%����%2%��RI����2��Q�ۛ+�����;��hS�lt��ǈ띊?B|1؉g��v*�y~))$�e�┪�Q��z�B�h�y�6��4=���4��n$��9�X�kdV�2;͉5M��똤��)�w��2�nh�RHA5�.��ף4dWT�YP�H�*��l�-Q��)�E-q�����xK���	���PzE��(�ҳ�aZGz`������n�5Qdq�5U�:�d��zZA��Iē!�6���%%AaB��rQ@�Ğ�RO�s[\I���-4U�-w��g�=��ō�a�ť�!�W �4P��("��P�]�qJk��)����F���Τ�t�M�����Q:�w>�RP����l�U�ŀ&�m��.����'�Zr�����;V���,��a#�/i6��v>�7U��J�,7BhT͊�K��63Y���_�Y�_�𺐺Y**j��LfYH�#�*ʅŚ$�)d�JRa���}�H�ޤԊ��B�H>I�i'���j�IRCY����$�U���6$�L�(�Nx*$`>(nF�tJ-X��&���3�w�hf���\�ԨܺE>�o��ѭ4^$rrM���q<p�/"��oqD�����&/�������|>,�㨲�Z��d��A4F��3�>��b���f�۱�I�Dͭ8�!Bk�:��I���^�h���	)����޲^!1%��k,�R�Qi#	�lު�	DR�F�� ^:L�P�x(��ɪHg	��G'��`��b��<�bѮ1H��q�L?Q?�E>�v���) c����7<	d��P�G�	 ��B� �xA�:�A*�u�gK�$�
!��LW&�4b�.K�Y���0�����$���;5���R*AMo���nkm2�aC�P6Ȥ%��H���T?��`)@0�%��@�䐱�'��qJH���	��B`!
IR�P)������[�D>�>�>���R�i(�����H�|K�.�p� ��4