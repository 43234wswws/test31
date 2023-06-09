PGDMP     .    &                {            Shop7    15.1    15.1 3    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    73979    Shop7    DATABASE     {   CREATE DATABASE "Shop7" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop7";
                postgres    false            �            1259    73981    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    73980    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            8           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    73988    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    73987    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            9           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    73994    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    74027 
   orders_seq    SEQUENCE     z   CREATE SEQUENCE public.orders_seq
    START WITH 1000000
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.orders_seq;
       public          postgres    false            �            1259    74000    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    73999    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    220            :           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    219            �            1259    74009    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    74019    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    74018    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    224            ;           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    223            �            1259    74008    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    222            <           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    221            ~           2604    73984    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    73991    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    74003 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    74012 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    74022    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            '          0    73981    category 
   TABLE DATA                 public          postgres    false    215   L7       )          0    73988    image 
   TABLE DATA                 public          postgres    false    217   �7       *          0    73994    orders 
   TABLE DATA                 public          postgres    false    218   9=       ,          0    74000    person 
   TABLE DATA                 public          postgres    false    220   `>       .          0    74009    product 
   TABLE DATA                 public          postgres    false    222   R?       0          0    74019    product_cart 
   TABLE DATA                 public          postgres    false    224   �Y       =           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            >           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 45, true);
          public          postgres    false    216            ?           0    0 
   orders_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.orders_seq', 1000050, true);
          public          postgres    false    225            @           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    219            A           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 22, true);
          public          postgres    false    223            B           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 9, true);
          public          postgres    false    221            �           2606    73986    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    73993    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    73998    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    218            �           2606    74007    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    220            �           2606    74024    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    224            �           2606    74017    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    222            �           2606    74026 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    222            �           2606    74033 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    3211    220    218            �           2606    74043 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    222    215    3205            �           2606    74038 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    222    3213    218            �           2606    74028 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    222    217    3213            �           2606    74053 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    224    3213    222            �           2606    74048 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    220    3211    224            '      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�[/l��5��<I3�d�ċ��.컰���
@�֋��^�qaYf�̜t�F �}�d VG      )   N  x����n]7E{��l��>�*���N�`�
������-��S� �B��=k6����O��>�z��ݾ<�ǧ���oo���m=}�?�֯�p���?����ϧ����Ͽ�����M|����cZ��7��
i�D���2���c|���������W�O�	D����Pՙ	��i�$j^�%����R�����(J޴W���8�T][N����_�� �f����TġN����+����|�"�&z�$Ӕ��]�SMJE3G55��Q^�X@�޲���E��zK�&B�J�.}^�I�ĺϘ��왺�$��3�-�6K�8�sLl �2��d�J�S�j�9v�}�ښw��sL� �����PK�Xs������N���Wr��1 ɹ��Ѡ�
(x�6���e��
M��9r[GW��C(q�qj�,�F��״ze'#�v�������G�3,@i���R]�
�9r{G�IZI�� ـeG��9�8�J�9r�g`��N��l$S��Tr�Y��~����SXZ��M���AV 3")I[���+>�ȭ���l,������>f�hm��S����1r�g�2YS�e�lQȢ���d�^�9Gn�`+��h��b,�1
�Ҫ�+L{����3W/�I�}&N�z&����G���h��s�L�>�V�����H�
KV�2��9r�'Z6���+���6�d�ON�f��#��mK#�lX]�,�����j�|�����M*C��i��-a�����:D�?�����5uF�]ZwCb�,��z��V���s䶏5�9ìN��N���uY^����u���I3Yreb�P�&j��+�Y*"{ŧ#���!%�^�*y�"KP�,�Շ����b�m��F���!����J�J	ڌW|Α�>k1�0�A��>�1E/	�a��R�W|��9�K��Xa�fXY}E�J��"�?����e�g[ �5�D�V�Po��%�+>����,gЈ^�U2�z����`͌���9rۧ1�T����`���	�`������b�ml�h�6�C|x�q�`+`�L��s���]V=Z�kT�?4�u�)>���B��s������k�X�p��P�:p|�C��ӎ��>C���d����[����mƌ���s��w���h��=6�����j+���HnW|Α�>�c���6�I̆�`mg� O�]�9F�OW�*�d�uk�Z��V���yF�+>��{�I<s��a48�z��tF��#�����1r�����.Zu��D[w�x��LJ��s����Ȋ�N\(+;w�BZIFE�V��s䶏U5�cm#+�A}�O�	0�My=��y�y	l�[���d�X�\�i��L�\q�g#_���,�`      *     x����j�0 �{�·�K�c;;��Cat�v��?X��&�?���v�N�,	>�?w'�?���m��PcL�]l�X�0�ש�O�<��T��|��X��؇��'?������z^fn��0��V|��}�b�r	�VbM�HdaK���V��2��c����%l\��K�s�)'����s�l�ۗ����W"[�-ںaI�-Qs�r68� Ng	ɔ�g�*/��������.��U�&��yq��=k���
��lh"���ؠ�[����z@�@V��>�|      ,   �   x���Ao�0 �;��4!p� ;Ud�NP�z1;��4��^��w{y�{�p{��0� ��MU@A;��Tg4�����wc��N�'Z�^&�4rn+��A��j�D��<Vغ�:���^�3jF5&�MK,��m�1^l+{�������m��	-j�7�f������a'}�u�P��W|tY&��/�;�(&7xT�>�sD�ِ�}����#��R�:\�      .      x��\�nGv}�Wt2���P�H���8�a�6,�x��D��Ȧ@ј�/�DE2k$p��/A 0���d�\��|A�_�/I������P���a@�x�tWW�ڗ���u�x�����H�x��;��O���ƭ��[��?����t�v'�}s{�����?����ڸ����q'���q�]��~���V'��ؾ�>���������s�r�����~�q�g�/_y��_O~��I^��w��/]�$KkW���W�^�������v�W�I9.3��tv<;N�^��geQ���}�ݟ���z�¸���$e�.��|��=�<Oʾ���1�I�a9�A&����ݐ�-���ݟ�n�yO'qc�0�1;p>�ip���sfO�ٮ�Ս1{RN�"��&nBC~�̎0�L��)3�~7��I����T��Ft��]���<����ڤL;��r��$�;q�u;Q��w�{wU�r�9����2l�ݐa���T^����H rB9>(37ǯe�����H���Qt	g"�������&㖟�pS7f��L�mX�ll���-��'��[��8�칏�>~��v�����6�wg�.Í�wߺ�qw�T�Bd?;t�ߝPA����f���T\�\��UAk�J����x�H/�E�C\ŕ�f��):�w/����>�p����CM�m9tQ�x�ι�~.[��OL%sS���TE�0+(E�f���\�,qG+S���N9��.qu�[�X��#�Sj�ُL��Sַ�����)F쫴���L�6[��{
�朮+��O��+·7%"7��J�f.�5�*py�)gқ=�E�i;9Ml�)V\���Дg�ࣛ˱wYC�)x�sS�3�{�w,�D���p�s�u��i� �����yOE'Z�������:H���W2`�]��g��ʲ�b�:AQݧ�[�z5d�t�P�|�gLA��;5��E��C�}J��N]'<,�t�?����:��*��/\H]�����{���_��>�	f">{(��c+��&�.êr��	�}��`.�Bwm�g��?(��6Q��םs�bia�<�.��c�5�C9�:����6eg����\v���X?} �H5��ԉN��МO�6/�"�@�����=`�yw�xߙǿ#����� 	P�%��ދp-�1C�����2����C��|���>��s��U㍀Doe0�q�pE��2��e�a�)g�6fv�N�v#�:���������]�\j��o�ǜc�����EnX��^���(̠q�y�2UP0B��nz  ۄ�s������߫�[0��V� ,x���1�9�Ҷ8����A"݆����=W5�͑,��*���(c�^��Y3�A+���h�D42�1����Z����"N�$w�.��F�� �5D��\`�2m��Û�b/,�����|4P�C��u��n,���8;g�c��<\܅?�
��&��Ǵ*���	U_R����HM�S�j�Q{E�Xj�d+I�wڥ�t��H
P9zT�F�7��<9�bID���**1ФA�ő�R�\��@�濹`�r.QѮ3�LV�b��%�q��o]���x��U�4��N̲��yx�NSW��@G�����(`���$���Lӏ�-�s*沧�j$Ru�Lnē��p�	[&F+B4'�	�H�����Dg��	�Y�w��9C��;D�=`�:�k;Ʀ@���3&�	�0 \�/G3��5��O�C����CE���)J��)���k����z�\
�ܮ�Q�{�_��<�H�-�|j�D07��}���� �~8��QD��=������^�B��e�k"!�($��a���cZ�srQ1I�����#��+����,,��B�.b�B��G��}��v��.�q����8�9x2�7�;�`�1�,���0��)�����D,�/x�:e�C4��F`F��q1���E>��gR�=��	kA~\I=�W�t④��[�(+Tʡ����	Q�r����Ș�$�zN"�"�X%x��w�4�P�Q����q�8�3(S .�ݔt�5����	��l�2��%��y�FH"�Jta�?���piH3���X5jQ����|n[*��ߋ�<�o;��42�b#�M޲�l��}�kqI�'d�}���"ν�D���4�d��6��>�[���l��v�җA;��!� ���`�%�#ɡ.k2�K��BQ� 8���ϧR�@!�v`q��@��?��C�lN�3�c�U�B�m��b�(IwQL:Ϛ�$�R�F��|�)Z֣����w��r'����(LŗR)�x)wQO`|�y	���p5�M�fem~a��]�v=W��si�@a� r`�G�B�Tu��4��G�K��4�o�ԝJݤ�#��"_T�?3�?�969ϯ⊀fY�E�`�u�[�1|�^�4����ɭ&Q�`��z�VW˹���]Tldmd�e��;�٧��0�����و�Fa4�\;��9k�ᔧ$��]1�=�ѩ��Vu�]乛�>���l��/P��� ,5R�ۡk�i���<P����#o�^C�<�(j���3��T�Q���$��(L/���}E�����l���c�k���O�!�'w�mad�$)��W�B����]��
�D-�)|O�P6�4�R�'w�I�����U��:t�T�%��sB����Q�L� .M_Un�KM��ֶ�������}�A��+q�g��bQ����N����7"&N�4��ӵ�K�0��v�dБ}QR�2S�&���b���pR���)OYv^�o#��L�"�+���"��Rw�Ń7�?��b���pq���UbD����W�q����0�������i>�xB�zn����ܱ�D�l��N�?�OW�}���͍�6��%�������
B��3�TdI
�F�ci��%�
��n���P��y�=�\s �G��g��+��qu[�MkAP9��x��_8�zh�r��CS���	pE�CO�27�,WK|I�)�! �g�40��̨E��&��*�����|g.�iEfd�I�EYD�X	70׹Ŧ�b����3G"�NM���)�Ũ&_��z���LZ�>��ފ,�	�;��!E,����*��/�����]���lN@�I/Y#7��t�)CSi�@�$�\�xZ5��r�Ю�$5k�d��Δ19��9�a���Ȓ���T�Z�<�K��M̩��j��������n�*(� ��7�Ŧ����˂�{�YL۫:�^=_�Tc��\Ts⹯��ϋ��ڍv�*DW�i�'�gH�W|�|���oM���!�]��K�(qumaynau~~	��p��1\ݎGN������M��|�g�� �� ��ݭ�����Vek�F��J��=-Y'eH�v�ʍ�[�U��^���q�(u�ƈ�9#��e��΅������͏^�dk]��]����8A�ig�=<�@ ��-�K˝%��A�%?���h��xQ��`�w�`J�D��S8���X�H��^k:�%m7	����D�S���e-�����W�ы c? M��5����¬��?��$�
��S��<� �LjOĭv�F���!�K+%NB@�*Bj�=NJ�t�@T)�V z�:Egaw��0yhv�_	��$�l�Z��l��eWZ���$��v��(�"�,���Ul�x����x��}�����Xr�ݎё�G�S��=�x���y�妇s���[YYf��SK�,�!�c�����uKũ��O:�CU�눘�����'��M��%ԏL�O��l��\Q�0��t=]���c���okcK�����,�������6g��Kd�@����Y�Ԫbξ �1)�T}#��q�%
�r�P/�`Z�S�A�1%�4��XP�GA-�X!ad=s!?6ڤEV�9_\v�L��7�-���w6��K����������{��}��,y�QZ�4k?epӗ��w7�����n���x=��<���!�((�Н���\��J�۫v��T�=@���<��d�A&Q4c� �ܙ�6�
�BɫEwd���e�P\ 
  J5�]���F5�d����i9)����S����?fI=W�O����k�/C�ʋ��+�Ȯ<!CF���j��� #�5���uن�,D�]-���AsF��E�%���?�����vg����+[����x`Ǳ2Y����%�.4z���n�~���-#4)�������)Y?��'�m��`#�����T^s�|k�D���R�<�)V��+�ي���V��µ�W�\�v��j~A��Jw~�u�;���]͹�+�z�;����E�k���_���_h���m���;�x�.g��6V/@˽�֐��.��ےJ�AO�O���]�|b\SxVg����k��A#!�l9e���Ƣ-(�Uxc;����C�����W�3���B���ӱ}�%Z"ԑ�D�ǫd�cm �z�G��s�5�7�S��Ah~�<�T��cԙG�(�6��%Oy�#�o5l��u�َ:ԃ�f�⢡R��چ�]jTʕ��UK����|���IMY!6z��TѸW�A�v��
ԁ����5��7��c�1T8��2�%B2�[�3L�X�+6K�̾��z��:�#BZ=����v��_i�Z��"��7��~���q2��/4ҧk5�o�+��c�2��
�3!mEc���8H�"�TM+á �/a� �ӎ�+F��1���3[� YaK�xT�08�+�7�p٣c r���}��gJMV��:�Y^սhC
eu�H����s�E����v�7�|��VW%�����y��y"KeǊ_��KxH &Q��ۛ�"���V�9�����\����Ҳ��:�2��㲰��DW8U3@�0��~�Ȉ�z�6�B5+	vF�;�]���Bj�I҄ n�=y���Sw��H|�3M�|S��0j}_�����c�Q��ũ.%������C��t|�q���P��++�ptn2���/+gaH���v�F4��3;��8H Jz����ܾ�wC׏��b�K��)�&����n�/�M�����~3�ȥ��t�cx�Z�}f}@�NDU��d��d�&�+?�`=tODg�s��X38_mN~���Ɲ���:[Ym	k�K��H����؉�r*��@!s�&���G�e�uM���1�SV�E��-S��PP�f��J�)Ώ�=ӤZ���p�ǴV�[�o~��!&�9�g�8�u��U�d	�@�o'x%_)�c��T��c���W �="�*:Þ�s::�܀9��@Wa�cm�� �cA؃�84/��p�~���=A�� Iא���jAH%�P�id��6#�$HtF��٘����'�:�1_q�I�#��Ʉ��������衉S}hMY*�/�]��v��0�.z�"��}�(8vG�Sw�)�RL��
M��kJ�،3�7妬lzL�o��C�,|�N��G��T�
#J<Me�u���%�����K:�D�N)AO�`�q�{�g��|ׅbUH���R�o%0��P#���'Ш�K��%������n�0��+ш�Ckc8�k�pT�Y���O���?�E�AQ��X�
�5�Ӡ��^�V������\�f5�|̆"��72.#�r�k�ά�B��}X�&�昴���ym��>�Z�9C3�F���xn��$�+h�)ª�L���jp��,3SM��VC3�B?�r�ژ-*l�^��$%�:X�e��H�a�ZR�������:����L�� ��m_�nZ�S־v��(T{o��Q)�w}�h�0���ޤ{�<���G���BT�>Ӹm�)ٰ��m��m�n�?KR�I��8�alV#�xb��Q������`���nea|vy��p�,�����Q�[I��܇q����kh�J���qY�����}�}�s�̸LLݛ;A�K8�Wd�� 1�Z��o�]�?/rrC흀�%�������y�#�/M����|Z�����cA�04�떷� ��B�9*�V~�.n.QG�U+���E�-wA���o�vXݏ���n��|�j��X^��_[Z�[\��//�r�c��z�-�׀po�a���K4
*�
�aĀ��lc�^�#�8���<�QX�V@�g���}�~�d�y�~�P�u����;?��k��77^O�w�km��D���wY�R��������_�> @O5�5d�JY4�ڰ��q㕘��4�G-�/N�d8��Z����I��v����5<bH�Bt��}f�2NgAx:�=�54;���;IBjEy����K}h�a�\�Q�����N�����7\ʷ��;���6fEĬ)~�r��Ƨ	����>���ӈ�kѿ}��D�_�6>$��/��ۇ�·��*Vk��M(��.௸h3Η�j�b�,,���VfזY*��V{N����)�@-?���HR�s!��v���z�@%�Tm�(+u���v�)bA������X� e���	=�Ք�V��~�X,��N�+������]�g�@Q=�7D<�{�kBzIV��Ci34Oʟj����u�����ol�%L����p�zv��v���h9u�Vʐ��{�1���K��4���e���	��Wbk�{_[��?q�N���)3�Xe̥GN�.Zӫ?Q�75B"�>�[O-��OҢ&�����Т_���u�$��l:|s��Onm��`;j=��j]�J�9H쥗��_q      0   
   x���         