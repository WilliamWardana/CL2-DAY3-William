PGDMP     #                    }            cl1    12.22    12.22     -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    25178    cl1    DATABASE     �   CREATE DATABASE cl1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE cl1;
                postgres    false            �            1259    25222 	   user_role    TABLE     �   CREATE TABLE public.user_role (
    id_user_role integer NOT NULL,
    id_user integer NOT NULL,
    id_role integer NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    25220    user_role_id_user_role_seq    SEQUENCE     �   CREATE SEQUENCE public.user_role_id_user_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.user_role_id_user_role_seq;
       public          postgres    false    207            1           0    0    user_role_id_user_role_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.user_role_id_user_role_seq OWNED BY public.user_role.id_user_role;
          public          postgres    false    206            �
           2604    25225    user_role id_user_role    DEFAULT     �   ALTER TABLE ONLY public.user_role ALTER COLUMN id_user_role SET DEFAULT nextval('public.user_role_id_user_role_seq'::regclass);
 E   ALTER TABLE public.user_role ALTER COLUMN id_user_role DROP DEFAULT;
       public          postgres    false    206    207    207            *          0    25222 	   user_role 
   TABLE DATA           C   COPY public.user_role (id_user_role, id_user, id_role) FROM stdin;
    public          postgres    false    207   �       2           0    0    user_role_id_user_role_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_role_id_user_role_seq', 1, true);
          public          postgres    false    206            �
           2606    25231    user_role user_role_id_role_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_id_role_key UNIQUE (id_role);
 I   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_id_role_key;
       public            postgres    false    207            �
           2606    25229    user_role user_role_id_user_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_id_user_key UNIQUE (id_user);
 I   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_id_user_key;
       public            postgres    false    207            �
           2606    25227    user_role user_role_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id_user_role);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    207            *      x�3�4�4����� �X     