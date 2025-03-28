PGDMP     .    8                }            cl1    12.22    12.22     *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    25178    cl1    DATABASE     �   CREATE DATABASE cl1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE cl1;
                postgres    false            �            1259    41575 
   permission    TABLE     �   CREATE TABLE public.permission (
    permission character varying(50) NOT NULL,
    resource_type character varying(50),
    resource_identifier character varying(50),
    permission_id integer NOT NULL
);
    DROP TABLE public.permission;
       public         heap    postgres    false            �            1259    41590    permission_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permission_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.permission_permission_id_seq;
       public          postgres    false    215            .           0    0    permission_permission_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.permission_permission_id_seq OWNED BY public.permission.permission_id;
          public          postgres    false    217            �
           2604    41592    permission permission_id    DEFAULT     �   ALTER TABLE ONLY public.permission ALTER COLUMN permission_id SET DEFAULT nextval('public.permission_permission_id_seq'::regclass);
 G   ALTER TABLE public.permission ALTER COLUMN permission_id DROP DEFAULT;
       public          postgres    false    217    215            &          0    41575 
   permission 
   TABLE DATA           c   COPY public.permission (permission, resource_type, resource_identifier, permission_id) FROM stdin;
    public          postgres    false    215           /           0    0    permission_permission_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.permission_permission_id_seq', 1, true);
          public          postgres    false    217            �
           2606    41594    permission permission_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (permission_id);
 D   ALTER TABLE ONLY public.permission DROP CONSTRAINT permission_pkey;
       public            postgres    false    215            �
           2620    41589    permission auto_insert_iden    TRIGGER        CREATE TRIGGER auto_insert_iden BEFORE INSERT ON public.permission FOR EACH ROW EXECUTE FUNCTION public.trigger_iden_insert();
 4   DROP TRIGGER auto_insert_iden ON public.permission;
       public          postgres    false    215            &      x�+�L-����M���4����� :�     