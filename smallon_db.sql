PGDMP     '                    w            smollan_connect    12.0    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    454207    smollan_connect    DATABASE     �   CREATE DATABASE smollan_connect WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE smollan_connect;
             
   social_app    false            �            1259    454239 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 
   social_app    false            �            1259    454237    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       
   social_app    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       
   social_app    false    208            �            1259    454249    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 
   social_app    false            �            1259    454247    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       
   social_app    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       
   social_app    false    210            �            1259    454231    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 
   social_app    false            �            1259    454229    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       
   social_app    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       
   social_app    false    206            �            1259    454381    comment    TABLE       CREATE TABLE public.comment (
    id integer NOT NULL,
    comments_text text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    reply_id integer,
    user_id integer NOT NULL
);
    DROP TABLE public.comment;
       public         heap 
   social_app    false            �            1259    454379    comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.comment_id_seq;
       public       
   social_app    false    222            �           0    0    comment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;
          public       
   social_app    false    221            �            1259    454422    comment_like    TABLE     �   CREATE TABLE public.comment_like (
    id integer NOT NULL,
    flag boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);
     DROP TABLE public.comment_like;
       public         heap 
   social_app    false            �            1259    454420    comment_like_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comment_like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.comment_like_id_seq;
       public       
   social_app    false    230            �           0    0    comment_like_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.comment_like_id_seq OWNED BY public.comment_like.id;
          public       
   social_app    false    229            �            1259    454347    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 
   social_app    false            �            1259    454345    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       
   social_app    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       
   social_app    false    218            �            1259    454221    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 
   social_app    false            �            1259    454219    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       
   social_app    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       
   social_app    false    204            �            1259    454210    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 
   social_app    false            �            1259    454208    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       
   social_app    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       
   social_app    false    202            �            1259    454369    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 
   social_app    false            �            1259    454392    post    TABLE     �  CREATE TABLE public.post (
    id integer NOT NULL,
    post_title character varying(100) NOT NULL,
    post_text text NOT NULL,
    image character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    current_status character varying(10) NOT NULL,
    current_actor_id integer NOT NULL,
    last_actor_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.post;
       public         heap 
   social_app    false            �            1259    454390    post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public       
   social_app    false    224            �           0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public       
   social_app    false    223            �            1259    454414 	   post_like    TABLE     �   CREATE TABLE public.post_like (
    id integer NOT NULL,
    flag boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.post_like;
       public         heap 
   social_app    false            �            1259    454412    post_like_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.post_like_id_seq;
       public       
   social_app    false    228            �           0    0    post_like_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.post_like_id_seq OWNED BY public.post_like.id;
          public       
   social_app    false    227            �            1259    454283    web_portal_user    TABLE     $  CREATE TABLE public.web_portal_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    type character varying(10) NOT NULL,
    parent_id integer
);
 #   DROP TABLE public.web_portal_user;
       public         heap 
   social_app    false            �            1259    454296    web_portal_user_groups    TABLE     �   CREATE TABLE public.web_portal_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 *   DROP TABLE public.web_portal_user_groups;
       public         heap 
   social_app    false            �            1259    454294    web_portal_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_portal_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_portal_user_groups_id_seq;
       public       
   social_app    false    215            �           0    0    web_portal_user_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.web_portal_user_groups_id_seq OWNED BY public.web_portal_user_groups.id;
          public       
   social_app    false    214            �            1259    454281    web_portal_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_portal_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_portal_user_id_seq;
       public       
   social_app    false    213            �           0    0    web_portal_user_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_portal_user_id_seq OWNED BY public.web_portal_user.id;
          public       
   social_app    false    212            �            1259    454304     web_portal_user_user_permissions    TABLE     �   CREATE TABLE public.web_portal_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 4   DROP TABLE public.web_portal_user_user_permissions;
       public         heap 
   social_app    false            �            1259    454302 '   web_portal_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_portal_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.web_portal_user_user_permissions_id_seq;
       public       
   social_app    false    217            �           0    0 '   web_portal_user_user_permissions_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.web_portal_user_user_permissions_id_seq OWNED BY public.web_portal_user_user_permissions.id;
          public       
   social_app    false    216            �            1259    454403    web_portal_workflowlog    TABLE     /  CREATE TABLE public.web_portal_workflowlog (
    id integer NOT NULL,
    status character varying(10) NOT NULL,
    comments text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);
 *   DROP TABLE public.web_portal_workflowlog;
       public         heap 
   social_app    false            �            1259    454401    web_portal_workflowlog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_portal_workflowlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_portal_workflowlog_id_seq;
       public       
   social_app    false    226            �           0    0    web_portal_workflowlog_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.web_portal_workflowlog_id_seq OWNED BY public.web_portal_workflowlog.id;
          public       
   social_app    false    225            �
           2604    454242    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    209    208    209            �
           2604    454252    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    210    211    211            �
           2604    454234    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    207    206    207            �
           2604    454384 
   comment id    DEFAULT     h   ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);
 9   ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    222    221    222            �
           2604    454425    comment_like id    DEFAULT     r   ALTER TABLE ONLY public.comment_like ALTER COLUMN id SET DEFAULT nextval('public.comment_like_id_seq'::regclass);
 >   ALTER TABLE public.comment_like ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    230    229    230            �
           2604    454350    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    218    219    219            �
           2604    454224    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    205    204    205            �
           2604    454213    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    203    202    203            �
           2604    454395    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    223    224    224            �
           2604    454417    post_like id    DEFAULT     l   ALTER TABLE ONLY public.post_like ALTER COLUMN id SET DEFAULT nextval('public.post_like_id_seq'::regclass);
 ;   ALTER TABLE public.post_like ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    228    227    228            �
           2604    454286    web_portal_user id    DEFAULT     x   ALTER TABLE ONLY public.web_portal_user ALTER COLUMN id SET DEFAULT nextval('public.web_portal_user_id_seq'::regclass);
 A   ALTER TABLE public.web_portal_user ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    212    213    213            �
           2604    454299    web_portal_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.web_portal_user_groups ALTER COLUMN id SET DEFAULT nextval('public.web_portal_user_groups_id_seq'::regclass);
 H   ALTER TABLE public.web_portal_user_groups ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    214    215    215            �
           2604    454307 #   web_portal_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.web_portal_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.web_portal_user_user_permissions_id_seq'::regclass);
 R   ALTER TABLE public.web_portal_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    217    216    217            �
           2604    454406    web_portal_workflowlog id    DEFAULT     �   ALTER TABLE ONLY public.web_portal_workflowlog ALTER COLUMN id SET DEFAULT nextval('public.web_portal_workflowlog_id_seq'::regclass);
 H   ALTER TABLE public.web_portal_workflowlog ALTER COLUMN id DROP DEFAULT;
       public       
   social_app    false    225    226    226            �          0    454239 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       
   social_app    false    209   i�       �          0    454249    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       
   social_app    false    211   ��       �          0    454231    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       
   social_app    false    207   ��       �          0    454381    comment 
   TABLE DATA           h   COPY public.comment (id, comments_text, created_at, updated_at, post_id, reply_id, user_id) FROM stdin;
    public       
   social_app    false    222   q�       �          0    454422    comment_like 
   TABLE DATA           ]   COPY public.comment_like (id, flag, created_at, updated_at, comment_id, user_id) FROM stdin;
    public       
   social_app    false    230   ��       �          0    454347    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       
   social_app    false    219   ��       �          0    454221    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       
   social_app    false    205   G�       �          0    454210    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       
   social_app    false    203   ��       �          0    454369    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       
   social_app    false    220   ��       �          0    454392    post 
   TABLE DATA           �   COPY public.post (id, post_title, post_text, image, created_at, updated_at, current_status, current_actor_id, last_actor_id, user_id) FROM stdin;
    public       
   social_app    false    224   ��       �          0    454414 	   post_like 
   TABLE DATA           W   COPY public.post_like (id, flag, created_at, updated_at, post_id, user_id) FROM stdin;
    public       
   social_app    false    228   ��       �          0    454283    web_portal_user 
   TABLE DATA           �   COPY public.web_portal_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, type, parent_id) FROM stdin;
    public       
   social_app    false    213   �       �          0    454296    web_portal_user_groups 
   TABLE DATA           G   COPY public.web_portal_user_groups (id, user_id, group_id) FROM stdin;
    public       
   social_app    false    215   [�       �          0    454304     web_portal_user_user_permissions 
   TABLE DATA           V   COPY public.web_portal_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       
   social_app    false    217   x�       �          0    454403    web_portal_workflowlog 
   TABLE DATA           p   COPY public.web_portal_workflowlog (id, status, comments, created_at, updated_at, post_id, user_id) FROM stdin;
    public       
   social_app    false    226   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       
   social_app    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       
   social_app    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public       
   social_app    false    206            �           0    0    comment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comment_id_seq', 1, false);
          public       
   social_app    false    221            �           0    0    comment_like_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.comment_like_id_seq', 1, false);
          public       
   social_app    false    229            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public       
   social_app    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public       
   social_app    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public       
   social_app    false    202            �           0    0    post_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.post_id_seq', 8, true);
          public       
   social_app    false    223            �           0    0    post_like_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.post_like_id_seq', 1, false);
          public       
   social_app    false    227            �           0    0    web_portal_user_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.web_portal_user_groups_id_seq', 1, false);
          public       
   social_app    false    214            �           0    0    web_portal_user_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.web_portal_user_id_seq', 9, true);
          public       
   social_app    false    212            �           0    0 '   web_portal_user_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.web_portal_user_user_permissions_id_seq', 1, false);
          public       
   social_app    false    216            �           0    0    web_portal_workflowlog_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.web_portal_workflowlog_id_seq', 6, true);
          public       
   social_app    false    225            �
           2606    454279    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         
   social_app    false    209            �
           2606    454265 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         
   social_app    false    211    211            �
           2606    454254 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         
   social_app    false    211            �
           2606    454244    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         
   social_app    false    209            �
           2606    454256 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         
   social_app    false    207    207            �
           2606    454236 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         
   social_app    false    207            +           2606    454427    comment_like comment_like_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comment_like
    ADD CONSTRAINT comment_like_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.comment_like DROP CONSTRAINT comment_like_pkey;
       public         
   social_app    false    230                       2606    454389    comment comment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_pkey;
       public         
   social_app    false    222                       2606    454356 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         
   social_app    false    219            �
           2606    454228 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         
   social_app    false    205    205            �
           2606    454226 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         
   social_app    false    205            �
           2606    454218 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         
   social_app    false    203                       2606    454376 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         
   social_app    false    220            &           2606    454419    post_like post_like_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.post_like
    ADD CONSTRAINT post_like_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.post_like DROP CONSTRAINT post_like_pkey;
       public         
   social_app    false    228                       2606    454400    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public         
   social_app    false    224                       2606    454301 2   web_portal_user_groups web_portal_user_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.web_portal_user_groups
    ADD CONSTRAINT web_portal_user_groups_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_portal_user_groups DROP CONSTRAINT web_portal_user_groups_pkey;
       public         
   social_app    false    215                       2606    454318 L   web_portal_user_groups web_portal_user_groups_user_id_group_id_be6329d4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_groups
    ADD CONSTRAINT web_portal_user_groups_user_id_group_id_be6329d4_uniq UNIQUE (user_id, group_id);
 v   ALTER TABLE ONLY public.web_portal_user_groups DROP CONSTRAINT web_portal_user_groups_user_id_group_id_be6329d4_uniq;
       public         
   social_app    false    215    215            �
           2606    454291 $   web_portal_user web_portal_user_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.web_portal_user
    ADD CONSTRAINT web_portal_user_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.web_portal_user DROP CONSTRAINT web_portal_user_pkey;
       public         
   social_app    false    213            
           2606    454332 ]   web_portal_user_user_permissions web_portal_user_user_per_user_id_permission_id_e23ee2ec_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_user_permissions
    ADD CONSTRAINT web_portal_user_user_per_user_id_permission_id_e23ee2ec_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.web_portal_user_user_permissions DROP CONSTRAINT web_portal_user_user_per_user_id_permission_id_e23ee2ec_uniq;
       public         
   social_app    false    217    217                       2606    454309 F   web_portal_user_user_permissions web_portal_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_user_permissions
    ADD CONSTRAINT web_portal_user_user_permissions_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.web_portal_user_user_permissions DROP CONSTRAINT web_portal_user_user_permissions_pkey;
       public         
   social_app    false    217                       2606    454293 ,   web_portal_user web_portal_user_username_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.web_portal_user
    ADD CONSTRAINT web_portal_user_username_key UNIQUE (username);
 V   ALTER TABLE ONLY public.web_portal_user DROP CONSTRAINT web_portal_user_username_key;
       public         
   social_app    false    213            "           2606    454411 2   web_portal_workflowlog web_portal_workflowlog_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.web_portal_workflowlog
    ADD CONSTRAINT web_portal_workflowlog_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_portal_workflowlog DROP CONSTRAINT web_portal_workflowlog_pkey;
       public         
   social_app    false    226            �
           1259    454280    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         
   social_app    false    209            �
           1259    454276 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         
   social_app    false    211            �
           1259    454277 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         
   social_app    false    211            �
           1259    454262 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         
   social_app    false    207            )           1259    454495     comment_like_comment_id_ef80e084    INDEX     _   CREATE INDEX comment_like_comment_id_ef80e084 ON public.comment_like USING btree (comment_id);
 4   DROP INDEX public.comment_like_comment_id_ef80e084;
       public         
   social_app    false    230            ,           1259    454496    comment_like_user_id_d2f6a450    INDEX     Y   CREATE INDEX comment_like_user_id_d2f6a450 ON public.comment_like USING btree (user_id);
 1   DROP INDEX public.comment_like_user_id_d2f6a450;
       public         
   social_app    false    230                       1259    454497    comment_post_id_d299ca5f    INDEX     O   CREATE INDEX comment_post_id_d299ca5f ON public.comment USING btree (post_id);
 ,   DROP INDEX public.comment_post_id_d299ca5f;
       public         
   social_app    false    222                       1259    454498    comment_reply_id_b3e7cc3f    INDEX     Q   CREATE INDEX comment_reply_id_b3e7cc3f ON public.comment USING btree (reply_id);
 -   DROP INDEX public.comment_reply_id_b3e7cc3f;
       public         
   social_app    false    222                       1259    454499    comment_user_id_2224f9d1    INDEX     O   CREATE INDEX comment_user_id_2224f9d1 ON public.comment USING btree (user_id);
 ,   DROP INDEX public.comment_user_id_2224f9d1;
       public         
   social_app    false    222                       1259    454367 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         
   social_app    false    219                       1259    454368 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         
   social_app    false    219                       1259    454378 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         
   social_app    false    220                       1259    454377 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         
   social_app    false    220                       1259    454458    post_current_actor_id_011ad6e9    INDEX     [   CREATE INDEX post_current_actor_id_011ad6e9 ON public.post USING btree (current_actor_id);
 2   DROP INDEX public.post_current_actor_id_011ad6e9;
       public         
   social_app    false    224                       1259    454459    post_last_actor_id_11230d23    INDEX     U   CREATE INDEX post_last_actor_id_11230d23 ON public.post USING btree (last_actor_id);
 /   DROP INDEX public.post_last_actor_id_11230d23;
       public         
   social_app    false    224            '           1259    454483    post_like_post_id_80ef3233    INDEX     S   CREATE INDEX post_like_post_id_80ef3233 ON public.post_like USING btree (post_id);
 .   DROP INDEX public.post_like_post_id_80ef3233;
       public         
   social_app    false    228            (           1259    454484    post_like_user_id_82e0cc2b    INDEX     S   CREATE INDEX post_like_user_id_82e0cc2b ON public.post_like USING btree (user_id);
 .   DROP INDEX public.post_like_user_id_82e0cc2b;
       public         
   social_app    false    228                        1259    454460    post_user_id_e5dbe93c    INDEX     I   CREATE INDEX post_user_id_e5dbe93c ON public.post USING btree (user_id);
 )   DROP INDEX public.post_user_id_e5dbe93c;
       public         
   social_app    false    224                       1259    454330 (   web_portal_user_groups_group_id_34d3b950    INDEX     o   CREATE INDEX web_portal_user_groups_group_id_34d3b950 ON public.web_portal_user_groups USING btree (group_id);
 <   DROP INDEX public.web_portal_user_groups_group_id_34d3b950;
       public         
   social_app    false    215                       1259    454329 '   web_portal_user_groups_user_id_cda6ea2c    INDEX     m   CREATE INDEX web_portal_user_groups_user_id_cda6ea2c ON public.web_portal_user_groups USING btree (user_id);
 ;   DROP INDEX public.web_portal_user_groups_user_id_cda6ea2c;
       public         
   social_app    false    215            �
           1259    454316 "   web_portal_user_parent_id_e121f1ed    INDEX     c   CREATE INDEX web_portal_user_parent_id_e121f1ed ON public.web_portal_user USING btree (parent_id);
 6   DROP INDEX public.web_portal_user_parent_id_e121f1ed;
       public         
   social_app    false    213                       1259    454344 7   web_portal_user_user_permissions_permission_id_c699ab7f    INDEX     �   CREATE INDEX web_portal_user_user_permissions_permission_id_c699ab7f ON public.web_portal_user_user_permissions USING btree (permission_id);
 K   DROP INDEX public.web_portal_user_user_permissions_permission_id_c699ab7f;
       public         
   social_app    false    217                       1259    454343 1   web_portal_user_user_permissions_user_id_a0acd205    INDEX     �   CREATE INDEX web_portal_user_user_permissions_user_id_a0acd205 ON public.web_portal_user_user_permissions USING btree (user_id);
 E   DROP INDEX public.web_portal_user_user_permissions_user_id_a0acd205;
       public         
   social_app    false    217                        1259    454315 &   web_portal_user_username_ce56524a_like    INDEX     z   CREATE INDEX web_portal_user_username_ce56524a_like ON public.web_portal_user USING btree (username varchar_pattern_ops);
 :   DROP INDEX public.web_portal_user_username_ce56524a_like;
       public         
   social_app    false    213            #           1259    454471 '   web_portal_workflowlog_post_id_9f5abcdc    INDEX     m   CREATE INDEX web_portal_workflowlog_post_id_9f5abcdc ON public.web_portal_workflowlog USING btree (post_id);
 ;   DROP INDEX public.web_portal_workflowlog_post_id_9f5abcdc;
       public         
   social_app    false    226            $           1259    454472 '   web_portal_workflowlog_user_id_43c8e8bf    INDEX     m   CREATE INDEX web_portal_workflowlog_user_id_43c8e8bf ON public.web_portal_workflowlog USING btree (user_id);
 ;   DROP INDEX public.web_portal_workflowlog_user_id_43c8e8bf;
       public         
   social_app    false    226            /           2606    454271 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       
   social_app    false    2801    211    207            .           2606    454266 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       
   social_app    false    2806    211    209            -           2606    454257 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       
   social_app    false    207    205    2796            A           2606    454485 ;   comment_like comment_like_comment_id_ef80e084_fk_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_like
    ADD CONSTRAINT comment_like_comment_id_ef80e084_fk_comment_id FOREIGN KEY (comment_id) REFERENCES public.comment(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.comment_like DROP CONSTRAINT comment_like_comment_id_ef80e084_fk_comment_id;
       public       
   social_app    false    222    2840    230            B           2606    454490 @   comment_like comment_like_user_id_d2f6a450_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_like
    ADD CONSTRAINT comment_like_user_id_d2f6a450_fk_web_portal_user_id FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.comment_like DROP CONSTRAINT comment_like_user_id_d2f6a450_fk_web_portal_user_id;
       public       
   social_app    false    230    2815    213            7           2606    454428    comment comment_post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id) DEFERRABLE INITIALLY DEFERRED;
 F   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_post_id_fkey;
       public       
   social_app    false    222    2847    224            8           2606    454433    comment comment_reply_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_reply_id_fkey FOREIGN KEY (reply_id) REFERENCES public.comment(id) DEFERRABLE INITIALLY DEFERRED;
 G   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_reply_id_fkey;
       public       
   social_app    false    2840    222    222            9           2606    454438    comment comment_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 F   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_user_id_fkey;
       public       
   social_app    false    222    2815    213            5           2606    454357 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       
   social_app    false    205    219    2796            6           2606    454362 H   django_admin_log django_admin_log_user_id_c564eba6_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_web_portal_user_id FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_web_portal_user_id;
       public       
   social_app    false    219    2815    213            :           2606    454443 9   post post_current_actor_id_011ad6e9_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_current_actor_id_011ad6e9_fk_web_portal_user_id FOREIGN KEY (current_actor_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.post DROP CONSTRAINT post_current_actor_id_011ad6e9_fk_web_portal_user_id;
       public       
   social_app    false    213    224    2815            ;           2606    454448 6   post post_last_actor_id_11230d23_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_last_actor_id_11230d23_fk_web_portal_user_id FOREIGN KEY (last_actor_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.post DROP CONSTRAINT post_last_actor_id_11230d23_fk_web_portal_user_id;
       public       
   social_app    false    224    2815    213            ?           2606    454473 /   post_like post_like_post_id_80ef3233_fk_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_like
    ADD CONSTRAINT post_like_post_id_80ef3233_fk_post_id FOREIGN KEY (post_id) REFERENCES public.post(id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.post_like DROP CONSTRAINT post_like_post_id_80ef3233_fk_post_id;
       public       
   social_app    false    228    2847    224            @           2606    454478 :   post_like post_like_user_id_82e0cc2b_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_like
    ADD CONSTRAINT post_like_user_id_82e0cc2b_fk_web_portal_user_id FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.post_like DROP CONSTRAINT post_like_user_id_82e0cc2b_fk_web_portal_user_id;
       public       
   social_app    false    228    2815    213            <           2606    454453 0   post post_user_id_e5dbe93c_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_e5dbe93c_fk_web_portal_user_id FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.post DROP CONSTRAINT post_user_id_e5dbe93c_fk_web_portal_user_id;
       public       
   social_app    false    224    213    2815            2           2606    454324 P   web_portal_user_groups web_portal_user_groups_group_id_34d3b950_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_groups
    ADD CONSTRAINT web_portal_user_groups_group_id_34d3b950_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.web_portal_user_groups DROP CONSTRAINT web_portal_user_groups_group_id_34d3b950_fk_auth_group_id;
       public       
   social_app    false    209    215    2806            1           2606    454319 T   web_portal_user_groups web_portal_user_groups_user_id_cda6ea2c_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_groups
    ADD CONSTRAINT web_portal_user_groups_user_id_cda6ea2c_fk_web_portal_user_id FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.web_portal_user_groups DROP CONSTRAINT web_portal_user_groups_user_id_cda6ea2c_fk_web_portal_user_id;
       public       
   social_app    false    213    215    2815            0           2606    454310 H   web_portal_user web_portal_user_parent_id_e121f1ed_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user
    ADD CONSTRAINT web_portal_user_parent_id_e121f1ed_fk_web_portal_user_id FOREIGN KEY (parent_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.web_portal_user DROP CONSTRAINT web_portal_user_parent_id_e121f1ed_fk_web_portal_user_id;
       public       
   social_app    false    213    213    2815            4           2606    454338 Y   web_portal_user_user_permissions web_portal_user_user_permission_id_c699ab7f_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_user_permissions
    ADD CONSTRAINT web_portal_user_user_permission_id_c699ab7f_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_portal_user_user_permissions DROP CONSTRAINT web_portal_user_user_permission_id_c699ab7f_fk_auth_perm;
       public       
   social_app    false    217    207    2801            3           2606    454333 S   web_portal_user_user_permissions web_portal_user_user_user_id_a0acd205_fk_web_porta    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_user_user_permissions
    ADD CONSTRAINT web_portal_user_user_user_id_a0acd205_fk_web_porta FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.web_portal_user_user_permissions DROP CONSTRAINT web_portal_user_user_user_id_a0acd205_fk_web_porta;
       public       
   social_app    false    213    217    2815            =           2606    454461 I   web_portal_workflowlog web_portal_workflowlog_post_id_9f5abcdc_fk_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_workflowlog
    ADD CONSTRAINT web_portal_workflowlog_post_id_9f5abcdc_fk_post_id FOREIGN KEY (post_id) REFERENCES public.post(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_portal_workflowlog DROP CONSTRAINT web_portal_workflowlog_post_id_9f5abcdc_fk_post_id;
       public       
   social_app    false    2847    224    226            >           2606    454466 T   web_portal_workflowlog web_portal_workflowlog_user_id_43c8e8bf_fk_web_portal_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_portal_workflowlog
    ADD CONSTRAINT web_portal_workflowlog_user_id_43c8e8bf_fk_web_portal_user_id FOREIGN KEY (user_id) REFERENCES public.web_portal_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.web_portal_workflowlog DROP CONSTRAINT web_portal_workflowlog_user_id_43c8e8bf_fk_web_portal_user_id;
       public       
   social_app    false    226    2815    213            �      x������ � �      �      x������ � �      �   �  x�m��n�0F����	���{�ר4Um֡R@@W�����Y����/1��4d��%��k�u~)���׶���9�����/E�xq�[%�K, ���S`{!B%�Mn�w�ҍ��A-t���v����`Q��MT$82�%��<>&eA���\�"�;uɣJ �ۖ��n�.[_�S�`i�hSp�F+���-�QQ�UMh�lM֋���a�i�p�Ƞ'a-w��,?D��!����U:�R��`E< �� *x�%�p�o�l�����T�Ã��+9������F�B��c
N����8߾�.�j@+����"�	�~�yOx<B��`�M��eU�+���"�� "��W nl�� ��89뻛S����{m�ԁ8f��6�!�9Z��d�1�fAÓ���Mڈ����7��d��ſ�s��Ck���?�      �      x������ � �      �      x������ � �      �   �   x�U̽
�0@���)B&Z�y
�ڡ6Q+b������	Nn�3|�d+�I"��v�5槩B��&O��OrE�|�Yu������$��a�Ƒ��n-��hH�1<�w.@����C����Q��T[�]F���'�      �   �   x�m�]
�0��w#��"H[��dC6�����ķ�of�1�=��d�ӂu%�(r�V�J��C�$%�@��\�y������׆~�h��%��QQN8�d�k�Β����.µ5�h���"g'�1���m��
P�      �   �  x���ђ� E��W�$�݀`�e�(&a�T�����1��S�b��{����w�v1^z; ��u.:�X��� ����
��ڃ��C%�`[�i�r���Lk�Q�x��P�0c|���LN��ZA�4���кap��:��|��vu��� @d�XQlA�C:lk\�B�gJ�R�=%�8���6�	R�&�"�=�1Cԍ�]66[�$�Y��R�m|�.�����eی�	��Q���iw6чA��Y�|ЭS�_d�J��"�8�i�3�+!`�	�J�z����lB��T�ؿ�jƬ�E�c�,����r�m�TW/��7��S쟼v )�O�Ô�s��5�⥘�Q�j(�*�"\��6i�y��Q29���n��s���kL�O�ޝ~��PRN0Uv1꩐�X�f!��h�>W!jd�~0H9�֪*'���?�b      �      x������ � �      �     x���In�0E��)�D�H��l�;(�z�`�z��h6����	RB�k�a�2�%�n����%�m����L�@6HϽ'o�E���:׹�}�E6�ҵKLpU6(�5�A�5�Y�F,����.œ��\)�ɾ�Xo�nhO�j�p�����h�L�-�I�2\��/����W����)�7v���8�#�6W6澰�Y���g���\��q��j�ސ:S@rO���G1mq��}�{�-�Z�0L"HɵF�~�QH\�"t'�'o�����      �      x������ � �      �   8  x���Y��Z���W�o���LI'-��ZJ:��A@QD~���*��:������{��d�]�O�و�,A���i��l��>[l+3��L�u�f��W{ۦ�l��d�4>��(O��;� �^ zA�@2�2�9c�� 2G�N���2̇����~Ƚǻ����@�L)'!�#�:�4��������}�,6B�8��"��B~אQ��V�dAt�-��>�N�.��|X���=��ّ�q�s�)�=Х����B]z&2D� �$��3�&�g�*#�v�f?��o�4,�h)����ǑR�m/���l�33~��J�º�O�0�)���D	Vt�j�>�p5�����M=���jm�@Wf�u�E_������L��(,_��% D�"�1�ɯ1�����m-�pR��&Q ��vA�On���K7�"VS�"�`�9�̰[�;�U�7��tyk'���;�i<�����ga��)Dx%OO�uI~�8r��J=�^ƨ�Z�����T�Y�Q1;*l{�.xw�Pm�F�V���0���~gZC��OG��K�?�i�iP]�R#�]��~��$cGIvlZ�����C�%j�-��n5�ޛ���_���4z��6�7.��y tu�Ċ�3��_��q�U���3��+q�ki8]�nw�q�zs73q~9/���p0ưXw������9���Z���N���z ����Ҭ�o�sn��(� �k��~��Pk}A�6`'S5��#/�t���&$մ.�>�	(:��O�<������T�T]�^���y?��y����N�I���+�R����j�aݚ      �      x������ � �      �      x������ � �      �   �   x�}�Mj�0F��)�x�f��+��$�45m,�Bn_�D���{|ψ�u��?����>/uǕw�ڤ���Fi�h����qv��5�K�������|oG.���"��Q64+�:?��o��g����}lh$mn��M}�@3%�M��[�zW��G]�j�'~�9�
ص>�x��j��2���	��A�������)�? ~q8     