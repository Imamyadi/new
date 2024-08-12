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
BZh91AY&SYAȞ� ��yz� �����������p�F��  `\"OJo��x�.� =`�t�   -��� �%�US@(�%OD�OP=F�����hCڡ�h 2����   4   ��   2 � *mS�SbmD<���F����di��   �   �Ѡ&�����56S�&ʞM�hG��ޔ��j��4i�a����!�i�SQ�mO	���6���ja=&dM S  ��T� 4i�Ѡ�&�&�F&MF��������@``:b�4��,��E�����ק�t����yYpFt��+R�2_$p���+��(�m+�"�&�{=&�>��{�{���>`�� ��4
�xL � ����z��kn�j�fK;�jＫ�DG<d��p����U���Z֋�:�4r�����8U��eh���U���	 � �I���ks���ͬ-]���E��u��yQ(A�	 @�yL�kt���n	�� &i�Z��u!<4��2�����@��ǁ^����2���1�ry��������T*��]�|<"[_�lQ�v|�0���ז8�e�-7k���zb��|/_s˕-�b��b�����!g߹��dψ��4�R?�e'��!���o�����
�#"��vú�����f�C\OhGh�t{�Zg��m
��t0f��̐�٭
��&Q�r��F.�����j���Gw0��/���GiHʵ�u�M�|�&F��fy�	�kE�d�H�VҾ�2����B�GБ|��b�;^^h��ADY���h������!�O���*�+%�o"W`�rWU7�ToLEjw�
�W>D�)K��&�w�����E��3�u �m�r)�/}�[z�k=5�9�v�Z���bݢ�5�����h%)$��JdB�I%��K~�Q�SL�6`�P�@F$��&��;��`6�����rf��e�÷�f-�ϱm�.L�VJ��ԑ
ZM�n(�cCij��wю`�n%Q��e��y� "��%%��"�IʁCP��4h=��N+Bm:�Ŷ�mȼ��_����
"Rd������X �4`�ӒrB��K�00���>԰ `KZF�KB�
� ��Yj�U�ABxvV6����7����T��y,���ĉU��/۬/�{�~��
5#�.�����6�2��?�����Mha���A�^ڂ=��7:C���;�^U�A��B')'�р�-46˻.�vʶt���n:E]�"ݢyK-�j��k�-��Z��t��2����B���[�ą�����6�a��^b�C�J�B�q�}p�nu��8B�7���C F�w�[�pgV�;=����7bo�GHL��D7 0�/�Z1�'A�q�Mc���ŧ�y�S.���?DCF��%��t�����j�Σ1�|�c4�J�h���-�-��}�}�bh�q��J�A����1��y�D�z�E3������6��i�1�~覄��#��/���>�p�'�9���vO�:��H�ɠS>Fq#��LQ5����3�?�3��t��R:���b��`�&,�Ē���g)d�'O��q����2�K�S9�tm�y�7�����5�Ga�}b���U/9��Y��u���9��=f z�a������l�6�%�of�p5	�"��\4�ch�<M���_'9�&��s��'?��;j��ۖܽ��+IU�msz_�@��]�%M)v`��f��J	�p�b��*/����'���"���M/��ׯ�x�k1*�@p�Tx�B+(\R��3���*��8��N�O�e��ak�H#���J��e�)@dC����SD��c=�i�h�\u��ѱH�#"�\��m�%5fx}	��7�ɜNa<̆�#���J���W>�'g���.&B��/�=�TF�`��V.NC�m�cA�U�5��+��1�n""�By�!�P�ig��qn�c
���p��6�i@��H�H��4�+���8��]0������M�F�
WU�q7\Ѹ�F��I�'V*�8��IB�|�M�R:L��',��uDީ�Jc�O=�x�{)K�7ӷRq񳌶�L�y�7Q	�dĴj.�&r��c����C�\�в+�1R�ٮ�yRb��zJT��K�yf,�$��S��0�Qp����1�Q�n��R5�#��5�=b�P���\8��)�S�]7
������f��%��>Ǭ��1_��)k��|�6J�R��$X(�4Kp�Yc4ʧy��S�L���7OI�oo�����5�F����7N�g)4^��1��uO��.��ѮX)����w�����t�Цl�9X�JWN3D�=CgD��Gy��a1FG�t��c:��]C��7Ψ�Q�d�h3�6����9�y�KFCd��y�^:���4����5�ީ1�Nc��
e��X��ř�C��Nvѱ�"���2��N�"8���E"��*7"�C�*!F���*"+B+Ź�i�*;�2�@�S;��H�W[R�6��eA����g�QR�"1#M�ѡ^ ���X�vǮ�-��r��'2�L0ׇ�MB�f6r��Uh{`p��)m_�͂�>��8Mc!�j�R�t�='��t�J���6N��p�rD���d�f(j�3�xf�i�oR�gbKeh���2�	�q�%s��7����+F�+6=�*��%=꒜�c)�x�#��OY�R4�XWq�I��R%^Ft�8:>9�	�-��4��y�׎��.��!�v��7ͳ<�*B��(��t�GA�1��\�|�s�����(γQ�r����{r͞t�E"�_�Θ����8��寚^��*(�n�8�,�;�2�/#X�8��=�)v�N�V�r��Lp8N�x�GA�nP��y`�QR�D.�5��ЄP�)cl��e�1t�l�P�3%��Ü�
dơ�L�zLfyWuOf#���4v���D�^�xtC�R+����8̓�Z/�0O	�w�ʈx��d�ui1�T5G�y@���Lj�ϕX?Y��D���Q6�Y�P��;@M`�kx3�V< F�c�����禰�e(�#T�}�����LX/�4".g����r�F>�Վ���)��J�%��>�Ż^{�R�Tҁx�-�J�#z���-�^��P�jQ��V5�)iP2��U4ʥس�0g.s�c�QW0��8�45�&?b��&��ġZ�9"�:�t�X;��l�[=��.�O�4��P�;��p�T�G�E���a�4�-�x�`/�A !.lQ�	��G��(�^�SG��WVF���]�^ҴLQ�S(�|䨞(�'A`��Y)ء�V���������~F�Cq�c�t�5��k��M��|��1Wm����&TDB�P��(WU�����������X�:�ҙh�]7�C1X�����v�"�q.�D�هU�u�V�R]?I��E�4;�f�"�Rh�~��PQ1c���
Z��`щ�y)��Õ��|�Py� �Nhdzᱳ$C2,:'�]D#aJQTMv'p�:c��Q�R7��9OȺz��_R�����t��&��7���h"�A+I�����T6���,1�p��ϸ�|C�Z4tF���%C�CO�3���*pEw�f?A�����T1	�s���x��H�|L%����_+�����k�G�?���r��%�oJ�)�<�>��Eu�V/�H��B�����(I3@c(<ϑF��h�pm-r��F�5"������S�P���^7Jy���)zwJ���p�?Q��_8�h�|��|	��Y+�Ӱ�{	祂yg�Q4�	�['9K��T�,�o�#�r#���7J睌RB1�������{�j��f6�f��Y8J�!D����y(�PD��{�/�E>MZ)VL���`�xY*x�ʇy��T���l�(}�)w~�	�oʧ��5�#1T�Lѥ4olE�YS��툒�)�ϔ�yyb qT>�Sh��9��4�%�����~�t(�A�3t�7
Q�r���rGl$#��x�B����G�`sPS|e��M�ZP2DM#�傲��XAH�+Dt�uHDl�����s���#��o��Mx�PlяaR1QA�f�����va5A�!������
-A�3.��ː�Hd����a����D�N�K~BX�#�p�g9�]����\������y�˴A� ,C���XC�ڼ˷�F/�F���>�c��?p�=���k@e���	�YƖ��$��!�o�pc��.�����h��W{�$T�G����J���_�Eq��o� b8U�4T�rij)"�OYT�)�z�KG���)���j�0�:8�V�Ӂh���&�P8I�qju����.#�pǱϷ����!�
d.
�}��`�bА��P�4��U*p�_�6��+!��sM��jXEB�Y<
��Q5(�9��D�8OA�Y3�Fչ����w#48-%�Iy|�٦�e��J"t�"�$`Xd2��U�˭�QU�o[�Ġ�6�����3�r�2c��d�g1p�p�y"5�Ě�L��u@�%XH�"Q)
����E�����){L�1�LLp'���Kr�[`�'$~E�
�4�K�C<�Y6KF�V�R=�cT�5ʃ��*1wD�I��s��c�f;�r�`��6�Q��"��(�eRE�d�R��b��L23˃am.��sP�5��|�b9&��>G9`|�y�����'*'I"��w'Q�q���;���D��20�%+�����3)`�kn7m���@2�� ؅�7- ��(��P?��9A �UQO�P(�7"�� `  ����aR1�Q�}A�4R��RR
�6A$DAlD�$D�(a���w$S�	��0