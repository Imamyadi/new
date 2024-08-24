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
BZh91AY&SY�װq ����������������r��P��@ 0 � `��n����f��oov����������=�<�sk�RB��^�$���T��Ѣ��
����zC�I����%?!5?RoQ��LM�S@di�=Gꞑ��  @�i��M��&���� h�C�         )�F�S�T�M  i��  M d��� @ IEA��d �� 2h    4  ��@	�z"fDe4`��?Hz)즧��G����OH?Tz���Pz�  J �mF���1�M?Sz�$mOQ➣f�������� �`HG�Z����v�`8)��!��1�a����2r��g��%4��a:49���(��=e)$�?�4�;�"p_MaMr�s�Ev�{@:�
.��e8�im�U��$l�E��Jn2v˨Lw�|wl�ק�kikA�V��ñ�PI�"f.:�bhF%,p���RE�/D5X��%��E��28M� ������R��G��Y��������z�ղ�� h�X�Mi�� !CN�S�۞�ϵPS.��m��iW��W�O	S3331�jj����|e�|�s�A�k���-"аb�aeD��{$�6�1�8aQ��sp�O6��tV��W3�e)B`�;P˸pS�@NTFM�4UJ�NY�Fsd��*>Đ?��h�肞F���3g�bj�Z�o֖p|�T{�������%S^�ES�Pdk�|]����d�+Al���Q����~Ք�+vL���7T*ȁ�} 9��p��B��@��P~%�K<��́8W�9c��.)��wSS���0��-=ΤaЋ�~9������B=��N�kd��-��}��������^\���qR��B]�$�9q ����V����sbZ:)��G�GX�@8�1�ѫ�S�n9��E�)��D�$�Jm���KV̱U`�ie$��kia�I
)�ܦ5�AP��mK�H�:3��
��#R$Z��'��#|�b��7�:�e'���jwy���D%�	nW35I,$���s(�,9�D�P��pa�Om1�� ��PE��4��,�5W>Ҕ}8`�������׿Cd�7z�쟤��.��@c�Tm�޶U��K��mc5x4����iW�����͹��]R�j2Id�I���h�-�ݦ��ćX�D��'� �4<-C~KE�荩5�wTq���E��>�>�_����=��_b����RWʂz�8��.`�m��I��O?P�>�o�4�FQ��������'��a:S%�W�`��z��7���ω�.t�`� 63@�a&Ǔ~z�݃�ʆ.��4�L�(��5�m���'2�Sȕy�	#3qo�f0vo��B�n�M�n�eŲ����y��=�%}��><��UMs[� 5������RZ����Bt�%yI��׮�W��q{1P
k�^��V����Q���i�[MR��_�>^��|�?��,!�faؖ.�2"I=�����_ƾ�54̨�x�=� p]t=�%j�HҞ�R��H�a���ؒI$�$�j#$� �H�	�����|`�$?G&��b0A$ɽ��<2�<6X�@�I�(À�X:����G$%x��O`���m���W(P��>�S��.>U$D��@������}�{���7͹�hEU�Q��\�x��qsd%��)��:!C4=��)�YdrF���x�rd���H
Q���tBA�N�N�����I8J�#�Y�S_,��<n�I��ǺL�����$�$%f��к\� � ��ož����<Jg�ԙ��:�j�!���
@�D ���U�B�p@<��?�|��eL�R�.�$�[���yKl�ۨq/�|'p��瑡1��a6�Y2j�M]eԒ���h�fFl��L�l���lt��"�)����9?Q{�_z�ט#Uj_d�� ��V;<gdE��/�p����X�wO�"�)�Q]�[|$T^�7;����S3.	N���|�@(r5hOʔ���5�+��-��Z��k���J��@avy��XD��I��\UȴJ���L�4�%�<��A�T4�F�ĘiD��j�K�F��fۮh�|��3��
x'@}�P>��g�VV�ҠjJ0��b|���\���$B� �)
�⭿)4�"X��#6��5�IX�j0�y!�`�����^0������:3P�ibJ������\��-��[5�Ӹ ��v�X�.���AY��А�� �s�i�S}�T
'�ZgJ �ײ���pΈ�Wa��v�����j�ZG\񛫞�G|Rj�aPr�%�Yd�G-h������`��(�k�̱����u��D��� lO�5+y�~����7&�,��ߗz����۴�Sߪ�+i�G 1�� �G��
!��O%���eTѹ��d�O�0�ϔ��&ԔD֟4_{[n6#um��%�Y���s,R�<�l<E/Ҫlb��GTZK��@� P	�V��r�X́w�<K���;��������T����x��}�C��;̎� ���5�[��(9w���;*�q/0�D*H�n�J��)в��+����Շ@h�ğ>��8�!��a�pK�K��&� ���"�5\o�T�n+���ǲS�sǧ]s�E��U��N���Z��q����_�+<:Eo豴]��+QgBpM�P|��	����&�6R���J���i�ΦM�Y}J��(�rbb���%G9��KL��)$�^4SϪ��Z�$�7��Et��꓄+�d�~3�4�CC.z�kc��zUI���(S7U ����˾f�u��2�}Tfwe��2�9�^m6����%��OjE�]���x�"I�y�ۆ�.XdI�M&Rio�2� v���r�S���;��n�-���'b
qs�x�\+o���%N�^�n�c}�p۔��gL���]�a�f-�f��'b0�Y�
3!�Y����x^	��I"����t��v��]ȳ�� �4��2�ű3R���CzԠ`5׀Q3љ9E�y���K.��F�9S��[~G�-z�8I\��.Vp8��ŋVQdAL�N�?��nTo�ᮇt�`���/�;��'�E:�-c���{�;u�H���HfÄ�1�*���`D�^5��A�X�}�p�!R>�|����֯��S̙%8��D�B��C��?t�)p���%�ʢ�b����O:�$��x�V-����|�qY���ͷ~x��[�,��IRTM9�s�]D�p�x�Ri��q�]��%�l�5�I遈�\ؐX�Ŵt��oѽMR=��L�>������Ѩ��}�z�4�>�� Ђ_ ��i ����a�zDN��m��ШBv����1�0		�)˼����:�8��lV����za�����.��j��� ���M��=$.SJ����3�`���M��$���J)�K ,�3Uj7�hD]u�3i������%`�.�P�������������w+	��9u��h.*NI��V��nWp��;GnI�<�L�B���r!����;�Y!!#'�� ��ٶs���RJ�*�"dLk(C��='P���t�1�H%����R�����@�qgz�-\2
��-A�E!aırWφgQ��n�pA=��х�[�aj ��Э	����A���Fy��JP�Y����e@�d��M�V��8/
 '6t�J� ��	"��C�Qw��B�H���s/��E��ХHb+��iS��T@D�8A
�S�Gc�yH!�
O�%b��lM�|���F0����]�U8��pS A�1�LKk�d�%Jj�L0-��X��*�x����I �ȹ��7AvFH_�C��0`�)�"�R���)���'s��"̧�C�eB������W�*vSJ�yLG��Q(�!��n��^�Qy���bR7%DM[!��ߍ���ZѨ��ާ1�dK$���B6H�}�Ro%�8�]�Ix����  P��i�ǵb���<1�1��0(Na�N�j�l6b��=W6�d��[璣�P��I��Rj602c�f��i��5���uf�&�du!R�(����kM�v�wH�	R%D�����"T�XP4�!a)hB��w\0(J$K��@	�B�;(�Q>Q�*L
oR�؛��N��?:�Bf ���ÛS�(�5t����� �*� ��#wHR�N8�Xl)R�����@(,��T<Kb쳤L
�m��/�<,
wEl��q#th%0�� ��#TX���W��w��d	H4�uŪRlJ&t_�ur��ҥ�6b<�2��6�Wn�������)H��2���(2(��U�_G�� ��	I)�$
+N	���ĲQ�8�e�޷]81R@�J��VIf+Z�5����`^(���
!aNr7�h�.Uҋa"P�2oȵ��	�@�aHC�o�R7���``� ��R� I-?�´�863B��Y0�QvC!�(]Q��E��������"yq���$�`�o���]�1� ����y�8Q�a�'7�l��^�Q��Ŗ�",O��vr}��r��X�}%"��v)�ɶJ��cm-�z�8<�-��c��H+�T		�H�[ج,�Tt��j�*����Q���r�j^��F�R�@�## ��BY�.�=i Meum½����D:�;��!I�J%�W=��f��cJ�5���$�aFA���M�洬A0�n����e'�2�u�+5�c��恞����/_(l��Gِ��6HR�j-�-� n2p��B
���`ذ;i�C� r���ھ֍�@3��B��.�A΋��A����>2� ���Z��	�[�Jj���sFн�����oA�������z=x	۵Mf�F1\(6:�=T(@�J�l�n�Μ��n�!�3^��<�"Vݧ�^��_r�сc�H����Sd��k`��v^k �S٤��!5�&*k�L���xD�Y�.��i�?!�`�Z��Т�!P��~e��Д��;��;�{���4��9�U�Q�D���Ӡ� �B�.-$��T�P���������]Ec�A��r�% ې�:�B�[��V���}D����M�4������W�Y��sC�u!����KPu����:�7)�8\K�@(tF�!�����<�O����p�F�_,�˶���=�&�f/{خ�3����>o`ں-��^��%F�����7��+,�`��o�������k���7L��)�|�-���æ�K���{�HFF(@! �����D͗��/�p����TQE�@����'��.{�W.�-����� s��#@ b��'��	
J������a?�w$S�	
�{