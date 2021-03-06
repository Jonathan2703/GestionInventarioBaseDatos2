PGDMP     #                    x            de4ai0gl6lq0af     12.3 (Ubuntu 12.3-1.pgdg16.04+1)    12.2 &    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    7105670    de4ai0gl6lq0af    DATABASE     �   CREATE DATABASE de4ai0gl6lq0af WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE de4ai0gl6lq0af;
                xoeunakaycygkl    false            <           0    0    DATABASE de4ai0gl6lq0af    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE de4ai0gl6lq0af FROM PUBLIC;
                   xoeunakaycygkl    false    3899            =           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO xoeunakaycygkl;
                   postgres    false    662            �            1259    8865909 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    descripcion_categoria character varying(255),
    nombre_categoria character varying(255)
);
    DROP TABLE public.categoria;
       public         heap    xoeunakaycygkl    false            �            1259    8865917    estado    TABLE     i   CREATE TABLE public.estado (
    id_estado integer NOT NULL,
    nombre_estado character varying(255)
);
    DROP TABLE public.estado;
       public         heap    xoeunakaycygkl    false            �            1259    8865956    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          xoeunakaycygkl    false            �            1259    8865922    perchas    TABLE     �   CREATE TABLE public.perchas (
    id_perchas integer NOT NULL,
    descripcion_perchas character varying(255),
    id_seccion_id_seccion integer
);
    DROP TABLE public.perchas;
       public         heap    xoeunakaycygkl    false            �            1259    8865927    producto    TABLE     �  CREATE TABLE public.producto (
    id integer NOT NULL,
    costo_producto double precision NOT NULL,
    descripcion_producto character varying(255),
    descuento double precision NOT NULL,
    fecha_expiracion_producto character varying(255),
    id_lote_producto character varying(255),
    nombre character varying(255),
    precio_producto double precision NOT NULL,
    proveedor_producto character varying(255),
    stock_minimo integer NOT NULL,
    stock_producto integer NOT NULL,
    valoracion double precision NOT NULL,
    categoria_id_categoria integer,
    estado_id_estado integer,
    id_seccion_producto_id_seccion integer
);
    DROP TABLE public.producto;
       public         heap    xoeunakaycygkl    false            �            1259    8866197    prueba    TABLE     /   CREATE TABLE public.prueba (
    id integer
);
    DROP TABLE public.prueba;
       public         heap    xoeunakaycygkl    false            �            1259    8866289    prueba2    TABLE     O   CREATE TABLE public.prueba2 (
    id integer,
    nom character varying(50)
);
    DROP TABLE public.prueba2;
       public         heap    xoeunakaycygkl    false            �            1259    8865935    seccion    TABLE     �   CREATE TABLE public.seccion (
    id_seccion integer NOT NULL,
    descripcion_seccion character varying(255),
    nombre_seccion character varying(255),
    id_ubicacion_producto_id_ubicacion integer
);
    DROP TABLE public.seccion;
       public         heap    xoeunakaycygkl    false            �            1259    8865943 	   ubicacion    TABLE     m   CREATE TABLE public.ubicacion (
    id_ubicacion integer NOT NULL,
    descripcion character varying(255)
);
    DROP TABLE public.ubicacion;
       public         heap    xoeunakaycygkl    false            �            1259    8865948    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    "contraseña" character varying(255),
    correo character varying(255),
    nombre character varying(255),
    rol character varying(255)
);
    DROP TABLE public.usuario;
       public         heap    xoeunakaycygkl    false            ,          0    8865909 	   categoria 
   TABLE DATA           Z   COPY public.categoria (id_categoria, descripcion_categoria, nombre_categoria) FROM stdin;
    public          xoeunakaycygkl    false    202   `-       -          0    8865917    estado 
   TABLE DATA           :   COPY public.estado (id_estado, nombre_estado) FROM stdin;
    public          xoeunakaycygkl    false    203   �/       .          0    8865922    perchas 
   TABLE DATA           Y   COPY public.perchas (id_perchas, descripcion_perchas, id_seccion_id_seccion) FROM stdin;
    public          xoeunakaycygkl    false    204   �/       /          0    8865927    producto 
   TABLE DATA           %  COPY public.producto (id, costo_producto, descripcion_producto, descuento, fecha_expiracion_producto, id_lote_producto, nombre, precio_producto, proveedor_producto, stock_minimo, stock_producto, valoracion, categoria_id_categoria, estado_id_estado, id_seccion_producto_id_seccion) FROM stdin;
    public          xoeunakaycygkl    false    205   0       4          0    8866197    prueba 
   TABLE DATA           $   COPY public.prueba (id) FROM stdin;
    public          xoeunakaycygkl    false    210   �6       5          0    8866289    prueba2 
   TABLE DATA           *   COPY public.prueba2 (id, nom) FROM stdin;
    public          xoeunakaycygkl    false    211   �6       0          0    8865935    seccion 
   TABLE DATA           v   COPY public.seccion (id_seccion, descripcion_seccion, nombre_seccion, id_ubicacion_producto_id_ubicacion) FROM stdin;
    public          xoeunakaycygkl    false    206   7       1          0    8865943 	   ubicacion 
   TABLE DATA           >   COPY public.ubicacion (id_ubicacion, descripcion) FROM stdin;
    public          xoeunakaycygkl    false    207   �7       2          0    8865948    usuario 
   TABLE DATA           I   COPY public.usuario (id, "contraseña", correo, nombre, rol) FROM stdin;
    public          xoeunakaycygkl    false    208   8       >           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          xoeunakaycygkl    false    209            �           2606    8865916    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            xoeunakaycygkl    false    202            �           2606    8865921    estado estado_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            xoeunakaycygkl    false    203            �           2606    8865926    perchas perchas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.perchas
    ADD CONSTRAINT perchas_pkey PRIMARY KEY (id_perchas);
 >   ALTER TABLE ONLY public.perchas DROP CONSTRAINT perchas_pkey;
       public            xoeunakaycygkl    false    204            �           2606    8865934    producto producto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            xoeunakaycygkl    false    205            �           2606    8865942    seccion seccion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT seccion_pkey PRIMARY KEY (id_seccion);
 >   ALTER TABLE ONLY public.seccion DROP CONSTRAINT seccion_pkey;
       public            xoeunakaycygkl    false    206            �           2606    8865947    ubicacion ubicacion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id_ubicacion);
 B   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_pkey;
       public            xoeunakaycygkl    false    207            �           2606    8865955    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            xoeunakaycygkl    false    208            �           2606    8865958 #   perchas fk6ajgf0baps9w8x6hlgn87ipdu    FK CONSTRAINT     �   ALTER TABLE ONLY public.perchas
    ADD CONSTRAINT fk6ajgf0baps9w8x6hlgn87ipdu FOREIGN KEY (id_seccion_id_seccion) REFERENCES public.seccion(id_seccion);
 M   ALTER TABLE ONLY public.perchas DROP CONSTRAINT fk6ajgf0baps9w8x6hlgn87ipdu;
       public          xoeunakaycygkl    false    3748    206    204            �           2606    8865973 $   producto fk88dixnaodcjcnghwciv9e60j7    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk88dixnaodcjcnghwciv9e60j7 FOREIGN KEY (id_seccion_producto_id_seccion) REFERENCES public.seccion(id_seccion);
 N   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk88dixnaodcjcnghwciv9e60j7;
       public          xoeunakaycygkl    false    205    206    3748            �           2606    8865968 $   producto fkj4lftubdv4qx70tvq1n3lgang    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fkj4lftubdv4qx70tvq1n3lgang FOREIGN KEY (estado_id_estado) REFERENCES public.estado(id_estado);
 N   ALTER TABLE ONLY public.producto DROP CONSTRAINT fkj4lftubdv4qx70tvq1n3lgang;
       public          xoeunakaycygkl    false    3742    205    203            �           2606    8865963 $   producto fkldwld2s5t6bf3wu8js8gsbgas    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fkldwld2s5t6bf3wu8js8gsbgas FOREIGN KEY (categoria_id_categoria) REFERENCES public.categoria(id_categoria);
 N   ALTER TABLE ONLY public.producto DROP CONSTRAINT fkldwld2s5t6bf3wu8js8gsbgas;
       public          xoeunakaycygkl    false    3740    202    205            �           2606    8865978 #   seccion fktmt538vrwmr57asey14orxsu7    FK CONSTRAINT     �   ALTER TABLE ONLY public.seccion
    ADD CONSTRAINT fktmt538vrwmr57asey14orxsu7 FOREIGN KEY (id_ubicacion_producto_id_ubicacion) REFERENCES public.ubicacion(id_ubicacion);
 M   ALTER TABLE ONLY public.seccion DROP CONSTRAINT fktmt538vrwmr57asey14orxsu7;
       public          xoeunakaycygkl    false    207    3750    206            ,   ;  x��SKn�0]���F$��t�:iS��(�Q�.E�����E�#�bJ��-�E"G�{3�G���vСG�z���NM�HA�÷����ğ�����@N�:��Y4r*zK!Sm�=��Sܿ�Ȱ hm���9�L�t��I)��`Q���"f�W�u��Z,s�� ��&��»\6zݸ(��,��ƣ9I�����7K�sE:T4q�3�A��5�# ��l!`��.�+�;`�^c9�ʭueЪGS����E"ʢ`��Jk0�ϞȣcE&���C�+�Q��,<�Fʙ�k��c�p6���6/\�X�\��R�)&�ݳ9ߋ�,=+F�l�l�=UL���́����j3��As�\G�a��[n��5��g�v�v��L�<�96<:X����eq-���q\����?��|�hO�P7=��zԊ=�i �8��_xr���#�p&����-�UjY��O�0��ձ�c�|��~�7Y�����![��9�ey��x�b�k�<F��\bx�H��2����rz���8�<��i�¨�3�0
0�_�*�|K)�%��      -   4   x�3�,(�O)M.�W(K�+I�2B$'�Ĕ|.c������������� ¼P      .      x������ � �      /   �  x����v�:���S�	hl'��.�YiB֡9��۟-�	�q��`J[؟%Y���h���P�%s/:��V�g<DvtB+����0������*f���r;	��'+i��ד����rӗ[��}E@���h��t��\O���ׯK{��'�X�+����hFt��1�ؒl2�_�~����$؞�m�T3���"��<#��yx�2Rkr$?���X�f R�������Fci�'��d�]~(Y���V����5��
 '�`�xB���ψ�rL�����Y�=q��V�a~Ak��#�g�O3���/���G�>�9!/�-ԓ����� ����R��o�$�FnI��X������kQ��,���`���2y��hx�<��5`���N�r<3���^(�u]Ę%���c��&�������MUX)��\*9��"��iڐB8{�e:c��/˰��\63�v�p%��0����� Z �݁��ӄ*�iC���W�E�!s#�un�~�#��'���S�B�`p3I@�r�Q�`��ܡ�p"0f�C�G��zd�8a��W��^�*N����s�<�ɞШ'4�	�yB��&�3Q�|Fd�9}~��[U�=�RO��S*C�e��)��������w�o	�	u
����-�%��Є�?Cܾ�����a�
����� �p
v��&����ϵ$5��^��V�RZ�5��i1�TM��Z�1���&2���8�؉8��8����s3�P�Xy�s\��b�����c�!�c��z��lE�%3�ª8�T�3��HA�J��]�����ie�b�PC5&�+�jg�ى|Zذ�������~oZ���,>�:�nbH�u�s^CGpyG�J��%^b�$]ĉz��d�Y� �t^݄�s:��q�����ky���]�wd>�|�K	;�׍�'m�'=6���鴹{v4ؼ�� /�$�B���<�4X��eLWy��k��\^��[�p���������� �����X���J��������c�:�Q/w����#�h�U�?�qZyR\a�JN�[���ؐ�V���m� =G��8�C��7�w2�B�TM%��+�[)��Q��<��,ܯdEg��}4Ӈ�Y�Κ&��bt��@�n�Fg�@av��:��oi�\� �p���&�d�x�(�rnd���
zsS�L��wL����^@���)H�J{�^M�Y�sgZAm*dj�t��t�V��c��L+�\B�\w_��,
zE5���� ;%{��<�*Y5�^KՉ����Jw��2�a$�:�Ǔ�N+Q���u�� �d�фT�*��Co�q�uxA� ��΁��U�����l�������vo�j޲ڦ��	?�+g�ݎ>ے������I.��������ǌ�c�+�3��@��A�A���R ��c*��E�v��iׄ0p9;�<1�.�	[D0�Q����8��o�� 	+xK=�J�"���N2��3i�Ϧ��h����o�ǐW���v��D���W�Rϝ1 a����Y[ ��n�F�#�b1b'3��p�"B��Sn��Q?ݧ�����|�H��U���rY�15�夈6ȥ�����슽�+t��S��f=��w���}Q�6֝N���Smq�HYPe�� /���p8�����      4   5   x����  ���l�]���aZ���-�ʐ)Kye��[�աS���\T	�      5      x������ � �      0   �   x�e�;�0D��S�Q�W�H�(�Ti{E,/�M�郔�O93O������%)�2YIDٸ�s�ł�n�E
��Jxs�c����
^l�x�A��C�'h��㉔�D��
�p��YJ���+����@m�<��K�b��2�ee�Q��L��s@��Ba(      1   1   x�3�4N-R(�,��2�4Jɇ0�9a�&�9�y%�
I�Y�\1z\\\ ���      2   F   x�3�4426�L�(�,.�L̳4w��/�M���K-�LL�����2������K,�H̃�I�υ+����� �hK     