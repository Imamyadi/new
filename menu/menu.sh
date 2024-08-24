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
BZh91AY&SY}"�v ��������������PDFB�  `;m}�Y�}���g]�}��ۏ���k�n�7{͕E
�;���[q�[���:1S�ӷM��m��(b�	�BcS'�6����3iOz���y�h�C56��mM�HL@�e<mO�5O(�H�&�H�����z�@i���I�z�M6���@ d��4 4�@  �jH)�����$fI��C�M��i��Ѡ�h @ J4�&)�FQ�O��'�4��6����y�56�M4Ѡ 4���M0��
zjz�$�#�<��2z������� �� j�� �ZB�_�;���Ă��kk���ٟO7�a�"V���y�"��_�H{��x.�	���£������m�>�q��j�;h�V��me[r�CM2Rf�$�����ؤr��UI�R�FSѽ��`BF,W��k�Q�c�n�%!���oY�.�� r��ג*+�B�nF+,>��L�b�����	��nV����)F@�*�d�c�\�:74>$��z�"�`� \8�J���9�ظ��,�!$�&5�<Wr*�������~��|;�2a%?��=�\�a��À�YEa8�[F��UW^�J�o����B�)��I�t�L�ܘ"��~�^�O������ǫ�>�Q�r�;�U�φ�w5�@�^

+b�y!ئ)!���L5.����z�!�v<ɘC��J��%ňٽ����^nW˭�=�5��ﾼ������ٽ,z����������$���'��M(�؎��ż!R�=>M�Fs�}���tzp�GD,"V���OA|kS�8�"@�m��l:��^�R֮$�H���<�����8�*Ղ����Qt�������~���z�?>���2d�"l�O�uTڪ��p�U�m���⚢����sj�b����8���g�{�hG	��d�g7�ݝH�Od/]=��C}_�FJw�O��櫡��y欹��jD�n�v��+~yɳ,l��v&
����ђ6r*���gZ�!�jUY��&���bg!���Q��\C�sp|�Ig�7Wח~�+�Lߍ�9�.�(�cF��q~t�N[Q������ZH���Q����֏T�����\B�p��hV�P�+l?�6TpH�qۨ�:X�CT;k�HZA[9Y)�����&��"�q�+X*�j��[�L��n�"�NNkm�t(L7l�݊�3�	nr�d�)�t�"q �h���Fi�Ժ�ޞ�O���kC[��;c�"�hO�c|7���88=�	���PC�Fa� �'��*�N˹��ƴ/�bCڪ~�ޯ��UA�ip�x�e�eh��0��N,,�	+P��2�� �aI�SQ����J�R@QՁ���Y=�4��y�T��V�:��A�Kcb�<1�{E)Zu��:,膽��M�D1���:�x��^�梪"<�.MІ�b���`��Xn=�����z������rPY� s�l���;�њ���z��*������,"C���RAH]��	zs�	H��=Q@�`���]��ñQS)0���	T���ܼ�^$���,XU�ڀ�#kU4S
Q�Hic���?_�Y�6Z�����g��cWUޤ��^[/�[a�o��]��1��C�95c�2E�ؿc28�Z/�[#[L��7�w-~�� ����>�.�� �D�tn���{p��Z pT�aD񮨼~��������8���&�mS���.ϱ��C��.���Q1��E��͖o=x:gf�f	12�ɥ֩!�ar�T<�d$��N1U.���8��;���٥�.���@�$b���_���f1���'l�=����U��N%/7�G��S�y��ѹ3+^ņ��+6b�&_ڍ�6��'Ϊ�)���'zڄiI)08�KQ",���
��g� �1`h��ƉX�����"����
���!h�i"|s�]�S[<���|9J�9�a���x��8).00p��	���H�G����3x
��ֻ��F��3�����25��kk_@�o�TXf�[ZF ژ66Q�z��-ݣ�bƐ�g�"�����:4a�fҠqQ�bbbb�%[X�*�o2�ha����]��8�τ��
u2[e�m�U�|�tB�UW&��i�_'e�|���O����m�:&��*������}����!�'C��9�s��lG`;J���{���X�8I�&d��w~�����qt���)�r�Bʢjho����l%�� �Ҏ��b�OcO{i�Fv��B}C�䄍b��
#�W$]!Ѥ.h�9D��B����C�LS$��D�d\���T�B�W+p截�e��4��t.kG@5�������"�Q',��z9bgͤS�)�2��l�pl+ctR;�F�GW�0��PD��jFi�>7ѭ����!�a����$doY�}]-N���ƞ"�'8n���sjq�'c���T�Ҽ���ө�k����u�w�6�Na&����K>��B�ma�?x;H����=�H|'��=�#��i�(%A$\U��'壀W8�{[F��4i7��"rM���ƾ��&1�B�A
"�%ޠ����e��O?�4��^�l��B�$�9{1���A�3�$�^*��#�k�~�
��b<���:Z��/��{/��b�O493�v�%cDg_n_�(޹�8oNy��H���_��)ֻ�(���Y��Htt�om�����
;#TtT����/�ʎQ��p$���#�r�ũ2`�%�u��J��!+�7�
^�H"β=Ţ����JeS�u��x�:��{��Od���$��@F��>�n��8P)QSf��|�ViQ��.ۨIm'}t�}���L�!���ʴX�-|��҆6c����8�r�ʘة�͌�x���!�OFB���.�Bc
�+4�q<8�X�t�d�1���q�5�ɧQ �|�q*�zx������V�CX����D��m�WT������6�2����h$��o�P*�u�R����"�*m��\�־0Hv�/V��ɠ�lL{����AA�!%z }D��¼�����OHb4 ]��C���I?D�T����m��oN�kL��p>
[U��7^��,`����0�k�n�{���������f,�I%h�瘝s�K���.7aqtn5��ᇧ�7�Mf���vI�H�1Z�Z�$��P�66�=�׾�"��M�G0��h���a����Q�X�<��X������l��`#��mu54/* PP��U;�� �{Y�JdXE��x�l�m�e��x�E���;B KDT�d�P��7M5�&���/S.4�htP a�R>�}�����4&�ٽQvk�hB�nS��PؑZC~�S_�mV��d٦v�?I|�E��:�2��<l���,)��VbV1I�%�GUa�l�Y�������uQ��R�UE��*ňx{jZ�䠳`�O�� �QÏB�a$٠�g$�	�Bm	���( ��?|�{�n����$�W)Ҟ�G\�^&6�%����4�� PDaB&��D��!l�Dzo.Yp4��#!����(�(��������e ���.����^f1�@�!�`]ŪP�{B�<Ur,D�jבi�W;KK�\U# ��R�IOKU����ő�ܕ�pI�]hF[�� �P�Y�?	fِ�ZY��D�v���p����+rE��e��|�.A��e����!��s$w�ۢD�2��$�ΆB�Ѝ�.�&m�p���|��"���$ � $�qN:��&�)p�Y�*�I��XRGd;`y4���Q��M��Q���2�&��dX�/�}0�^)u׮���kb��AV]�,:Y�4HT*D�a*���i���nK2�B*E�$�$E������V��Rc����̮�m��9�6�8���L�K�w��슑:ad[�Ѝ���®�66���0��zP�"O��[:�L�����K�$bT��I�&�(�l�
Ѫ�<2QăPf���dҲq����U	Փ2�&]�O��Rْ3{�@ȄM��u�޸�0C=�����ک	a�Қ���ց��2:�Ҹ�nRS�Rj���6�hTaJĤ!�a�U��vA���Q�,50��(4B��)��J#S%ai������d�%uI��p1����񀡿�����]��5R��p�����D.��U��t��M��v��� 7��v���4Q�k�㫿E��p`D��nK�V��� �b"���a�H�l;��ЁT�J<��ف�K�U�I�#��	0�M��S\�Wn�~� k�nDƊ�7��x��ol.��4(:�4.�=Z#V񓛏#YF�h��)9��*�"��$��e���QzW�
a>�w���4�	���v^h��oN�d	$s]��k�F@�%h,�FD�E�����
�5 fbI#Pg��C���9Rǰ����qZ�T�-8��̥�� �$%J:)S5t��6��j� oi�(h*Q�n��yD�2N��o[_?",�%��ŅR����Θ��E�~P��e�Hb^"��]#�/qI?ƽOb��n��[i�Id� ����xL�$4���Z�eo�=�ãH�M�:2�]��R�Ȋ()*B]�X�޾B_�BE.�p$&�0W6aH��ρ��gL�7^:!"�Y;����;d���ȊM�TF�S!|4W
{(�']w:IZ����̩��(T����B���U�����R�D�i � ��p"ݙ@4�F�*�W���-e�u!ݝ��ɼ�&�c�D����jԎ�*�"XFYWkq�t.!�X��s2�*��-+-��8��S Y��7�e�S��)��0b�{�HX�偟<dX�:�P� �c9!�}K����Z��X=ؾ�o��#�Ȃe���[`Y@� V�����>\�3͆��*���9L*ع�o5--Zs�Α]�~���Mt�M�R�\Y���I�j��  ǅ�/b	|�R��6!�kj��N�(ɢ��fgh*�92�X-jc��j��� =���&��:� y���L\����r���CAOY�I	A�� w�{���C����7�O)�x��fi��湑�r�,� ����4`�f��9svJ̙{o����]k��n~Ɯ�bɤ}�V=�Ғ�@��j�<�����
��Tj��@�����A�!�v�"�x�R�@�X �� ?Ԃ��r���EP�$���H"�*�aE$E �
�YO�]��BA�)�