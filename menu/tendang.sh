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
BZh91AY&SY�J� ��qx����������`�ƐP�@ ��| J* I@�R�B"$	"��Q�UT�� 4� d  4  4  � �� 4�@�  �  �    p �M @ @ @ � hh�M4       2 ��j� OSFL��������ɠ	�Q�O)�@ *BOS�������j~�ԍ�i��M4�i�4�FF�i��o���\x�Ti��R5���a=󽹤�����Mϕ��3�#c)��d����r�5������,72s_:��&�鱉�����d�4K�&�l��4j�L51a�5����ћ[+%���據g7�U��ɇK�S&&���ձ�_EZM�j�w:�.���0�Źv٭���͹֣����v�!����O�t�b�'2�cas8*�n{S[k57�S{62kK�WC
�v��ZO�8��Z=9��{�ioh�Y�ܙO����ѱήv�h�^W�ɇ��旲���Uʧ�w��̹�p�\/��ж/�7�Gt�R�J��1��sR��ρ��s�U��8������YuѬ������ŋ�b�1�:bńb0����?=>����U�;����㌣�Y�q���+5a^��s�o"�Vѣ�0=*¯�sF�lx-�YG(�.x��6��᧕]��OJ���%d���^w�N�����׶��u����~u~���g�K����h�.��[H^�x���̝3scks����ع��ɲ\�������[�lO�»��7q��9�3kh�'ޛ]��������*�̫{�e=��W���o?�W����ú�L%�:fOj~�s�}E{�`���_�w��_Z�<����x�ﶼ
��������,L����Υ�Sۥ�蚩��-��g+9�x��b��?C�XX�j��ʬGe�������b�X��HK&`��bV�S$�K�2t�/�x�O��U�z\��s2��dĦ���w�Gef3���(|���{J�n%�<t���謦��ls�S�jV�&��W��1��[ݖO���u��O=X��Y>�[�֯+[�d�U��Y����Wy����Qf���/Z��VD��X��eY������u�L��d�]��u�MN�i�:&�T�bdÍj8Gݼ��xֺO]�ԲL���kc�|������2x\[F�\.�5���WR���b&
���ε]C���XKFoMK���7�WKc��<-�7aWu���W@����qfø�(�-�����j^�6��MW���}v��M+b�{�~V�f����q|NOm��~��-tɩ{�2rkrwժl����\�e�v[��}�0�h6Z��l�}���xgUd���OB�2��x�rt=�s5a�v�\,0�4�j�0�h����%h��uЯ��W��d�H��.��}8�}AW�k�=�q\��>w���G��_3����}��xކ���872m�צj���{��kWi^�������G]�wn��^E�_B�|���oag�#�#�Ħ����}:`��#Tx�i�!�+QF���Ǫ<��u�Z�l���e}�l�G�挣#�2�1OU����d��k[cs5i2�S��aXaXh��v-��R�XV�nK韎pWq��U�[���[_^�;--#�X,.�)O��1�6]�/�u.˶2�q���m�[#���Z�ZֵƣI?�2��0���o�C{sj��HlbV�om��[[��zNE:	�V�il���S�^���M���L?�S�خT�Ku�:/%�r-e�SU��ƪ[�}��'�1y��}�ty#�����i;�Ԭ��35qK���Vf�ح�SZ�9ٻ��I�K���&J�-�y&#
�S�<�#e0�L0°�*�_�X}���y[���OY�_KTɣ�95�'���_i�V)����+$�>F
�Oj�j�C��ĳYG��]+�a~�ɜai}�_�r�qG�4������W�^�{�;t�5>m�W�����>��L�^V�/�
^
�Nې�N��*��Y�}����\h�ɢm�ab�<����.���E��[��K+�d��l�}��f�B9Gz��Ds8)��4]�X�S;��]m��w\��r��uѶ=�1KY:��2z�f�R�Z5���'CI���)���v�0ú�b�3f��0ɺ��q�W0����u�X��!�r�۶�X��Z�<�;Oqw#3�ц��b�u�����u�be7���^�>ds��X�ʶH�p��ۡ��p���6����7���C�������n�ֽ��`��X���%mk|Shw�)�tԴW�]O
uL��8�e:	�&,��Vw��]��C���j`lbk�z��=��n��Uq�Ӕea�`VL���j�14eS"7�{��[�3k��C|�Jbja�<�䏾�:5�W����������Xs׉�^�5<l����g�[&LJ�&�گa/e�px�.�t͛������U֭���3��;��
�b=Rj�:���Y#�1q�T�u]�T�1��n]�5��w9�p�-�<q�P����f�#�j��(���0���9������.OK�M��V��ɛ�up��v����ea��2��ֲ뎅]��[--�a�,#k&&20�2a��ɜ��w�Tܫ�6�����V��5[�,Y�BigQ�J⶯2��bO<y��Y�а\v�j��lK}�4�_z��MJ{���z��|�rys��K*����Y2���L�-�XYB�GҏT�P����GՌ՛%a�<5�rp���K�d��O�����t���Nu�b�g2,L�0�bl�ia�3b��	�����5 諚ķ�
k���Ű6ͅ�����ԯ��7<ErV����^[޵�֔���{CF�`m��+8���q���j_�jN���F �4h4t�#	W*��K�-�59ؕ�Ň��le1d,��4.ǰ8N�hp���Ѯk��Hj[����q-��/*�`��:��e2t#���*��ڇ��Y�b�vq�gk�UigU���11U��MN/
�+u] ��xˊ�˞[Ǧ7�b�%ᴗ��2M�j�n]��e�'	|J�J����2qqjd�2�Oi��J_���lGZ_vb|n���]�Ի��ZS�lb�\���O��N�{*�%��>�;��jV(�+���J���1J��)[ө\NİQ��O�;l/}�eU�b��bWc��kh5�����o�Ɇ��k~%e?�]���ȿh��|�����G�ܳ�;�~r?yP|��_ �`��#��>X��w$S�	
4���