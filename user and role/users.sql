PGDMP     3                    }            cl1    12.22    12.22     ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    25178    cl1    DATABASE     �   CREATE DATABASE cl1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE cl1;
                postgres    false            �            1259    25193    users    TABLE     �  CREATE TABLE public.users (
    id_users integer NOT NULL,
    username character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(10) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    password_salt character varying(50),
    password_last_changed timestamp without time zone,
    password_expired boolean DEFAULT false,
    id_role integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25191    users_id_users_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_id_users_seq;
       public          postgres    false    203            0           0    0    users_id_users_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_id_users_seq OWNED BY public.users.id_users;
          public          postgres    false    202            �
           2604    25196    users id_users    DEFAULT     p   ALTER TABLE ONLY public.users ALTER COLUMN id_users SET DEFAULT nextval('public.users_id_users_seq'::regclass);
 =   ALTER TABLE public.users ALTER COLUMN id_users DROP DEFAULT;
       public          postgres    false    203    202    203            )          0    25193    users 
   TABLE DATA           �   COPY public.users (id_users, username, email, password, created_at, password_salt, password_last_changed, password_expired, id_role) FROM stdin;
    public          postgres    false    203   P       1           0    0    users_id_users_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_id_users_seq', 4, true);
          public          postgres    false    202            �
           2606    25199    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_users);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            �
           2620    33417    users before_insert_user    TRIGGER     y   CREATE TRIGGER before_insert_user BEFORE INSERT ON public.users FOR EACH ROW EXECUTE FUNCTION public.set_default_role();
 1   DROP TRIGGER before_insert_user ON public.users;
       public          postgres    false    203            )   �   x����
�@D�_��e�c��J��6M�5�DB��U�U�b���s�a�<���My��' `ˮ�R�V�&�$��mb���=�Ud�J"B����yɏ�v��3WL�Ir5���d&����(�s���q��~�D���tS"#��#�����D�     