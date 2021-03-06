PGDMP          :            
    x            Togzhan    13.0    13.0 .    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32957    Togzhan    DATABASE     j   CREATE DATABASE "Togzhan" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE "Togzhan";
                postgres    false            �            1259    33392    accommodations    TABLE     �   CREATE TABLE public.accommodations (
    accommodation_id integer NOT NULL,
    country_name character varying(32) NOT NULL,
    address character varying(32),
    type character varying(32),
    class character varying(32),
    price numeric
);
 "   DROP TABLE public.accommodations;
       public         heap    postgres    false            �            1259    33457    books    TABLE     �   CREATE TABLE public.books (
    book_id integer NOT NULL,
    book_name character varying(32) NOT NULL,
    examination_id integer NOT NULL,
    price numeric
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    32968 	   countries    TABLE     o   CREATE TABLE public.countries (
    country_name character varying(32) NOT NULL,
    country_rating integer
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    33444    examinations    TABLE     �   CREATE TABLE public.examinations (
    examination_id integer NOT NULL,
    examination_name character varying(50) NOT NULL,
    examination_date date NOT NULL,
    price numeric,
    country_name character varying(32) NOT NULL
);
     DROP TABLE public.examinations;
       public         heap    postgres    false            �            1259    33319    grants    TABLE     @  CREATE TABLE public.grants (
    grant_id integer NOT NULL,
    country_name character varying(32) NOT NULL,
    grant_name character varying(32) NOT NULL,
    available integer NOT NULL,
    requirements character varying(100),
    contact_email character varying(32) NOT NULL,
    website_url character varying(64)
);
    DROP TABLE public.grants;
       public         heap    postgres    false            �            1259    33349    internships    TABLE       CREATE TABLE public.internships (
    internship_id integer NOT NULL,
    country_name character varying(32) NOT NULL,
    internship_name character varying(32) NOT NULL,
    available integer,
    requirements character varying(100),
    organisation_id integer NOT NULL
);
    DROP TABLE public.internships;
       public         heap    postgres    false            �            1259    33334    organisations    TABLE       CREATE TABLE public.organisations (
    organisation_id integer NOT NULL,
    country_name character varying(32) NOT NULL,
    organisation_name character varying(32) NOT NULL,
    contact_email character varying(32) NOT NULL,
    website_url character varying(64)
);
 !   DROP TABLE public.organisations;
       public         heap    postgres    false            �            1259    33364    scholarships    TABLE     R  CREATE TABLE public.scholarships (
    scholarship_id integer NOT NULL,
    country_name character varying(32) NOT NULL,
    scholarship_name character varying(32) NOT NULL,
    available integer NOT NULL,
    requirements character varying(100),
    contact_email character varying(32) NOT NULL,
    website_url character varying(64)
);
     DROP TABLE public.scholarships;
       public         heap    postgres    false            �            1259    33379    students    TABLE     m  CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(32) NOT NULL,
    last_name character varying(32) NOT NULL,
    date_birth date NOT NULL,
    address character varying(32),
    phone character varying(32),
    email character varying(32) NOT NULL,
    gpa numeric,
    country_name character varying(32) NOT NULL
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    33314    websites    TABLE     �   CREATE TABLE public.websites (
    website_url character varying(64) NOT NULL,
    website_description character varying(60)
);
    DROP TABLE public.websites;
       public         heap    postgres    false            �          0    33392    accommodations 
   TABLE DATA           e   COPY public.accommodations (accommodation_id, country_name, address, type, class, price) FROM stdin;
    public          postgres    false    207   �=       �          0    33457    books 
   TABLE DATA           J   COPY public.books (book_id, book_name, examination_id, price) FROM stdin;
    public          postgres    false    209   �?       �          0    32968 	   countries 
   TABLE DATA           A   COPY public.countries (country_name, country_rating) FROM stdin;
    public          postgres    false    200   �?       �          0    33444    examinations 
   TABLE DATA           o   COPY public.examinations (examination_id, examination_name, examination_date, price, country_name) FROM stdin;
    public          postgres    false    208   �@       �          0    33319    grants 
   TABLE DATA           y   COPY public.grants (grant_id, country_name, grant_name, available, requirements, contact_email, website_url) FROM stdin;
    public          postgres    false    202   }A       �          0    33349    internships 
   TABLE DATA           }   COPY public.internships (internship_id, country_name, internship_name, available, requirements, organisation_id) FROM stdin;
    public          postgres    false    204   �B       �          0    33334    organisations 
   TABLE DATA           u   COPY public.organisations (organisation_id, country_name, organisation_name, contact_email, website_url) FROM stdin;
    public          postgres    false    203   3C       �          0    33364    scholarships 
   TABLE DATA           �   COPY public.scholarships (scholarship_id, country_name, scholarship_name, available, requirements, contact_email, website_url) FROM stdin;
    public          postgres    false    205   �C       �          0    33379    students 
   TABLE DATA           {   COPY public.students (student_id, first_name, last_name, date_birth, address, phone, email, gpa, country_name) FROM stdin;
    public          postgres    false    206   HE       �          0    33314    websites 
   TABLE DATA           D   COPY public.websites (website_url, website_description) FROM stdin;
    public          postgres    false    201   �I       W           2606    33399 "   accommodations accommodations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.accommodations
    ADD CONSTRAINT accommodations_pkey PRIMARY KEY (accommodation_id);
 L   ALTER TABLE ONLY public.accommodations DROP CONSTRAINT accommodations_pkey;
       public            postgres    false    207            [           2606    33464    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    209            I           2606    32972    countries countries_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_name);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    200            Y           2606    33451    examinations examinations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.examinations
    ADD CONSTRAINT examinations_pkey PRIMARY KEY (examination_id);
 H   ALTER TABLE ONLY public.examinations DROP CONSTRAINT examinations_pkey;
       public            postgres    false    208            M           2606    33323    grants grants_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.grants
    ADD CONSTRAINT grants_pkey PRIMARY KEY (grant_id);
 <   ALTER TABLE ONLY public.grants DROP CONSTRAINT grants_pkey;
       public            postgres    false    202            Q           2606    33353    internships internships_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.internships
    ADD CONSTRAINT internships_pkey PRIMARY KEY (internship_id);
 F   ALTER TABLE ONLY public.internships DROP CONSTRAINT internships_pkey;
       public            postgres    false    204            O           2606    33338     organisations organisations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.organisations
    ADD CONSTRAINT organisations_pkey PRIMARY KEY (organisation_id);
 J   ALTER TABLE ONLY public.organisations DROP CONSTRAINT organisations_pkey;
       public            postgres    false    203            S           2606    33368    scholarships scholarships_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.scholarships
    ADD CONSTRAINT scholarships_pkey PRIMARY KEY (scholarship_id);
 H   ALTER TABLE ONLY public.scholarships DROP CONSTRAINT scholarships_pkey;
       public            postgres    false    205            U           2606    33386    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    206            K           2606    33318    websites websites_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.websites
    ADD CONSTRAINT websites_pkey PRIMARY KEY (website_url);
 @   ALTER TABLE ONLY public.websites DROP CONSTRAINT websites_pkey;
       public            postgres    false    201            e           2606    33400 /   accommodations accommodations_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.accommodations
    ADD CONSTRAINT accommodations_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 Y   ALTER TABLE ONLY public.accommodations DROP CONSTRAINT accommodations_country_name_fkey;
       public          postgres    false    2889    207    200            g           2606    33465    books books_examination_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_examination_id_fkey FOREIGN KEY (examination_id) REFERENCES public.examinations(examination_id);
 I   ALTER TABLE ONLY public.books DROP CONSTRAINT books_examination_id_fkey;
       public          postgres    false    2905    208    209            f           2606    33452 +   examinations examinations_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.examinations
    ADD CONSTRAINT examinations_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 U   ALTER TABLE ONLY public.examinations DROP CONSTRAINT examinations_country_name_fkey;
       public          postgres    false    2889    200    208            \           2606    33324    grants grants_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grants
    ADD CONSTRAINT grants_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 I   ALTER TABLE ONLY public.grants DROP CONSTRAINT grants_country_name_fkey;
       public          postgres    false    2889    200    202            ]           2606    33329    grants grants_website_url_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grants
    ADD CONSTRAINT grants_website_url_fkey FOREIGN KEY (website_url) REFERENCES public.websites(website_url);
 H   ALTER TABLE ONLY public.grants DROP CONSTRAINT grants_website_url_fkey;
       public          postgres    false    2891    202    201            a           2606    33359 )   internships internships_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.internships
    ADD CONSTRAINT internships_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 S   ALTER TABLE ONLY public.internships DROP CONSTRAINT internships_country_name_fkey;
       public          postgres    false    2889    204    200            `           2606    33354 ,   internships internships_organisation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.internships
    ADD CONSTRAINT internships_organisation_id_fkey FOREIGN KEY (organisation_id) REFERENCES public.organisations(organisation_id);
 V   ALTER TABLE ONLY public.internships DROP CONSTRAINT internships_organisation_id_fkey;
       public          postgres    false    203    2895    204            ^           2606    33339 -   organisations organisations_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.organisations
    ADD CONSTRAINT organisations_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 W   ALTER TABLE ONLY public.organisations DROP CONSTRAINT organisations_country_name_fkey;
       public          postgres    false    2889    203    200            _           2606    33344 ,   organisations organisations_website_url_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.organisations
    ADD CONSTRAINT organisations_website_url_fkey FOREIGN KEY (website_url) REFERENCES public.websites(website_url);
 V   ALTER TABLE ONLY public.organisations DROP CONSTRAINT organisations_website_url_fkey;
       public          postgres    false    201    203    2891            b           2606    33369 +   scholarships scholarships_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scholarships
    ADD CONSTRAINT scholarships_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 U   ALTER TABLE ONLY public.scholarships DROP CONSTRAINT scholarships_country_name_fkey;
       public          postgres    false    200    205    2889            c           2606    33374 *   scholarships scholarships_website_url_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scholarships
    ADD CONSTRAINT scholarships_website_url_fkey FOREIGN KEY (website_url) REFERENCES public.websites(website_url);
 T   ALTER TABLE ONLY public.scholarships DROP CONSTRAINT scholarships_website_url_fkey;
       public          postgres    false    201    205    2891            d           2606    33387 #   students students_country_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_country_name_fkey FOREIGN KEY (country_name) REFERENCES public.countries(country_name);
 M   ALTER TABLE ONLY public.students DROP CONSTRAINT students_country_name_fkey;
       public          postgres    false    206    2889    200            �   �  x���An�0E��S�	
�")i;m�6m�8E7�L$�"L�E�pN_ʰPx� 7�s�3�ꭳ���f��@�;\9j������6�v��d���p^L�߅,�5~��`".ml�{����njV�Wړ�JH\�և��g��v��}v��5��4S�������.D�w�G����J5L�sO֑ﲳ��z����p3�h��_�&��:Q�DdY5��s�t��p67	*Q�
�ެ]
\�v�1��Ӎ6��X+��!e�+���'�7�/?�3�5���h۟+�(�§ln���ʹ��K�xS�(�w1���U�>�J_f)�H�,���v���{��#�DV��H�R�G�����x.�U�x	����5�T�l�7ֹy��3.g��Y����2Q(���r׸���'������q=��Zk\�;�p��8G,k�^>0�� ���      �   n   x�]�1@@F���S8���,kJD!QH(�*q��bv���y,�Z��~u�y��K�B�q����N=	�����4PHA0��FeP�@�cRL��hR�I��$M� 5isD� ��6�      �   �   x�u��N�@D�]_���X��5&dqo^z���0��ٯw��+]/��D��2�8M2]�$+U^y�@/a�A֝�G�40��m�_�o|�ѭ)����G�˵���7�T�h�z�g�v�w��>�9�d�.^�"^��hb�ʍ�x�)�����ŉ}�0Y�ñzY��[	dZY�|���Y��ݜ�G|��ɔO(      �   �   x���11��9�/	Iڦ�x��ut�M\t��ۂ������TPVEd�2E������{:���Z����(�I��e�?�s�1*q$aH��Itq*)*�R&)#�����`mf
�#�(�%J��S����"YM�۹�s�?�Mi      �   
  x�]��n�0���+���IxDmW����>�u37�06bL|}AQ�ХG�s�f�8b%ɡ����?<���-KA���A������yak��5��^㼂�qQv����BxOs�n�H�	��q1��'m������|L�&�
+/M2���Џ{U)j��`L�[$��T�h��C��cV��1��p��=KAnb3Ը,��=o��+*+An���:t���E�����o/i�h��]xKK���Hj�),�0�阓�w�+0��g�� ���      �   �   x�Mͱ
�0���ܧ���6�:�P�"ı�-��7����qp>��h��EϨb�qaY���G�n�)K4��bW�Vhʰcx���p[�<;U���%����rxb�>���6�r28��[�m[ղ��B�r0ԭ��v#.      �   �   x�U��n1D��W�L8R�:�*�D
es�������.	|=6E$���{���2SA�N_N1#�%��N�u�Q0�2ZO"�}����A;����A��}|/׊0gM)Կ�xN乒46?|nܱޘ\u��&��xƘ��O����/�D���1
�'��N�n�iE7��L��fW5?�sFAR�      �   >  x�}��N�0�볧����ë!Qc$�8�1ޔq�6tm��1��-���wMӞ��_w���g�:t�.� ���W�z׋5Pk�
ӪAM=%�ك����dB�0�;�RҘnR�(3VY�«�JZ+5ԝ�b�"Q��t�Kŋe`��I���U��wh�OS�a�}�X�r�E�k�qמ��}H��1�a+���&����3[g6}Ȯ�*Li8�D��r�m{1X�<��[O!"<*�!����t��o.�;��GTYŭU���t���,�a)�����x�ZB�38u/'�w�j�3�������.�3���r��
      �   �  x�mUK��6>��n=�)���v��)��.�I�����bM�%9q~}��$@߬�8�^��d��7��="�4�X�3�A��d���`�TV�Be,�e	���>�V��u���uQ��3N��I�8���0x�9�))p)��oλ���oD^��Ζ*S���;�:�;2�g�j���Q��[ߣ�wz���J�r�"�uz�A9�X�&h}�w�~<�[���W<O{k�����d��ѯ$<�[mm<A�x���J�c�-23/�e�2Q1����:��q�e󬄗�Xs>��*�G'������A��yƓ���3���F�%gy!Y�d
{=ɺ����^7,wP�/��0t6>,����Lu�zJ>�+��b���DQ�n��z�~oq:�;��-��	z$������ �Q�A��O���1y4����3%%#���<V�[s8,������UEF=7^�y6k���J��v��݈xU�"'�U%<��e����_3/��Ϟ@]��:���@���)1�D�������)XY��Tm��HU��=�Yi��0<O��gx�X�.j��YD��n
�f%*^�"��RU�aP5ڳ6w���Mv�If�ɹ��v"���1d$3ϒ-�N.�&�B�L�Ū�L�ۄ�{��Dk�=����jw��j�5.I�%�XN۸P@�\��T�RP�#n#�z�ݯ��#%��ZO葡�_-�s��b��s�Q^�P��1��*H��I;=SL
Jܩop�l�?[U��k׮�����ix4Q���G�BB�%�B��GR�KN��$ư�O�u�d{㧡�׻,y�/H|��Y
E�w�/s�]L�*y�q8R��2_RW��Q��8Oa}1�h)������aZqjW���'3�U�Kd�u&3��▢�|q��J�p���6t��3�h�T��S9|<QQ:\�`j����-�7p�&B�]L�7n%��hUbO��Ϗ�l��	�(��u2/�R���Z�a���~a&���l��#�x���QĲ�� ��F��:>4��3��l"=�+���Ӵ�v�^��F�d7��w�:�;�
���,�+zϴ�q���Č]x��B�l��c���q�����J��!V�0��`.7N�%�
U󡝧��[3|��;Ajy-�]�V���4      �   �  x����j�@��姘�eD�q{�B�R�}Sz3����{b��wVJ�˥ ؝��}�"F>/��;*��:� �Fi��8li&�t]ו�����EU�?�W<�����pgS���4��jk�FX�>�3�J�=�>[^��6��=`�|14y]��?�ӂ�Ҵ��ߢ;���褢4�*pi�$��8ǡ�����SI�T�cQ�H`������M>��!�"�2�زb`��ZF1gj�vW��zy�s�b{.�˯Ǜ������T|�^��i-��r���Բ4
�RS��2�� ��x������`�R�p�j��sER����vOΩ�I����r���C�\�W���Қ�������nL�BP�������ͧՔӓ"�2���/�~����&�K�     