PGDMP                         }            cl1    12.22    12.22     +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    25178    cl1    DATABASE     �   CREATE DATABASE cl1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE cl1;
                postgres    false            �            1259    25234    role    TABLE     �   CREATE TABLE public.role (
    id_role integer NOT NULL,
    nama_role character varying(50) NOT NULL,
    default_role boolean DEFAULT false
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    25232    role_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_id_role_seq;
       public          postgres    false    209            /           0    0    role_id_role_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.role_id_role_seq OWNED BY public.role.id_role;
          public          postgres    false    208            �
           2604    25237    role id_role    DEFAULT     l   ALTER TABLE ONLY public.role ALTER COLUMN id_role SET DEFAULT nextval('public.role_id_role_seq'::regclass);
 ;   ALTER TABLE public.role ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    208    209    209            (          0    25234    role 
   TABLE DATA           @   COPY public.role (id_role, nama_role, default_role) FROM stdin;
    public          postgres    false    209   �       0           0    0    role_id_role_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.role_id_role_seq', 3, true);
          public          postgres    false    208            �
           2606    25239    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    209            �
           1259    33415    unique_default_role    INDEX     o   CREATE UNIQUE INDEX unique_default_role ON public.role USING btree (default_role) WHERE (default_role = true);
 '   DROP INDEX public.unique_default_role;
       public            postgres    false    209    209            (       x�3�LL����L�2�,-N-�,����� Q��     