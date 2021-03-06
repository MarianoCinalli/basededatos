toc.dat                                                                                             0000600 0004000 0002000 00000174510 13474647262 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           w            tp3     10.7 (Ubuntu 10.7-1.pgdg18.04+1)     11.2 (Ubuntu 11.2-1.pgdg18.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    17906    tp3    DATABASE     u   CREATE DATABASE tp3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE tp3;
             postgres    false         �            1259    17923    aporte    TABLE     �   CREATE TABLE public.aporte (
    id_aporte integer NOT NULL,
    texto text,
    karma bigint,
    fecha timestamp without time zone
);
    DROP TABLE public.aporte;
       public         postgres    false         �            1259    18094    aporte_referencia_link    TABLE     y   CREATE TABLE public.aporte_referencia_link (
    id_aporte integer NOT NULL,
    direccion_web character varying(253)
);
 *   DROP TABLE public.aporte_referencia_link;
       public         postgres    false         �            1259    18079    comment_responde_comment    TABLE     �   CREATE TABLE public.comment_responde_comment (
    id_comentario integer NOT NULL,
    id_comentario_respondido integer NOT NULL
);
 ,   DROP TABLE public.comment_responde_comment;
       public         postgres    false         �            1259    17989    comments    TABLE     Z   CREATE TABLE public.comments (
    id_comments integer NOT NULL,
    id_aporte integer
);
    DROP TABLE public.comments;
       public         postgres    false         �            1259    17931    mensajes_privados    TABLE     t   CREATE TABLE public.mensajes_privados (
    id_mensaje integer NOT NULL,
    tema character(200),
    texto text
);
 %   DROP TABLE public.mensajes_privados;
       public         postgres    false         �            1259    17999    multireddit_agrupa_subreddit    TABLE     �   CREATE TABLE public.multireddit_agrupa_subreddit (
    username character varying(100) NOT NULL,
    nombre_multireddit character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);
 0   DROP TABLE public.multireddit_agrupa_subreddit;
       public         postgres    false         �            1259    17952    multireddits    TABLE     �   CREATE TABLE public.multireddits (
    nombre_multireddit character varying(100) NOT NULL,
    username character varying(100) NOT NULL,
    fecha_creacion_multireddit timestamp without time zone
);
     DROP TABLE public.multireddits;
       public         postgres    false         �            1259    18064    post_colecciona_comentario    TABLE     u   CREATE TABLE public.post_colecciona_comentario (
    id_post integer NOT NULL,
    id_comentario integer NOT NULL
);
 .   DROP TABLE public.post_colecciona_comentario;
       public         postgres    false         �            1259    17979    posts    TABLE     w   CREATE TABLE public.posts (
    id_posts integer NOT NULL,
    id_aporte integer,
    titulo character varying(100)
);
    DROP TABLE public.posts;
       public         postgres    false         �            1259    17939    premios    TABLE     h   CREATE TABLE public.premios (
    nombre_premio character(200) NOT NULL,
    descripcion_premio text
);
    DROP TABLE public.premios;
       public         postgres    false         �            1259    17964    reglas    TABLE     �   CREATE TABLE public.reglas (
    id_regla integer NOT NULL,
    nombre_subreddit character varying(100) NOT NULL,
    descripcion_regla text
);
    DROP TABLE public.reglas;
       public         postgres    false         �            1259    18049    subreddit_contiene_post    TABLE     �   CREATE TABLE public.subreddit_contiene_post (
    nombre_subreddit character varying(100) NOT NULL,
    id_post integer NOT NULL
);
 +   DROP TABLE public.subreddit_contiene_post;
       public         postgres    false         �            1259    18019    subreddit_recomienda_subreddit    TABLE     �   CREATE TABLE public.subreddit_recomienda_subreddit (
    nombre_subreddit character varying(100) NOT NULL,
    nombre_subreddit_recomendado character varying(100) NOT NULL
);
 2   DROP TABLE public.subreddit_recomienda_subreddit;
       public         postgres    false         �            1259    18034    subreddit_regulador_por_regla    TABLE     �   CREATE TABLE public.subreddit_regulador_por_regla (
    nombre_subreddit character varying(100) NOT NULL,
    id_regla integer NOT NULL
);
 1   DROP TABLE public.subreddit_regulador_por_regla;
       public         postgres    false         �            1259    17907 
   subreddits    TABLE     y   CREATE TABLE public.subreddits (
    nombre_subreddit character varying(100) NOT NULL,
    descripcion_subreddit text
);
    DROP TABLE public.subreddits;
       public         postgres    false         �            1259    17947    transferencias    TABLE     h   CREATE TABLE public.transferencias (
    id_transferencia integer NOT NULL,
    cant_monedas integer
);
 "   DROP TABLE public.transferencias;
       public         postgres    false         �            1259    18339    usuario_bloquea_usuario    TABLE     �   CREATE TABLE public.usuario_bloquea_usuario (
    username character varying(100) NOT NULL,
    username_bloqueado character varying(100) NOT NULL
);
 +   DROP TABLE public.usuario_bloquea_usuario;
       public         postgres    false         �            1259    18229    usuario_califica_comment    TABLE     �   CREATE TABLE public.usuario_califica_comment (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL,
    voto integer
);
 ,   DROP TABLE public.usuario_califica_comment;
       public         postgres    false         �            1259    18164    usuario_califica_post    TABLE     �   CREATE TABLE public.usuario_califica_post (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL,
    voto integer
);
 )   DROP TABLE public.usuario_califica_post;
       public         postgres    false         �            1259    18309    usuario_emite_transferencia    TABLE     �   CREATE TABLE public.usuario_emite_transferencia (
    username character varying(100) NOT NULL,
    id_transferencia integer NOT NULL
);
 /   DROP TABLE public.usuario_emite_transferencia;
       public         postgres    false         �            1259    18369    usuario_envia_mensaje_privado    TABLE     �   CREATE TABLE public.usuario_envia_mensaje_privado (
    username character varying(100) NOT NULL,
    id_mensaje integer NOT NULL
);
 1   DROP TABLE public.usuario_envia_mensaje_privado;
       public         postgres    false         �            1259    18134     usuario_esta_bloqueado_subreddit    TABLE     �   CREATE TABLE public.usuario_esta_bloqueado_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);
 4   DROP TABLE public.usuario_esta_bloqueado_subreddit;
       public         postgres    false         �            1259    18104    usuario_establece_subreddit    TABLE     �   CREATE TABLE public.usuario_establece_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);
 /   DROP TABLE public.usuario_establece_subreddit;
       public         postgres    false         �            1259    18294    usuario_gana_premio    TABLE     �   CREATE TABLE public.usuario_gana_premio (
    username character varying(100) NOT NULL,
    nombre_premio character(200) NOT NULL
);
 '   DROP TABLE public.usuario_gana_premio;
       public         postgres    false         �            1259    18279    usuario_genera_comment    TABLE     ~   CREATE TABLE public.usuario_genera_comment (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL
);
 *   DROP TABLE public.usuario_genera_comment;
       public         postgres    false         �            1259    18214    usuario_genera_post    TABLE     x   CREATE TABLE public.usuario_genera_post (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL
);
 '   DROP TABLE public.usuario_genera_post;
       public         postgres    false         �            1259    18244    usuario_guarda_comment    TABLE     ~   CREATE TABLE public.usuario_guarda_comment (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL
);
 *   DROP TABLE public.usuario_guarda_comment;
       public         postgres    false         �            1259    18179    usuario_guarda_post    TABLE     x   CREATE TABLE public.usuario_guarda_post (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL
);
 '   DROP TABLE public.usuario_guarda_post;
       public         postgres    false         �            1259    18119    usuario_modera_subreddit    TABLE     �   CREATE TABLE public.usuario_modera_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);
 ,   DROP TABLE public.usuario_modera_subreddit;
       public         postgres    false         �            1259    18324    usuario_percibe_transferencia    TABLE     �   CREATE TABLE public.usuario_percibe_transferencia (
    username character varying(100) NOT NULL,
    id_transferencia integer NOT NULL
);
 1   DROP TABLE public.usuario_percibe_transferencia;
       public         postgres    false         �            1259    18384    usuario_recibe_mensaje_privado    TABLE     �   CREATE TABLE public.usuario_recibe_mensaje_privado (
    username character varying(100) NOT NULL,
    id_mensaje integer NOT NULL
);
 2   DROP TABLE public.usuario_recibe_mensaje_privado;
       public         postgres    false         �            1259    18259 #   usuario_reporta_comment_segun_regla    TABLE     �   CREATE TABLE public.usuario_reporta_comment_segun_regla (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL,
    id_regla integer NOT NULL
);
 7   DROP TABLE public.usuario_reporta_comment_segun_regla;
       public         postgres    false         �            1259    18194     usuario_reporta_post_segun_regla    TABLE     �   CREATE TABLE public.usuario_reporta_post_segun_regla (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL,
    id_regla integer NOT NULL
);
 4   DROP TABLE public.usuario_reporta_post_segun_regla;
       public         postgres    false         �            1259    18354    usuario_sigue_usuario    TABLE     �   CREATE TABLE public.usuario_sigue_usuario (
    username character varying(100) NOT NULL,
    username_seguido character varying(100) NOT NULL
);
 )   DROP TABLE public.usuario_sigue_usuario;
       public         postgres    false         �            1259    18149    usuario_suscrito_subreddit    TABLE     �   CREATE TABLE public.usuario_suscrito_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);
 .   DROP TABLE public.usuario_suscrito_subreddit;
       public         postgres    false         �            1259    17915    usuarios    TABLE       CREATE TABLE public.usuarios (
    username character varying(100) NOT NULL,
    display_name character varying(100),
    about text,
    email character varying(320),
    coins integer,
    karma bigint,
    cake_day timestamp without time zone,
    tipo character varying(10)
);
    DROP TABLE public.usuarios;
       public         postgres    false         w          0    17923    aporte 
   TABLE DATA               @   COPY public.aporte (id_aporte, texto, karma, fecha) FROM stdin;
    public       postgres    false    198       3191.dat �          0    18094    aporte_referencia_link 
   TABLE DATA               J   COPY public.aporte_referencia_link (id_aporte, direccion_web) FROM stdin;
    public       postgres    false    212       3205.dat �          0    18079    comment_responde_comment 
   TABLE DATA               [   COPY public.comment_responde_comment (id_comentario, id_comentario_respondido) FROM stdin;
    public       postgres    false    211       3204.dat ~          0    17989    comments 
   TABLE DATA               :   COPY public.comments (id_comments, id_aporte) FROM stdin;
    public       postgres    false    205       3198.dat x          0    17931    mensajes_privados 
   TABLE DATA               D   COPY public.mensajes_privados (id_mensaje, tema, texto) FROM stdin;
    public       postgres    false    199       3192.dat           0    17999    multireddit_agrupa_subreddit 
   TABLE DATA               f   COPY public.multireddit_agrupa_subreddit (username, nombre_multireddit, nombre_subreddit) FROM stdin;
    public       postgres    false    206       3199.dat {          0    17952    multireddits 
   TABLE DATA               `   COPY public.multireddits (nombre_multireddit, username, fecha_creacion_multireddit) FROM stdin;
    public       postgres    false    202       3195.dat �          0    18064    post_colecciona_comentario 
   TABLE DATA               L   COPY public.post_colecciona_comentario (id_post, id_comentario) FROM stdin;
    public       postgres    false    210       3203.dat }          0    17979    posts 
   TABLE DATA               <   COPY public.posts (id_posts, id_aporte, titulo) FROM stdin;
    public       postgres    false    204       3197.dat y          0    17939    premios 
   TABLE DATA               D   COPY public.premios (nombre_premio, descripcion_premio) FROM stdin;
    public       postgres    false    200       3193.dat |          0    17964    reglas 
   TABLE DATA               O   COPY public.reglas (id_regla, nombre_subreddit, descripcion_regla) FROM stdin;
    public       postgres    false    203       3196.dat �          0    18049    subreddit_contiene_post 
   TABLE DATA               L   COPY public.subreddit_contiene_post (nombre_subreddit, id_post) FROM stdin;
    public       postgres    false    209       3202.dat �          0    18019    subreddit_recomienda_subreddit 
   TABLE DATA               h   COPY public.subreddit_recomienda_subreddit (nombre_subreddit, nombre_subreddit_recomendado) FROM stdin;
    public       postgres    false    207       3200.dat �          0    18034    subreddit_regulador_por_regla 
   TABLE DATA               S   COPY public.subreddit_regulador_por_regla (nombre_subreddit, id_regla) FROM stdin;
    public       postgres    false    208       3201.dat u          0    17907 
   subreddits 
   TABLE DATA               M   COPY public.subreddits (nombre_subreddit, descripcion_subreddit) FROM stdin;
    public       postgres    false    196       3189.dat z          0    17947    transferencias 
   TABLE DATA               H   COPY public.transferencias (id_transferencia, cant_monedas) FROM stdin;
    public       postgres    false    201       3194.dat �          0    18339    usuario_bloquea_usuario 
   TABLE DATA               O   COPY public.usuario_bloquea_usuario (username, username_bloqueado) FROM stdin;
    public       postgres    false    228       3221.dat �          0    18229    usuario_califica_comment 
   TABLE DATA               N   COPY public.usuario_califica_comment (username, id_comment, voto) FROM stdin;
    public       postgres    false    221       3214.dat �          0    18164    usuario_califica_post 
   TABLE DATA               H   COPY public.usuario_califica_post (username, id_post, voto) FROM stdin;
    public       postgres    false    217       3210.dat �          0    18309    usuario_emite_transferencia 
   TABLE DATA               Q   COPY public.usuario_emite_transferencia (username, id_transferencia) FROM stdin;
    public       postgres    false    226       3219.dat �          0    18369    usuario_envia_mensaje_privado 
   TABLE DATA               M   COPY public.usuario_envia_mensaje_privado (username, id_mensaje) FROM stdin;
    public       postgres    false    230       3223.dat �          0    18134     usuario_esta_bloqueado_subreddit 
   TABLE DATA               V   COPY public.usuario_esta_bloqueado_subreddit (username, nombre_subreddit) FROM stdin;
    public       postgres    false    215       3208.dat �          0    18104    usuario_establece_subreddit 
   TABLE DATA               Q   COPY public.usuario_establece_subreddit (username, nombre_subreddit) FROM stdin;
    public       postgres    false    213       3206.dat �          0    18294    usuario_gana_premio 
   TABLE DATA               F   COPY public.usuario_gana_premio (username, nombre_premio) FROM stdin;
    public       postgres    false    225       3218.dat �          0    18279    usuario_genera_comment 
   TABLE DATA               F   COPY public.usuario_genera_comment (username, id_comment) FROM stdin;
    public       postgres    false    224       3217.dat �          0    18214    usuario_genera_post 
   TABLE DATA               @   COPY public.usuario_genera_post (username, id_post) FROM stdin;
    public       postgres    false    220       3213.dat �          0    18244    usuario_guarda_comment 
   TABLE DATA               F   COPY public.usuario_guarda_comment (username, id_comment) FROM stdin;
    public       postgres    false    222       3215.dat �          0    18179    usuario_guarda_post 
   TABLE DATA               @   COPY public.usuario_guarda_post (username, id_post) FROM stdin;
    public       postgres    false    218       3211.dat �          0    18119    usuario_modera_subreddit 
   TABLE DATA               N   COPY public.usuario_modera_subreddit (username, nombre_subreddit) FROM stdin;
    public       postgres    false    214       3207.dat �          0    18324    usuario_percibe_transferencia 
   TABLE DATA               S   COPY public.usuario_percibe_transferencia (username, id_transferencia) FROM stdin;
    public       postgres    false    227       3220.dat �          0    18384    usuario_recibe_mensaje_privado 
   TABLE DATA               N   COPY public.usuario_recibe_mensaje_privado (username, id_mensaje) FROM stdin;
    public       postgres    false    231       3224.dat �          0    18259 #   usuario_reporta_comment_segun_regla 
   TABLE DATA               ]   COPY public.usuario_reporta_comment_segun_regla (username, id_comment, id_regla) FROM stdin;
    public       postgres    false    223       3216.dat �          0    18194     usuario_reporta_post_segun_regla 
   TABLE DATA               W   COPY public.usuario_reporta_post_segun_regla (username, id_post, id_regla) FROM stdin;
    public       postgres    false    219       3212.dat �          0    18354    usuario_sigue_usuario 
   TABLE DATA               K   COPY public.usuario_sigue_usuario (username, username_seguido) FROM stdin;
    public       postgres    false    229       3222.dat �          0    18149    usuario_suscrito_subreddit 
   TABLE DATA               P   COPY public.usuario_suscrito_subreddit (username, nombre_subreddit) FROM stdin;
    public       postgres    false    216       3209.dat v          0    17915    usuarios 
   TABLE DATA               f   COPY public.usuarios (username, display_name, about, email, coins, karma, cake_day, tipo) FROM stdin;
    public       postgres    false    197       3190.dat �           2606    17958 0   multireddits multireddits_nombre_multireddit_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.multireddits
    ADD CONSTRAINT multireddits_nombre_multireddit_key UNIQUE (nombre_multireddit);
 Z   ALTER TABLE ONLY public.multireddits DROP CONSTRAINT multireddits_nombre_multireddit_key;
       public         postgres    false    202         {           2606    17930    aporte pk_aporte 
   CONSTRAINT     U   ALTER TABLE ONLY public.aporte
    ADD CONSTRAINT pk_aporte PRIMARY KEY (id_aporte);
 :   ALTER TABLE ONLY public.aporte DROP CONSTRAINT pk_aporte;
       public         postgres    false    198         �           2606    18098 0   aporte_referencia_link pk_aporte_referencia_link 
   CONSTRAINT     u   ALTER TABLE ONLY public.aporte_referencia_link
    ADD CONSTRAINT pk_aporte_referencia_link PRIMARY KEY (id_aporte);
 Z   ALTER TABLE ONLY public.aporte_referencia_link DROP CONSTRAINT pk_aporte_referencia_link;
       public         postgres    false    212         �           2606    18083 4   comment_responde_comment pk_comment_responde_comment 
   CONSTRAINT     �   ALTER TABLE ONLY public.comment_responde_comment
    ADD CONSTRAINT pk_comment_responde_comment PRIMARY KEY (id_comentario, id_comentario_respondido);
 ^   ALTER TABLE ONLY public.comment_responde_comment DROP CONSTRAINT pk_comment_responde_comment;
       public         postgres    false    211    211         �           2606    17993    comments pk_comments 
   CONSTRAINT     [   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT pk_comments PRIMARY KEY (id_comments);
 >   ALTER TABLE ONLY public.comments DROP CONSTRAINT pk_comments;
       public         postgres    false    205         }           2606    17938 &   mensajes_privados pk_mensajes_privados 
   CONSTRAINT     l   ALTER TABLE ONLY public.mensajes_privados
    ADD CONSTRAINT pk_mensajes_privados PRIMARY KEY (id_mensaje);
 P   ALTER TABLE ONLY public.mensajes_privados DROP CONSTRAINT pk_mensajes_privados;
       public         postgres    false    199         �           2606    18003 <   multireddit_agrupa_subreddit pk_multireddit_agrupa_subreddit 
   CONSTRAINT     �   ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT pk_multireddit_agrupa_subreddit PRIMARY KEY (username, nombre_multireddit, nombre_subreddit);
 f   ALTER TABLE ONLY public.multireddit_agrupa_subreddit DROP CONSTRAINT pk_multireddit_agrupa_subreddit;
       public         postgres    false    206    206    206         �           2606    17956    multireddits pk_multireddits 
   CONSTRAINT     t   ALTER TABLE ONLY public.multireddits
    ADD CONSTRAINT pk_multireddits PRIMARY KEY (username, nombre_multireddit);
 F   ALTER TABLE ONLY public.multireddits DROP CONSTRAINT pk_multireddits;
       public         postgres    false    202    202         �           2606    18068 8   post_colecciona_comentario pk_post_colecciona_comentario 
   CONSTRAINT     �   ALTER TABLE ONLY public.post_colecciona_comentario
    ADD CONSTRAINT pk_post_colecciona_comentario PRIMARY KEY (id_post, id_comentario);
 b   ALTER TABLE ONLY public.post_colecciona_comentario DROP CONSTRAINT pk_post_colecciona_comentario;
       public         postgres    false    210    210         �           2606    17983    posts pk_posts 
   CONSTRAINT     R   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT pk_posts PRIMARY KEY (id_posts);
 8   ALTER TABLE ONLY public.posts DROP CONSTRAINT pk_posts;
       public         postgres    false    204                    2606    17946    premios pk_premios 
   CONSTRAINT     [   ALTER TABLE ONLY public.premios
    ADD CONSTRAINT pk_premios PRIMARY KEY (nombre_premio);
 <   ALTER TABLE ONLY public.premios DROP CONSTRAINT pk_premios;
       public         postgres    false    200         �           2606    17971    reglas pk_reglas 
   CONSTRAINT     f   ALTER TABLE ONLY public.reglas
    ADD CONSTRAINT pk_reglas PRIMARY KEY (nombre_subreddit, id_regla);
 :   ALTER TABLE ONLY public.reglas DROP CONSTRAINT pk_reglas;
       public         postgres    false    203    203         �           2606    18053 2   subreddit_contiene_post pk_subreddit_contiene_post 
   CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_contiene_post
    ADD CONSTRAINT pk_subreddit_contiene_post PRIMARY KEY (nombre_subreddit, id_post);
 \   ALTER TABLE ONLY public.subreddit_contiene_post DROP CONSTRAINT pk_subreddit_contiene_post;
       public         postgres    false    209    209         �           2606    18023 @   subreddit_recomienda_subreddit pk_subreddit_recomienda_subreddit 
   CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_recomienda_subreddit
    ADD CONSTRAINT pk_subreddit_recomienda_subreddit PRIMARY KEY (nombre_subreddit, nombre_subreddit_recomendado);
 j   ALTER TABLE ONLY public.subreddit_recomienda_subreddit DROP CONSTRAINT pk_subreddit_recomienda_subreddit;
       public         postgres    false    207    207         �           2606    18038 >   subreddit_regulador_por_regla pk_subreddit_regulador_por_regla 
   CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_regulador_por_regla
    ADD CONSTRAINT pk_subreddit_regulador_por_regla PRIMARY KEY (nombre_subreddit, id_regla);
 h   ALTER TABLE ONLY public.subreddit_regulador_por_regla DROP CONSTRAINT pk_subreddit_regulador_por_regla;
       public         postgres    false    208    208         w           2606    17914    subreddits pk_subreddits 
   CONSTRAINT     d   ALTER TABLE ONLY public.subreddits
    ADD CONSTRAINT pk_subreddits PRIMARY KEY (nombre_subreddit);
 B   ALTER TABLE ONLY public.subreddits DROP CONSTRAINT pk_subreddits;
       public         postgres    false    196         �           2606    17951     transferencias pk_transferencias 
   CONSTRAINT     l   ALTER TABLE ONLY public.transferencias
    ADD CONSTRAINT pk_transferencias PRIMARY KEY (id_transferencia);
 J   ALTER TABLE ONLY public.transferencias DROP CONSTRAINT pk_transferencias;
       public         postgres    false    201         �           2606    18343 2   usuario_bloquea_usuario pk_usuario_bloquea_usuario 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_bloquea_usuario
    ADD CONSTRAINT pk_usuario_bloquea_usuario PRIMARY KEY (username, username_bloqueado);
 \   ALTER TABLE ONLY public.usuario_bloquea_usuario DROP CONSTRAINT pk_usuario_bloquea_usuario;
       public         postgres    false    228    228         �           2606    18233 4   usuario_califica_comment pk_usuario_califica_comment 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_califica_comment
    ADD CONSTRAINT pk_usuario_califica_comment PRIMARY KEY (username, id_comment);
 ^   ALTER TABLE ONLY public.usuario_califica_comment DROP CONSTRAINT pk_usuario_califica_comment;
       public         postgres    false    221    221         �           2606    18168 .   usuario_califica_post pk_usuario_califica_post 
   CONSTRAINT     {   ALTER TABLE ONLY public.usuario_califica_post
    ADD CONSTRAINT pk_usuario_califica_post PRIMARY KEY (username, id_post);
 X   ALTER TABLE ONLY public.usuario_califica_post DROP CONSTRAINT pk_usuario_califica_post;
       public         postgres    false    217    217         �           2606    18313 :   usuario_emite_transferencia pk_usuario_emite_transferencia 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_emite_transferencia
    ADD CONSTRAINT pk_usuario_emite_transferencia PRIMARY KEY (username, id_transferencia);
 d   ALTER TABLE ONLY public.usuario_emite_transferencia DROP CONSTRAINT pk_usuario_emite_transferencia;
       public         postgres    false    226    226         �           2606    18373 >   usuario_envia_mensaje_privado pk_usuario_envia_mensaje_privado 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_envia_mensaje_privado
    ADD CONSTRAINT pk_usuario_envia_mensaje_privado PRIMARY KEY (username, id_mensaje);
 h   ALTER TABLE ONLY public.usuario_envia_mensaje_privado DROP CONSTRAINT pk_usuario_envia_mensaje_privado;
       public         postgres    false    230    230         �           2606    18138 D   usuario_esta_bloqueado_subreddit pk_usuario_esta_bloqueado_subreddit 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit
    ADD CONSTRAINT pk_usuario_esta_bloqueado_subreddit PRIMARY KEY (username, nombre_subreddit);
 n   ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit DROP CONSTRAINT pk_usuario_esta_bloqueado_subreddit;
       public         postgres    false    215    215         �           2606    18108 :   usuario_establece_subreddit pk_usuario_establece_subreddit 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_establece_subreddit
    ADD CONSTRAINT pk_usuario_establece_subreddit PRIMARY KEY (username, nombre_subreddit);
 d   ALTER TABLE ONLY public.usuario_establece_subreddit DROP CONSTRAINT pk_usuario_establece_subreddit;
       public         postgres    false    213    213         �           2606    18298 *   usuario_gana_premio pk_usuario_gana_premio 
   CONSTRAINT     }   ALTER TABLE ONLY public.usuario_gana_premio
    ADD CONSTRAINT pk_usuario_gana_premio PRIMARY KEY (username, nombre_premio);
 T   ALTER TABLE ONLY public.usuario_gana_premio DROP CONSTRAINT pk_usuario_gana_premio;
       public         postgres    false    225    225         �           2606    18283 0   usuario_genera_comment pk_usuario_genera_comment 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_genera_comment
    ADD CONSTRAINT pk_usuario_genera_comment PRIMARY KEY (username, id_comment);
 Z   ALTER TABLE ONLY public.usuario_genera_comment DROP CONSTRAINT pk_usuario_genera_comment;
       public         postgres    false    224    224         �           2606    18218 *   usuario_genera_post pk_usuario_genera_post 
   CONSTRAINT     w   ALTER TABLE ONLY public.usuario_genera_post
    ADD CONSTRAINT pk_usuario_genera_post PRIMARY KEY (username, id_post);
 T   ALTER TABLE ONLY public.usuario_genera_post DROP CONSTRAINT pk_usuario_genera_post;
       public         postgres    false    220    220         �           2606    18248 0   usuario_guarda_comment pk_usuario_guarda_comment 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_guarda_comment
    ADD CONSTRAINT pk_usuario_guarda_comment PRIMARY KEY (username, id_comment);
 Z   ALTER TABLE ONLY public.usuario_guarda_comment DROP CONSTRAINT pk_usuario_guarda_comment;
       public         postgres    false    222    222         �           2606    18183 *   usuario_guarda_post pk_usuario_guarda_post 
   CONSTRAINT     w   ALTER TABLE ONLY public.usuario_guarda_post
    ADD CONSTRAINT pk_usuario_guarda_post PRIMARY KEY (username, id_post);
 T   ALTER TABLE ONLY public.usuario_guarda_post DROP CONSTRAINT pk_usuario_guarda_post;
       public         postgres    false    218    218         �           2606    18123 4   usuario_modera_subreddit pk_usuario_modera_subreddit 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_modera_subreddit
    ADD CONSTRAINT pk_usuario_modera_subreddit PRIMARY KEY (username, nombre_subreddit);
 ^   ALTER TABLE ONLY public.usuario_modera_subreddit DROP CONSTRAINT pk_usuario_modera_subreddit;
       public         postgres    false    214    214         �           2606    18328 >   usuario_percibe_transferencia pk_usuario_percibe_transferencia 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_percibe_transferencia
    ADD CONSTRAINT pk_usuario_percibe_transferencia PRIMARY KEY (username, id_transferencia);
 h   ALTER TABLE ONLY public.usuario_percibe_transferencia DROP CONSTRAINT pk_usuario_percibe_transferencia;
       public         postgres    false    227    227         �           2606    18388 @   usuario_recibe_mensaje_privado pk_usuario_recibe_mensaje_privado 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_recibe_mensaje_privado
    ADD CONSTRAINT pk_usuario_recibe_mensaje_privado PRIMARY KEY (username, id_mensaje);
 j   ALTER TABLE ONLY public.usuario_recibe_mensaje_privado DROP CONSTRAINT pk_usuario_recibe_mensaje_privado;
       public         postgres    false    231    231         �           2606    18263 J   usuario_reporta_comment_segun_regla pk_usuario_reporta_comment_segun_regla 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT pk_usuario_reporta_comment_segun_regla PRIMARY KEY (username, id_comment, id_regla);
 t   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla DROP CONSTRAINT pk_usuario_reporta_comment_segun_regla;
       public         postgres    false    223    223    223         �           2606    18198 D   usuario_reporta_post_segun_regla pk_usuario_reporta_post_segun_regla 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT pk_usuario_reporta_post_segun_regla PRIMARY KEY (username, id_post, id_regla);
 n   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla DROP CONSTRAINT pk_usuario_reporta_post_segun_regla;
       public         postgres    false    219    219    219         �           2606    18358 .   usuario_sigue_usuario pk_usuario_sigue_usuario 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_sigue_usuario
    ADD CONSTRAINT pk_usuario_sigue_usuario PRIMARY KEY (username, username_seguido);
 X   ALTER TABLE ONLY public.usuario_sigue_usuario DROP CONSTRAINT pk_usuario_sigue_usuario;
       public         postgres    false    229    229         �           2606    18153 8   usuario_suscrito_subreddit pk_usuario_suscrito_subreddit 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_suscrito_subreddit
    ADD CONSTRAINT pk_usuario_suscrito_subreddit PRIMARY KEY (username, nombre_subreddit);
 b   ALTER TABLE ONLY public.usuario_suscrito_subreddit DROP CONSTRAINT pk_usuario_suscrito_subreddit;
       public         postgres    false    216    216         y           2606    17922    usuarios pk_usuarios 
   CONSTRAINT     X   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (username);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuarios;
       public         postgres    false    197         �           2606    17973    reglas reglas_id_regla_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.reglas
    ADD CONSTRAINT reglas_id_regla_key UNIQUE (id_regla);
 D   ALTER TABLE ONLY public.reglas DROP CONSTRAINT reglas_id_regla_key;
       public         postgres    false    203         �           2606    18099 8   aporte_referencia_link fk_aporte_referencia_link_aportes    FK CONSTRAINT     �   ALTER TABLE ONLY public.aporte_referencia_link
    ADD CONSTRAINT fk_aporte_referencia_link_aportes FOREIGN KEY (id_aporte) REFERENCES public.aporte(id_aporte);
 b   ALTER TABLE ONLY public.aporte_referencia_link DROP CONSTRAINT fk_aporte_referencia_link_aportes;
       public       postgres    false    198    2939    212         �           2606    18084 =   comment_responde_comment fk_comment_responde_comment_comments    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_responde_comment
    ADD CONSTRAINT fk_comment_responde_comment_comments FOREIGN KEY (id_comentario) REFERENCES public.comments(id_comments);
 g   ALTER TABLE ONLY public.comment_responde_comment DROP CONSTRAINT fk_comment_responde_comment_comments;
       public       postgres    false    211    2957    205         �           2606    18089 H   comment_responde_comment fk_comment_responde_comment_comments_respondido    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_responde_comment
    ADD CONSTRAINT fk_comment_responde_comment_comments_respondido FOREIGN KEY (id_comentario_respondido) REFERENCES public.comments(id_comments);
 r   ALTER TABLE ONLY public.comment_responde_comment DROP CONSTRAINT fk_comment_responde_comment_comments_respondido;
       public       postgres    false    2957    205    211         �           2606    17994    comments fk_comments_aportes    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_aportes FOREIGN KEY (id_aporte) REFERENCES public.aporte(id_aporte);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_comments_aportes;
       public       postgres    false    205    2939    198         �           2606    18009 I   multireddit_agrupa_subreddit fk_multireddit_agrupa_subreddit_multireddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT fk_multireddit_agrupa_subreddit_multireddits FOREIGN KEY (nombre_multireddit) REFERENCES public.multireddits(nombre_multireddit);
 s   ALTER TABLE ONLY public.multireddit_agrupa_subreddit DROP CONSTRAINT fk_multireddit_agrupa_subreddit_multireddits;
       public       postgres    false    206    202    2947         �           2606    18014 G   multireddit_agrupa_subreddit fk_multireddit_agrupa_subreddit_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT fk_multireddit_agrupa_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 q   ALTER TABLE ONLY public.multireddit_agrupa_subreddit DROP CONSTRAINT fk_multireddit_agrupa_subreddit_subreddits;
       public       postgres    false    206    2935    196         �           2606    18004 E   multireddit_agrupa_subreddit fk_multireddit_agrupa_subreddit_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT fk_multireddit_agrupa_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 o   ALTER TABLE ONLY public.multireddit_agrupa_subreddit DROP CONSTRAINT fk_multireddit_agrupa_subreddit_usuarios;
       public       postgres    false    2937    197    206         �           2606    17959 %   multireddits fk_multireddits_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.multireddits
    ADD CONSTRAINT fk_multireddits_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 O   ALTER TABLE ONLY public.multireddits DROP CONSTRAINT fk_multireddits_usuarios;
       public       postgres    false    202    197    2937         �           2606    18074 A   post_colecciona_comentario fk_post_colecciona_comentario_comments    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_colecciona_comentario
    ADD CONSTRAINT fk_post_colecciona_comentario_comments FOREIGN KEY (id_comentario) REFERENCES public.comments(id_comments);
 k   ALTER TABLE ONLY public.post_colecciona_comentario DROP CONSTRAINT fk_post_colecciona_comentario_comments;
       public       postgres    false    205    2957    210         �           2606    18069 >   post_colecciona_comentario fk_post_colecciona_comentario_posts    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_colecciona_comentario
    ADD CONSTRAINT fk_post_colecciona_comentario_posts FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);
 h   ALTER TABLE ONLY public.post_colecciona_comentario DROP CONSTRAINT fk_post_colecciona_comentario_posts;
       public       postgres    false    2955    210    204         �           2606    17984    posts fk_posts_aportes    FK CONSTRAINT        ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_posts_aportes FOREIGN KEY (id_aporte) REFERENCES public.aporte(id_aporte);
 @   ALTER TABLE ONLY public.posts DROP CONSTRAINT fk_posts_aportes;
       public       postgres    false    2939    198    204         �           2606    17974    reglas fk_reglas_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.reglas
    ADD CONSTRAINT fk_reglas_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 E   ALTER TABLE ONLY public.reglas DROP CONSTRAINT fk_reglas_subreddits;
       public       postgres    false    203    2935    196         �           2606    18059 8   subreddit_contiene_post fk_subreddit_contiene_post_posts    FK CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_contiene_post
    ADD CONSTRAINT fk_subreddit_contiene_post_posts FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);
 b   ALTER TABLE ONLY public.subreddit_contiene_post DROP CONSTRAINT fk_subreddit_contiene_post_posts;
       public       postgres    false    204    2955    209         �           2606    18054 =   subreddit_contiene_post fk_subreddit_contiene_post_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_contiene_post
    ADD CONSTRAINT fk_subreddit_contiene_post_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 g   ALTER TABLE ONLY public.subreddit_contiene_post DROP CONSTRAINT fk_subreddit_contiene_post_subreddits;
       public       postgres    false    2935    209    196         �           2606    18029 W   subreddit_recomienda_subreddit fk_subreddit_recomienda_subreddit_recomendado_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_recomienda_subreddit
    ADD CONSTRAINT fk_subreddit_recomienda_subreddit_recomendado_subreddits FOREIGN KEY (nombre_subreddit_recomendado) REFERENCES public.subreddits(nombre_subreddit);
 �   ALTER TABLE ONLY public.subreddit_recomienda_subreddit DROP CONSTRAINT fk_subreddit_recomienda_subreddit_recomendado_subreddits;
       public       postgres    false    2935    196    207         �           2606    18024 K   subreddit_recomienda_subreddit fk_subreddit_recomienda_subreddit_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_recomienda_subreddit
    ADD CONSTRAINT fk_subreddit_recomienda_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 u   ALTER TABLE ONLY public.subreddit_recomienda_subreddit DROP CONSTRAINT fk_subreddit_recomienda_subreddit_subreddits;
       public       postgres    false    2935    196    207         �           2606    18044 E   subreddit_regulador_por_regla fk_subreddit_regulador_por_regla_reglas    FK CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_regulador_por_regla
    ADD CONSTRAINT fk_subreddit_regulador_por_regla_reglas FOREIGN KEY (id_regla) REFERENCES public.reglas(id_regla);
 o   ALTER TABLE ONLY public.subreddit_regulador_por_regla DROP CONSTRAINT fk_subreddit_regulador_por_regla_reglas;
       public       postgres    false    2953    208    203         �           2606    18039 I   subreddit_regulador_por_regla fk_subreddit_regulador_por_regla_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.subreddit_regulador_por_regla
    ADD CONSTRAINT fk_subreddit_regulador_por_regla_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 s   ALTER TABLE ONLY public.subreddit_regulador_por_regla DROP CONSTRAINT fk_subreddit_regulador_por_regla_subreddits;
       public       postgres    false    208    196    2935         �           2606    18344 ;   usuario_bloquea_usuario fk_usuario_bloquea_usuario_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_bloquea_usuario
    ADD CONSTRAINT fk_usuario_bloquea_usuario_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 e   ALTER TABLE ONLY public.usuario_bloquea_usuario DROP CONSTRAINT fk_usuario_bloquea_usuario_usuarios;
       public       postgres    false    228    2937    197         �           2606    18349 F   usuario_bloquea_usuario fk_usuario_bloquea_usuario_usuarios_bloqueados    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_bloquea_usuario
    ADD CONSTRAINT fk_usuario_bloquea_usuario_usuarios_bloqueados FOREIGN KEY (username_bloqueado) REFERENCES public.usuarios(username);
 p   ALTER TABLE ONLY public.usuario_bloquea_usuario DROP CONSTRAINT fk_usuario_bloquea_usuario_usuarios_bloqueados;
       public       postgres    false    2937    228    197         �           2606    18239 <   usuario_califica_comment fk_usuario_califica_comment_comment    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_califica_comment
    ADD CONSTRAINT fk_usuario_califica_comment_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);
 f   ALTER TABLE ONLY public.usuario_califica_comment DROP CONSTRAINT fk_usuario_califica_comment_comment;
       public       postgres    false    2957    221    205         �           2606    18234 =   usuario_califica_comment fk_usuario_califica_comment_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_califica_comment
    ADD CONSTRAINT fk_usuario_califica_comment_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 g   ALTER TABLE ONLY public.usuario_califica_comment DROP CONSTRAINT fk_usuario_califica_comment_usuarios;
       public       postgres    false    2937    221    197         �           2606    18174 3   usuario_califica_post fk_usuario_califica_post_post    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_califica_post
    ADD CONSTRAINT fk_usuario_califica_post_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);
 ]   ALTER TABLE ONLY public.usuario_califica_post DROP CONSTRAINT fk_usuario_califica_post_post;
       public       postgres    false    217    2955    204         �           2606    18169 7   usuario_califica_post fk_usuario_califica_post_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_califica_post
    ADD CONSTRAINT fk_usuario_califica_post_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 a   ALTER TABLE ONLY public.usuario_califica_post DROP CONSTRAINT fk_usuario_califica_post_usuarios;
       public       postgres    false    197    217    2937         �           2606    18319 I   usuario_emite_transferencia fk_usuario_emite_transferencia_transferencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_emite_transferencia
    ADD CONSTRAINT fk_usuario_emite_transferencia_transferencias FOREIGN KEY (id_transferencia) REFERENCES public.transferencias(id_transferencia);
 s   ALTER TABLE ONLY public.usuario_emite_transferencia DROP CONSTRAINT fk_usuario_emite_transferencia_transferencias;
       public       postgres    false    2945    226    201         �           2606    18314 C   usuario_emite_transferencia fk_usuario_emite_transferencia_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_emite_transferencia
    ADD CONSTRAINT fk_usuario_emite_transferencia_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 m   ALTER TABLE ONLY public.usuario_emite_transferencia DROP CONSTRAINT fk_usuario_emite_transferencia_usuarios;
       public       postgres    false    2937    197    226         �           2606    18379 P   usuario_envia_mensaje_privado fk_usuario_envia_mensaje_privado_mensajes_privados    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_envia_mensaje_privado
    ADD CONSTRAINT fk_usuario_envia_mensaje_privado_mensajes_privados FOREIGN KEY (id_mensaje) REFERENCES public.mensajes_privados(id_mensaje);
 z   ALTER TABLE ONLY public.usuario_envia_mensaje_privado DROP CONSTRAINT fk_usuario_envia_mensaje_privado_mensajes_privados;
       public       postgres    false    199    2941    230         �           2606    18374 G   usuario_envia_mensaje_privado fk_usuario_envia_mensaje_privado_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_envia_mensaje_privado
    ADD CONSTRAINT fk_usuario_envia_mensaje_privado_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 q   ALTER TABLE ONLY public.usuario_envia_mensaje_privado DROP CONSTRAINT fk_usuario_envia_mensaje_privado_usuarios;
       public       postgres    false    230    197    2937         �           2606    18144 O   usuario_esta_bloqueado_subreddit fk_usuario_esta_bloqueado_subreddit_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit
    ADD CONSTRAINT fk_usuario_esta_bloqueado_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 y   ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit DROP CONSTRAINT fk_usuario_esta_bloqueado_subreddit_subreddits;
       public       postgres    false    196    215    2935         �           2606    18139 M   usuario_esta_bloqueado_subreddit fk_usuario_esta_bloqueado_subreddit_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit
    ADD CONSTRAINT fk_usuario_esta_bloqueado_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 w   ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit DROP CONSTRAINT fk_usuario_esta_bloqueado_subreddit_usuarios;
       public       postgres    false    2937    215    197         �           2606    18114 E   usuario_establece_subreddit fk_usuario_establece_subreddit_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_establece_subreddit
    ADD CONSTRAINT fk_usuario_establece_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 o   ALTER TABLE ONLY public.usuario_establece_subreddit DROP CONSTRAINT fk_usuario_establece_subreddit_subreddits;
       public       postgres    false    196    2935    213         �           2606    18109 C   usuario_establece_subreddit fk_usuario_establece_subreddit_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_establece_subreddit
    ADD CONSTRAINT fk_usuario_establece_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 m   ALTER TABLE ONLY public.usuario_establece_subreddit DROP CONSTRAINT fk_usuario_establece_subreddit_usuarios;
       public       postgres    false    213    2937    197         �           2606    18304 2   usuario_gana_premio fk_usuario_gana_premio_premios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_gana_premio
    ADD CONSTRAINT fk_usuario_gana_premio_premios FOREIGN KEY (nombre_premio) REFERENCES public.premios(nombre_premio);
 \   ALTER TABLE ONLY public.usuario_gana_premio DROP CONSTRAINT fk_usuario_gana_premio_premios;
       public       postgres    false    200    225    2943         �           2606    18299 3   usuario_gana_premio fk_usuario_gana_premio_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_gana_premio
    ADD CONSTRAINT fk_usuario_gana_premio_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 ]   ALTER TABLE ONLY public.usuario_gana_premio DROP CONSTRAINT fk_usuario_gana_premio_usuarios;
       public       postgres    false    225    197    2937         �           2606    18289 8   usuario_genera_comment fk_usuario_genera_comment_comment    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_genera_comment
    ADD CONSTRAINT fk_usuario_genera_comment_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);
 b   ALTER TABLE ONLY public.usuario_genera_comment DROP CONSTRAINT fk_usuario_genera_comment_comment;
       public       postgres    false    205    2957    224         �           2606    18284 9   usuario_genera_comment fk_usuario_genera_comment_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_genera_comment
    ADD CONSTRAINT fk_usuario_genera_comment_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 c   ALTER TABLE ONLY public.usuario_genera_comment DROP CONSTRAINT fk_usuario_genera_comment_usuarios;
       public       postgres    false    2937    224    197         �           2606    18224 /   usuario_genera_post fk_usuario_genera_post_post    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_genera_post
    ADD CONSTRAINT fk_usuario_genera_post_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);
 Y   ALTER TABLE ONLY public.usuario_genera_post DROP CONSTRAINT fk_usuario_genera_post_post;
       public       postgres    false    220    204    2955         �           2606    18219 3   usuario_genera_post fk_usuario_genera_post_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_genera_post
    ADD CONSTRAINT fk_usuario_genera_post_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 ]   ALTER TABLE ONLY public.usuario_genera_post DROP CONSTRAINT fk_usuario_genera_post_usuarios;
       public       postgres    false    2937    197    220         �           2606    18254 8   usuario_guarda_comment fk_usuario_guarda_comment_comment    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_guarda_comment
    ADD CONSTRAINT fk_usuario_guarda_comment_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);
 b   ALTER TABLE ONLY public.usuario_guarda_comment DROP CONSTRAINT fk_usuario_guarda_comment_comment;
       public       postgres    false    205    2957    222         �           2606    18249 9   usuario_guarda_comment fk_usuario_guarda_comment_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_guarda_comment
    ADD CONSTRAINT fk_usuario_guarda_comment_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 c   ALTER TABLE ONLY public.usuario_guarda_comment DROP CONSTRAINT fk_usuario_guarda_comment_usuarios;
       public       postgres    false    197    2937    222         �           2606    18189 /   usuario_guarda_post fk_usuario_guarda_post_post    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_guarda_post
    ADD CONSTRAINT fk_usuario_guarda_post_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);
 Y   ALTER TABLE ONLY public.usuario_guarda_post DROP CONSTRAINT fk_usuario_guarda_post_post;
       public       postgres    false    2955    204    218         �           2606    18184 3   usuario_guarda_post fk_usuario_guarda_post_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_guarda_post
    ADD CONSTRAINT fk_usuario_guarda_post_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 ]   ALTER TABLE ONLY public.usuario_guarda_post DROP CONSTRAINT fk_usuario_guarda_post_usuarios;
       public       postgres    false    2937    218    197         �           2606    18129 ?   usuario_modera_subreddit fk_usuario_modera_subreddit_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_modera_subreddit
    ADD CONSTRAINT fk_usuario_modera_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 i   ALTER TABLE ONLY public.usuario_modera_subreddit DROP CONSTRAINT fk_usuario_modera_subreddit_subreddits;
       public       postgres    false    2935    214    196         �           2606    18124 =   usuario_modera_subreddit fk_usuario_modera_subreddit_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_modera_subreddit
    ADD CONSTRAINT fk_usuario_modera_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 g   ALTER TABLE ONLY public.usuario_modera_subreddit DROP CONSTRAINT fk_usuario_modera_subreddit_usuarios;
       public       postgres    false    214    197    2937         �           2606    18334 M   usuario_percibe_transferencia fk_usuario_percibe_transferencia_transferencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_percibe_transferencia
    ADD CONSTRAINT fk_usuario_percibe_transferencia_transferencias FOREIGN KEY (id_transferencia) REFERENCES public.transferencias(id_transferencia);
 w   ALTER TABLE ONLY public.usuario_percibe_transferencia DROP CONSTRAINT fk_usuario_percibe_transferencia_transferencias;
       public       postgres    false    227    201    2945         �           2606    18329 G   usuario_percibe_transferencia fk_usuario_percibe_transferencia_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_percibe_transferencia
    ADD CONSTRAINT fk_usuario_percibe_transferencia_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 q   ALTER TABLE ONLY public.usuario_percibe_transferencia DROP CONSTRAINT fk_usuario_percibe_transferencia_usuarios;
       public       postgres    false    2937    197    227         �           2606    18394 R   usuario_recibe_mensaje_privado fk_usuario_recibe_mensaje_privado_mensajes_privados    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_recibe_mensaje_privado
    ADD CONSTRAINT fk_usuario_recibe_mensaje_privado_mensajes_privados FOREIGN KEY (id_mensaje) REFERENCES public.mensajes_privados(id_mensaje);
 |   ALTER TABLE ONLY public.usuario_recibe_mensaje_privado DROP CONSTRAINT fk_usuario_recibe_mensaje_privado_mensajes_privados;
       public       postgres    false    2941    231    199         �           2606    18389 I   usuario_recibe_mensaje_privado fk_usuario_recibe_mensaje_privado_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_recibe_mensaje_privado
    ADD CONSTRAINT fk_usuario_recibe_mensaje_privado_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 s   ALTER TABLE ONLY public.usuario_recibe_mensaje_privado DROP CONSTRAINT fk_usuario_recibe_mensaje_privado_usuarios;
       public       postgres    false    231    2937    197         �           2606    18269 R   usuario_reporta_comment_segun_regla fk_usuario_reporta_comment_segun_regla_comment    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_comment_segun_regla_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);
 |   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla DROP CONSTRAINT fk_usuario_reporta_comment_segun_regla_comment;
       public       postgres    false    205    2957    223         �           2606    18274 Q   usuario_reporta_comment_segun_regla fk_usuario_reporta_comment_segun_regla_reglas    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_comment_segun_regla_reglas FOREIGN KEY (id_regla) REFERENCES public.reglas(id_regla);
 {   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla DROP CONSTRAINT fk_usuario_reporta_comment_segun_regla_reglas;
       public       postgres    false    2953    203    223         �           2606    18264 S   usuario_reporta_comment_segun_regla fk_usuario_reporta_comment_segun_regla_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_comment_segun_regla_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 }   ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla DROP CONSTRAINT fk_usuario_reporta_comment_segun_regla_usuarios;
       public       postgres    false    223    197    2937         �           2606    18204 I   usuario_reporta_post_segun_regla fk_usuario_reporta_post_segun_regla_post    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_post_segun_regla_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);
 s   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla DROP CONSTRAINT fk_usuario_reporta_post_segun_regla_post;
       public       postgres    false    204    219    2955         �           2606    18209 K   usuario_reporta_post_segun_regla fk_usuario_reporta_post_segun_regla_reglas    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_post_segun_regla_reglas FOREIGN KEY (id_regla) REFERENCES public.reglas(id_regla);
 u   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla DROP CONSTRAINT fk_usuario_reporta_post_segun_regla_reglas;
       public       postgres    false    219    203    2953         �           2606    18199 M   usuario_reporta_post_segun_regla fk_usuario_reporta_post_segun_regla_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_post_segun_regla_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 w   ALTER TABLE ONLY public.usuario_reporta_post_segun_regla DROP CONSTRAINT fk_usuario_reporta_post_segun_regla_usuarios;
       public       postgres    false    2937    219    197         �           2606    18359 7   usuario_sigue_usuario fk_usuario_sigue_usuario_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_sigue_usuario
    ADD CONSTRAINT fk_usuario_sigue_usuario_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 a   ALTER TABLE ONLY public.usuario_sigue_usuario DROP CONSTRAINT fk_usuario_sigue_usuario_usuarios;
       public       postgres    false    229    197    2937         �           2606    18364 @   usuario_sigue_usuario fk_usuario_sigue_usuario_usuarios_seguidos    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_sigue_usuario
    ADD CONSTRAINT fk_usuario_sigue_usuario_usuarios_seguidos FOREIGN KEY (username_seguido) REFERENCES public.usuarios(username);
 j   ALTER TABLE ONLY public.usuario_sigue_usuario DROP CONSTRAINT fk_usuario_sigue_usuario_usuarios_seguidos;
       public       postgres    false    2937    197    229         �           2606    18159 C   usuario_suscrito_subreddit fk_usuario_suscrito_subreddit_subreddits    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_suscrito_subreddit
    ADD CONSTRAINT fk_usuario_suscrito_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);
 m   ALTER TABLE ONLY public.usuario_suscrito_subreddit DROP CONSTRAINT fk_usuario_suscrito_subreddit_subreddits;
       public       postgres    false    196    216    2935         �           2606    18154 A   usuario_suscrito_subreddit fk_usuario_suscrito_subreddit_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_suscrito_subreddit
    ADD CONSTRAINT fk_usuario_suscrito_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);
 k   ALTER TABLE ONLY public.usuario_suscrito_subreddit DROP CONSTRAINT fk_usuario_suscrito_subreddit_usuarios;
       public       postgres    false    2937    216    197                                                                                                                                                                                                3191.dat                                                                                            0000600 0004000 0002000 00000006504 13474647262 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Sometimes later becomes never. ... 	6	2012-01-01 00:00:00
2	Dream it. ... 	3	2015-01-01 00:00:00
3	Thats beautiful, oh my God	8	2017-01-01 00:00:00
4	God I still can’t believe it’s been 5 years since I read that.	1	2014-01-01 00:00:00
5	I had to look this up because I couldn’t believe it	88	2017-01-01 00:00:00
6	Being a civil attorney - we almost never go to jury trial and the job can be unbelievably boring.	22	2018-01-01 00:00:00
7	Of course, those beans got to be flavored that way by, you guessed it, soaking in syrup.	6	2019-01-01 00:00:00
8	More like an oil or extract. Theres not usually sugar added to flavored coffee beans.	2	2012-01-01 00:00:00
9	And that right there is why I love infused beans and not a syrup shot. I hate sugar in my coffee.	6	2013-01-01 00:00:00
10	no, i didnt guess it, because i actually know that they got that way not by soaking in syrup.	9	2016-01-01 00:00:00
11	Inferior coffee?	22	2017-01-01 00:00:00
12	To be faaaaaaaaaiiiiirrrr	111	2012-01-01 00:00:00
13	The best treatment for a child with anxiety is treating their parent’s anxiety.	555	2014-01-01 00:00:00
14	Edit: thanks for the awards, kind strangers!	2	2011-01-01 00:00:00
15	I feel like I live in a bubble.. my mom created.	7	2013-01-01 00:00:00
16	All this is a big part of the reason Im not sure if I should ever have children.	2	2016-01-01 00:00:00
17	Office copiers cost upwards of $7,000 some can go for $15,000-20,000 depending on print speed and capacity	9	2013-01-01 00:00:00
18	An elevator will go up to the top of the hoist instead of crash to the floor in most catastrophic failures due to the counter weights.	2	2017-01-01 00:00:00
19	I dont know if that makes my elevator anxiety better or worse.	4	2012-01-01 00:00:00
20	It all depends on whether there is a masked villain sawing at the rope holding the counter-weights.	6	2018-01-01 00:00:00
21	twirls mustache	2	2012-01-01 00:00:00
22	Huh. Really? You mean tv and movies made this up!?!	3	2018-01-01 00:00:00
23	EDIT2: uncertain what happens in the event of a Dracarys, however.	1	2014-01-01 00:00:00
24	safer than THE ROCKOON?	9	2012-01-01 00:00:00
25	Well now I need this to play out in a movie.	5	2019-01-01 00:00:00
26	The toner in your printer is plastic being melted on to the paper.	0	2017-01-01 00:00:00
27	To add to this an inkjet printer micro boils the ink in the printhead before transferring it to the page, bubbling just barely. I had no idea about this until last year.	3	2014-01-01 00:00:00
28	Neurodegenerative diseases (Alzheimers,Parkinson,...) starts way before the first symptoms appears.	2	2012-01-01 00:00:00
29	There is currently no treatment to stop or slow the progression of the disease.	5	2015-01-01 00:00:00
30	Im a lifeguard so nothing special, but while training to be one I learned that nearly no drowning victims ever wake back up	3	2011-01-01 00:00:00
31	    Note: My experience applies to US insurance only	8	2016-01-01 00:00:00
32	Important exceptions ... Earthquakes and Floods (floods from the ground up, not from a burst pipe). Both of those require separate coverage.	2	2013-01-01 00:00:00
33	They usually die. CPR only has a 10% success rate and even then the chance that they will be a veggie for the rest of their life is something like 80%. 	3	2012-01-01 00:00:00
34	So in reality you have about a 2% chance of ever being normal again if you drown.	5	2016-01-01 00:00:00
\.


                                                                                                                                                                                            3205.dat                                                                                            0000600 0004000 0002000 00000001310 13474647262 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	www.sql.com
2	www.fsf.com
3	www.reddit.com
4	www.linux.com
5	www.tastyfood.com
6	www.gnulinux.com
7	www.beansandrice.com
8	www.body.com
9	www.guessing.com
10	www.oil.com
11	www.oilextractions.com/oil/us
12	www.foooooood.com
13	www.allflavors.com
14	www.lovebeans.com
15	www.readalot.com
16	www.beautiful.com
17	www.believinginmagic.vom
18	www.fairness.com
19	www.tobeornottobe.com
20	www.awards.com
21	www.reasoning.com
22	www.allreasons.com
23	www.officecopiers.com
24	www.printsandprices.com
25	www.meaningofdreams.com
26	www.tvmovies.com
27	www.rock.on
28	www.printtoners.com
29	www.science.com
30	www.how.ever.com
31	www.insurances.us
32	www.nature.com/earthquackes
33	www.life.com
34	www.chances.com
\.


                                                                                                                                                                                                                                                                                                                        3204.dat                                                                                            0000600 0004000 0002000 00000000060 13474647262 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	1
9	1
10	1
11	2
12	2
13	3
14	3
15	3
16	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3198.dat                                                                                            0000600 0004000 0002000 00000000123 13474647262 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3192.dat                                                                                            0000600 0004000 0002000 00000016247 13474647262 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Risin up, back on the street                                                                                                                                                                            	Were leaving together,
2	Did my time, took my chances                                                                                                                                                                            	But still its farewell
3	Went the distance, now Im back on my feet                                                                                                                                                               	And maybe well come back
4	Just a man and his will to survive                                                                                                                                                                      	To earth, who can tell?
5	So many times, it happens too fast                                                                                                                                                                      	I guess there is no one to blame
6	You trade your passion for glory                                                                                                                                                                        	Were leaving ground (leaving ground)
7	Dont lose your grip on the dreams of the past                                                                                                                                                           	Will things ever be the same again?
8	You must fight just to keep them alive                                                                                                                                                                  	Its the final countdown
9	Its the eye of the tiger, its the thrill of the fight                                                                                                                                                   	The final countdown
10	Risin up to the challenge of our rival                                                                                                                                                                  	Oh
11	And the last known survivor stalks his prey in the night                                                                                                                                                	Were heading for Venus (Venus)
12	And hes watchin us all with the eye of the tiger                                                                                                                                                        	And still we stand tall
13	Face to face, out in the heat                                                                                                                                                                           	Cause maybe theyve seen us (seen us)
14	Hangin tough, stayin hungry                                                                                                                                                                             	And welcome us all, yeah
15	They stack the odds till we take to the street                                                                                                                                                          	With so many light years to go
16	For the kill with the skill to survive                                                                                                                                                                  	And things to be found (to be found)
17	Its the eye of the tiger, its the dream of the fight                                                                                                                                                    	Im sure that well all miss her so
18	Risin up to the challenge of our rival                                                                                                                                                                  	Its the final countdown
19	And the last known survivor stalks his prey in the night                                                                                                                                                	The final countdown
20	And hes watchin us all with the eye of the tiger                                                                                                                                                        	The final countdown
21	Risin up, straight to the top                                                                                                                                                                           	The final countdown
22	Had the guts, got the glory                                                                                                                                                                             	Oh
23	Went the distance, now Im not gonna stop                                                                                                                                                                	The final countdown, oh
24	Just a man and his will to survive                                                                                                                                                                      	Its… 
25	Its the eye of the tiger, its the dream of the fight                                                                                                                                                    	And still we stand tall
26	Risin up to the challenge of our rival                                                                                                                                                                  	And welcome us all, yeah
27	And the last known survivor stalks his prey in the night                                                                                                                                                	With so many light years to go
28	And hes watchin us all with the eye of the tiger                                                                                                                                                        	With so many light years to go
29	The eye of the tiger                                                                                                                                                                                    	And things to be found (to be found)
30	The eye of the tiger                                                                                                                                                                                    	The final countdown
31	The eye of the tiger                                                                                                                                                                                    	I guess there is no one to blame
32	The eye of the tiger                                                                                                                                                                                    	To earth, who can tell?
\.


                                                                                                                                                                                                                                                                                                                                                         3199.dat                                                                                            0000600 0004000 0002000 00000001146 13474647262 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	fav food	water
Headless Body of Agnew	drink and stuff	underwater
Brain Spawn	computer	funny
Philip J. Fry	asian food	rice fields
Philip J. Fry	social	south
Brain Spawn	social	economy
Brain Spawn	fav food	chocolate
Philip J. Fry	computer	usb
Philip J. Fry	social	party
Zapp Brannigan	social	faces
Zapp Brannigan	drink and stuff	funny
Zapp Brannigan	codecs	math
Zapp Brannigan	fav food	food
Philip J. Fry	codecs	water
Philip J. Fry	smiles	water
John Zoidberg	animal	astronomy
John Zoidberg	fav food	asia
Philip J. Fry	cardinality	technology
Philip J. Fry	fav food	do it yourself
Mom	fav food	asia
\.


                                                                                                                                                                                                                                                                                                                                                                                                                          3195.dat                                                                                            0000600 0004000 0002000 00000000764 13474647262 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        fav food	Philip J. Fry	2018-01-01 00:00:00
drink and stuff	Amy Wong	2013-01-01 00:00:00
social	Zapp Brannigan	2012-01-01 00:00:00
wet things	Boxy	2015-04-01 00:00:00
asian food	Brain Spawn	2012-01-01 00:00:00
cardinality	The Crushinator	2016-01-01 00:00:00
computer	Kif Kroker	2018-01-01 00:00:00
software	Lord Nibbler	2011-01-01 00:00:00
smiles	Hermes Conrad	2001-01-01 00:00:00
animal	Calculon	2005-01-01 00:00:00
free software	Calculon	2017-01-01 00:00:00
codecs	Calculon	2013-01-01 00:00:00
\.


            3203.dat                                                                                            0000600 0004000 0002000 00000000005 13474647262 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3197.dat                                                                                            0000600 0004000 0002000 00000001005 13474647262 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	17	how to avoid everything
2	18	Lets talk about dogs, reddit
3	19	Anyone knows the thing?
4	20	How do you do it?
5	21	Is there any hope?
6	22	What do you think?
7	23	Look at this
8	24	You wont believe this
9	25	Cant wait
10	26	Link inside
11	27	Remember this?
12	28	A discovery about the use this tool
13	29	Do you ever think I wil never be that good?
14	30	What is with the lack of cursing?
15	31	Tips on avoiding as
16	32	Some ideas
17	33	Just a reminder for newer redditors
18	34	Saturday morning, post it!
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3193.dat                                                                                            0000600 0004000 0002000 00000007371 13474647262 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        belwether                                                                                                                                                                                               	hang out on the new queue and flag carefully
well-rounded                                                                                                                                                                                            	post good links and food comments
best link                                                                                                                                                                                               	submilt a great link
best comment                                                                                                                                                                                            	write a great comment
combo linker                                                                                                                                                                                            	submit lots of good links
combo commenter                                                                                                                                                                                         	post a high percentage of good comments in one day
inciteful link                                                                                                                                                                                          	submit something worthwhile but provocative
inciteful comment                                                                                                                                                                                       	write something interesting but provocative
shutterbug                                                                                                                                                                                              	constribute a photo to the sidebar
new user                                                                                                                                                                                                	join reddit
verified email address                                                                                                                                                                                  	verify your email address
gilding (tiered)                                                                                                                                                                                        	gild a link or comment
oner-year club                                                                                                                                                                                          	keep up the good workd!
two-year club                                                                                                                                                                                           	
three-year club                                                                                                                                                                                         	
four-year club                                                                                                                                                                                          	
five-year club                                                                                                                                                                                          	
\.


                                                                                                                                                                                                                                                                       3196.dat                                                                                            0000600 0004000 0002000 00000000727 13474647262 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	linux	Adhere to the same standards of behavior online that you follow in real life.
2	linux	use linux
3	cats	dont curse
4	cats	dont get too angry
5	cats	dont feed the trolls
6	food	dont post garbage
7	funny	dont post sad pictures
8	funny	dont advertise
9	math	dont post your homework
10	culture	respect other cultures
11	economy	always post your source of information.
12	south	south only
13	sql	be respectful
14	food	be open-minded
15	video codecs	dont advertise
\.


                                         3202.dat                                                                                            0000600 0004000 0002000 00000000242 13474647262 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        linux	1
sql	2
GNU	3
cats	4
doggos	5
rice	6
linux	7
linux	8
linux	9
cellphones	10
economy	11
economy	12
funny	13
funny	14
funny	15
funny	16
funny	17
funny	18
\.


                                                                                                                                                                                                                                                                                                                                                              3200.dat                                                                                            0000600 0004000 0002000 00000000670 13474647262 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        linux	sql
linux	GNU
GNU	cats
doggos	cats
funny	wines
technology	linux
technology	GNU
technology	sql
technology	usb
party	funny
food	wines
food	water
food	chocolate
food	rice
rice	rice fields
history	asia
futurama	funny
funny	futurama
chocolate	food
asia	technology
transportation	auto
party	faces
economy	south
history	south
south	wines
GNU	video codecs
food	hot-dog
do it yourself	technology
economy	culture
culture	economy
micro	sql
\.


                                                                        3201.dat                                                                                            0000600 0004000 0002000 00000000206 13474647262 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        linux	1
linux	2
cats	3
cats	4
cats	5
food	6
funny	7
funny	8
math	9
culture	10
economy	11
south	12
sql	13
food	14
video codecs	15
\.


                                                                                                                                                                                                                                                                                                                                                                                          3189.dat                                                                                            0000600 0004000 0002000 00000001010 13474647262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        linux	linux
futurama	futurama
GNU	GNU
Openbox	Openbox
doggos	doggos
sql	sql stuff
nice boats	nice boats
cats	cats
do it yourself	diy
technology	technology
asia	asia
astronomy	astronomy
math	math
food	food
history	history
cellphones	chellphones
rice	rice
hot-dog	hot-dog
funny	funny
underwater	underwater
rice fields	rice fields
south	south
economy	economy
culture	culture
video codecs	video codecs
water	water
wines	wines
chocolate	chocolate
transportation	tra
auto	auto
micro	micro
usb	usb
party	party
faces	faces
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3194.dat                                                                                            0000600 0004000 0002000 00000000123 13474647262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	100
2	200
3	300
4	400
5	500
6	600
7	700
8	800
9	900
10	1000
11	1100
12	1200
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3221.dat                                                                                            0000600 0004000 0002000 00000000447 13474647262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	Lord Nibbler
Lord Nibbler	Turanga Leela
Headless Body of Agnew	Boxy
Brain Slugs	Hermes Conrad
The Crushinator	Father Changstein-El-Gamal
Chanukah Zombie	John Zoidberg
Lord Nibbler	Brain Slugs
Amy Wong	Antonio Calculon
Antonio Calculon	Kif Kroker
Lord Nibbler	Antonio Calculon
\.


                                                                                                                                                                                                                         3214.dat                                                                                            0000600 0004000 0002000 00000000320 13474647262 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1	1
Brain Slugs	1	1
Philip J. Fry	2	1
Brain Slugs	2	1
Antonio Calculon	2	1
Philip J. Fry	3	-1
Antonio Calculon	3	-1
Philip J. Fry	7	-1
Antonio Calculon	5	1
Brain Slugs	6	-1
Brain Slugs	8	1
\.


                                                                                                                                                                                                                                                                                                                3210.dat                                                                                            0000600 0004000 0002000 00000000325 13474647262 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1	-1
Brain Slugs	1	-1
Philip J. Fry	2	-1
Brain Slugs	2	1
Antonio Calculon	2	-1
Philip J. Fry	3	-1
Antonio Calculon	3	-1
Philip J. Fry	7	-1
Antonio Calculon	5	-1
Brain Slugs	6	-1
Brain Slugs	8	1
\.


                                                                                                                                                                                                                                                                                                           3219.dat                                                                                            0000600 0004000 0002000 00000000260 13474647262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1
The Crushinator	2
The Crushinator	3
Philip J. Fry	4
The Crushinator	5
Philip J. Fry	6
Kif Kroker	7
Bender	8
Kif Kroker	9
Bender	10
Kif Kroker	11
Bender	12
\.


                                                                                                                                                                                                                                                                                                                                                3223.dat                                                                                            0000600 0004000 0002000 00000000732 13474647262 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1
Philip J. Fry	2
Philip J. Fry	3
The Crushinator	4
The Crushinator	5
The Crushinator	6
The Crushinator	7
The Crushinator	8
The Crushinator	9
Bender	10
Bender	11
Bender	12
Bender	13
Bender	14
Bender	15
Turanga Leela	16
Turanga Leela	17
Turanga Leela	18
Turanga Leela	19
Turanga Leela	20
Amy Wong	21
Amy Wong	22
Amy Wong	23
Amy Wong	24
Amy Wong	25
Amy Wong	26
Amy Wong	27
Amy Wong	28
Zapp Brannigan	29
Zapp Brannigan	30
Zapp Brannigan	31
Zapp Brannigan	32
\.


                                      3208.dat                                                                                            0000600 0004000 0002000 00000000164 13474647262 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	linux
Philip J. Fry	food
Bender	technology
Bender	culture
Bender	wines
Bender	water
Bender	party
\.


                                                                                                                                                                                                                                                                                                                                                                                                            3206.dat                                                                                            0000600 0004000 0002000 00000001254 13474647262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Amy Wong	linux
Amy Wong	futurama
Amy Wong	GNU
Amy Wong	Openbox
Hubert J. Farnsworth	doggos
Hubert J. Farnsworth	sql
Hubert J. Farnsworth	nice boats
Hubert J. Farnsworth	cats
Hubert J. Farnsworth	do it yourself
Hubert J. Farnsworth	technology
Zapp Brannigan	asia
Zapp Brannigan	astronomy
Zapp Brannigan	math
Zapp Brannigan	food
Zapp Brannigan	history
Zapp Brannigan	cellphones
Zapp Brannigan	rice
Calculon	hot-dog
Calculon	funny
Calculon	underwater
Calculon	rice fields
Calculon	south
Calculon	economy
Calculon	culture
Calculon	video codecs
Bender	water
Bender	wines
Bender	chocolate
Bender	transportation
Bender	auto
Bender	micro
Kif Kroker	usb
Kif Kroker	party
Kif Kroker	faces
\.


                                                                                                                                                                                                                                                                                                                                                    3218.dat                                                                                            0000600 0004000 0002000 00000002436 13474647262 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Chanukah Zombie	belwether                                                                                                                                                                                               
Chanukah Zombie	well-rounded                                                                                                                                                                                            
Chanukah Zombie	best link                                                                                                                                                                                               
Antonio Calculon	best comment                                                                                                                                                                                            
Antonio Calculon	combo linker                                                                                                                                                                                            
Antonio Calculon	combo commenter                                                                                                                                                                                         
\.


                                                                                                                                                                                                                                  3217.dat                                                                                            0000600 0004000 0002000 00000000412 13474647262 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1
Philip J. Fry	2
Philip J. Fry	3
Philip J. Fry	4
Philip J. Fry	5
Turanga Leela	6
Turanga Leela	7
Turanga Leela	8
Turanga Leela	9
Turanga Leela	10
Zapp Brannigan	11
Zapp Brannigan	12
Zapp Brannigan	13
Zapp Brannigan	14
Kif Kroker	15
Kif Kroker	16
\.


                                                                                                                                                                                                                                                      3213.dat                                                                                            0000600 0004000 0002000 00000000444 13474647262 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1
Antonio Calculon	2
Antonio Calculon	3
Amy Wong	4
Philip J. Fry	5
Antonio Calculon	6
Turanga Leela	7
Bender	8
Bender	9
Turanga Leela	10
Zapp Brannigan	11
Hubert J. Farnsworth	12
Zapp Brannigan	13
Hubert J. Farnsworth	14
Kif Kroker	15
Bender	16
Kif Kroker	17
Kif Kroker	18
\.


                                                                                                                                                                                                                            3215.dat                                                                                            0000600 0004000 0002000 00000000127 13474647262 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Lord Nibbler	5
Zapp Brannigan	9
Zapp Brannigan	1
John Zoidberg	3
John Zoidberg	13
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                         3211.dat                                                                                            0000600 0004000 0002000 00000000131 13474647262 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Lord Nibbler	11
Zapp Brannigan	12
Zapp Brannigan	13
John Zoidberg	8
John Zoidberg	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                       3207.dat                                                                                            0000600 0004000 0002000 00000001713 13474647262 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Amy Wong	linux
Amy Wong	futurama
Amy Wong	GNU
Hermes Conrad	Openbox
Boxy	Openbox
Amy Wong	Openbox
Philip J. Fry	Openbox
Hubert J. Farnsworth	doggos
Hubert J. Farnsworth	sql
Hubert J. Farnsworth	nice boats
Hermes Conrad	cats
Hubert J. Farnsworth	cats
Boxy	cats
Philip J. Fry	cats
Hubert J. Farnsworth	do it yourself
Hubert J. Farnsworth	technology
Zapp Brannigan	asia
Zapp Brannigan	astronomy
Zapp Brannigan	math
Zapp Brannigan	food
Boxy	food
Hermes Conrad	food
Philip J. Fry	food
Zapp Brannigan	history
Zapp Brannigan	cellphones
Zapp Brannigan	rice
Calculon	hot-dog
Calculon	funny
Hermes Conrad	funny
Philip J. Fry	funny
Turanga Leela	funny
Calculon	underwater
Calculon	rice fields
Calculon	south
Calculon	economy
Calculon	culture
Calculon	video codecs
Bender	water
Hermes Conrad	wines
Bender	wines
Boxy	wines
Bender	chocolate
Bender	transportation
Bender	auto
Bender	micro
Kif Kroker	usb
Hermes Conrad	party
Kif Kroker	party
Philip J. Fry	party
Turanga Leela	faces
\.


                                                     3220.dat                                                                                            0000600 0004000 0002000 00000000344 13474647262 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Headless Body of Agnew	1
Headless Body of Agnew	2
Headless Body of Agnew	3
Headless Body of Agnew	4
John Zoidberg	5
John Zoidberg	6
John Zoidberg	7
John Zoidberg	8
Brain Spawn	9
Brain Spawn	10
Brain Spawn	11
Brain Spawn	12
\.


                                                                                                                                                                                                                                                                                            3224.dat                                                                                            0000600 0004000 0002000 00000001206 13474647262 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Hermes Conrad	1
Hermes Conrad	2
Hermes Conrad	3
Hermes Conrad	4
Hermes Conrad	5
Kif Kroker	6
Kif Kroker	7
Kif Kroker	8
Chanukah Zombie	9
Chanukah Zombie	10
Chanukah Zombie	11
Chanukah Zombie	12
Father Changstein-El-Gamal	13
Father Changstein-El-Gamal	14
Father Changstein-El-Gamal	15
Father Changstein-El-Gamal	16
Father Changstein-El-Gamal	17
John Zoidberg	18
John Zoidberg	19
John Zoidberg	20
John Zoidberg	21
John Zoidberg	22
Bender	23
Bender	24
Bender	25
Headless Body of Agnew	26
Headless Body of Agnew	27
Headless Body of Agnew	28
Headless Body of Agnew	29
Headless Body of Agnew	30
Headless Body of Agnew	31
Headless Body of Agnew	32
\.


                                                                                                                                                                                                                                                                                                                                                                                          3216.dat                                                                                            0000600 0004000 0002000 00000000164 13474647262 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	1	1
Philip J. Fry	2	1
Philip J. Fry	3	2
Philip J. Fry	4	3
Amy Wong	1	4
Amy Wong	2	2
Amy Wong	3	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                            3212.dat                                                                                            0000600 0004000 0002000 00000000151 13474647262 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Bender	1	3
John Zoidberg	2	4
Bender	3	5
Philip J. Fry	4	3
John Zoidberg	1	4
Amy Wong	2	2
Bender	3	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       3222.dat                                                                                            0000600 0004000 0002000 00000000327 13474647262 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Chanukah Zombie	Kif Kroker
Chanukah Zombie	Calculon
Boxy	Chanukah Zombie
Lord Nibbler	Chanukah Zombie
Kif Kroker	Calculon
Chanukah Zombie	Lord Nibbler
Father Changstein-El-Gamal	Chanukah Zombie
Kif Kroker	Boxy
\.


                                                                                                                                                                                                                                                                                                         3209.dat                                                                                            0000600 0004000 0002000 00000000332 13474647262 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	linux
Philip J. Fry	GNU
Philip J. Fry	food
Philip J. Fry	funny
Antonio Calculon	culture
Antonio Calculon	history
Antonio Calculon	asia
Antonio Calculon	hot-dog
Bender	wines
Bender	party
Bender	funny
\.


                                                                                                                                                                                                                                                                                                      3190.dat                                                                                            0000600 0004000 0002000 00000003407 13474647262 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Philip J. Fry	Philip	some spacial user	philip@gmail.com	100	23	2011-01-01 00:00:00	comun
Turanga Leela	leela	some spacial user	leela@gmail.com	123	11	2011-02-03 00:00:00	comun
Bender	Bender	some spacial user	bender@gmail.com	3	99	2015-01-01 00:00:00	premium
Amy Wong	Amy	some spacial user	amy@gmail.com	187	33	2010-01-01 00:00:00	comun
Hermes Conrad	hermes	some spacial user	hermes@gmail.com	87	22	2015-01-01 00:00:00	comun
Hubert J. Farnsworth	Professor	some spacial user	prof@gmail.com	33	22	2012-01-01 00:00:00	comun
John Zoidberg	Zoidberg	some spacial user	zoidberg@gmail.com	1	23	2012-01-01 00:00:00	comun
Lord Nibbler	lord_nibble	some spacial user	nibble@gmail.com	100	99	2015-01-01 00:00:00	comun
Zapp Brannigan	Zapp	some spacial user	zapp@gmail.com	1009	99	2012-01-01 00:00:00	premium
Kif Kroker	Kif	some spacial user	Kif@gmail.com	120	0	2010-01-01 00:00:00	comun
Mom	Mom	some spacial user	mom@gmail.com	999	999	2000-01-01 00:00:00	premium
Headless Body of Agnew	Agnew	some spacial user	agnew@gmail.com	1	2	2002-01-01 00:00:00	comun
Boxy	Boxy	some spacial user	boxy@gmail.com	100	2	2012-01-01 00:00:00	comun
Brain Slugs	slugs	some spacial user	slugs@gmail.com	100	8	2011-01-01 00:00:00	comun
Brain Spawn	spawn	some spacial user	spawn@gmail.com	1	23	2000-01-01 00:00:00	comun
Calculon	calculon	some spacial user	calculon@gmail.com	1	3	2013-01-01 00:00:00	premium
Antonio Calculon	antonio	some spacial user	antonio@gmail.com	12	32	2012-01-01 00:00:00	premium
The Crushinator	calculon	Robot daughter of human hydroponic farmer on the Moon	crushinator@gmail.com	18	32	2013-01-01 00:00:00	premium
Father Changstein-El-Gamal	chang	some spacial user	chang@gmail.com	22	22	2012-01-01 00:00:00	premium
Chanukah Zombie	chanukah	some spacial user	chanuka@gmail.com	99	88	2016-01-01 00:00:00	comun
\.


                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000137201 13474647262 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-1.pgdg18.04+1)
-- Dumped by pg_dump version 11.2 (Ubuntu 11.2-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE tp3;
--
-- Name: tp3; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE tp3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE tp3 OWNER TO postgres;

\connect tp3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: aporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aporte (
    id_aporte integer NOT NULL,
    texto text,
    karma bigint,
    fecha timestamp without time zone
);


ALTER TABLE public.aporte OWNER TO postgres;

--
-- Name: aporte_referencia_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aporte_referencia_link (
    id_aporte integer NOT NULL,
    direccion_web character varying(253)
);


ALTER TABLE public.aporte_referencia_link OWNER TO postgres;

--
-- Name: comment_responde_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment_responde_comment (
    id_comentario integer NOT NULL,
    id_comentario_respondido integer NOT NULL
);


ALTER TABLE public.comment_responde_comment OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id_comments integer NOT NULL,
    id_aporte integer
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: mensajes_privados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mensajes_privados (
    id_mensaje integer NOT NULL,
    tema character(200),
    texto text
);


ALTER TABLE public.mensajes_privados OWNER TO postgres;

--
-- Name: multireddit_agrupa_subreddit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.multireddit_agrupa_subreddit (
    username character varying(100) NOT NULL,
    nombre_multireddit character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);


ALTER TABLE public.multireddit_agrupa_subreddit OWNER TO postgres;

--
-- Name: multireddits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.multireddits (
    nombre_multireddit character varying(100) NOT NULL,
    username character varying(100) NOT NULL,
    fecha_creacion_multireddit timestamp without time zone
);


ALTER TABLE public.multireddits OWNER TO postgres;

--
-- Name: post_colecciona_comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_colecciona_comentario (
    id_post integer NOT NULL,
    id_comentario integer NOT NULL
);


ALTER TABLE public.post_colecciona_comentario OWNER TO postgres;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id_posts integer NOT NULL,
    id_aporte integer,
    titulo character varying(100)
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: premios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.premios (
    nombre_premio character(200) NOT NULL,
    descripcion_premio text
);


ALTER TABLE public.premios OWNER TO postgres;

--
-- Name: reglas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reglas (
    id_regla integer NOT NULL,
    nombre_subreddit character varying(100) NOT NULL,
    descripcion_regla text
);


ALTER TABLE public.reglas OWNER TO postgres;

--
-- Name: subreddit_contiene_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subreddit_contiene_post (
    nombre_subreddit character varying(100) NOT NULL,
    id_post integer NOT NULL
);


ALTER TABLE public.subreddit_contiene_post OWNER TO postgres;

--
-- Name: subreddit_recomienda_subreddit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subreddit_recomienda_subreddit (
    nombre_subreddit character varying(100) NOT NULL,
    nombre_subreddit_recomendado character varying(100) NOT NULL
);


ALTER TABLE public.subreddit_recomienda_subreddit OWNER TO postgres;

--
-- Name: subreddit_regulador_por_regla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subreddit_regulador_por_regla (
    nombre_subreddit character varying(100) NOT NULL,
    id_regla integer NOT NULL
);


ALTER TABLE public.subreddit_regulador_por_regla OWNER TO postgres;

--
-- Name: subreddits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subreddits (
    nombre_subreddit character varying(100) NOT NULL,
    descripcion_subreddit text
);


ALTER TABLE public.subreddits OWNER TO postgres;

--
-- Name: transferencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transferencias (
    id_transferencia integer NOT NULL,
    cant_monedas integer
);


ALTER TABLE public.transferencias OWNER TO postgres;

--
-- Name: usuario_bloquea_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_bloquea_usuario (
    username character varying(100) NOT NULL,
    username_bloqueado character varying(100) NOT NULL
);


ALTER TABLE public.usuario_bloquea_usuario OWNER TO postgres;

--
-- Name: usuario_califica_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_califica_comment (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL,
    voto integer
);


ALTER TABLE public.usuario_califica_comment OWNER TO postgres;

--
-- Name: usuario_califica_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_califica_post (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL,
    voto integer
);


ALTER TABLE public.usuario_califica_post OWNER TO postgres;

--
-- Name: usuario_emite_transferencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_emite_transferencia (
    username character varying(100) NOT NULL,
    id_transferencia integer NOT NULL
);


ALTER TABLE public.usuario_emite_transferencia OWNER TO postgres;

--
-- Name: usuario_envia_mensaje_privado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_envia_mensaje_privado (
    username character varying(100) NOT NULL,
    id_mensaje integer NOT NULL
);


ALTER TABLE public.usuario_envia_mensaje_privado OWNER TO postgres;

--
-- Name: usuario_esta_bloqueado_subreddit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_esta_bloqueado_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);


ALTER TABLE public.usuario_esta_bloqueado_subreddit OWNER TO postgres;

--
-- Name: usuario_establece_subreddit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_establece_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);


ALTER TABLE public.usuario_establece_subreddit OWNER TO postgres;

--
-- Name: usuario_gana_premio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_gana_premio (
    username character varying(100) NOT NULL,
    nombre_premio character(200) NOT NULL
);


ALTER TABLE public.usuario_gana_premio OWNER TO postgres;

--
-- Name: usuario_genera_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_genera_comment (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL
);


ALTER TABLE public.usuario_genera_comment OWNER TO postgres;

--
-- Name: usuario_genera_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_genera_post (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL
);


ALTER TABLE public.usuario_genera_post OWNER TO postgres;

--
-- Name: usuario_guarda_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_guarda_comment (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL
);


ALTER TABLE public.usuario_guarda_comment OWNER TO postgres;

--
-- Name: usuario_guarda_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_guarda_post (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL
);


ALTER TABLE public.usuario_guarda_post OWNER TO postgres;

--
-- Name: usuario_modera_subreddit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_modera_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);


ALTER TABLE public.usuario_modera_subreddit OWNER TO postgres;

--
-- Name: usuario_percibe_transferencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_percibe_transferencia (
    username character varying(100) NOT NULL,
    id_transferencia integer NOT NULL
);


ALTER TABLE public.usuario_percibe_transferencia OWNER TO postgres;

--
-- Name: usuario_recibe_mensaje_privado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_recibe_mensaje_privado (
    username character varying(100) NOT NULL,
    id_mensaje integer NOT NULL
);


ALTER TABLE public.usuario_recibe_mensaje_privado OWNER TO postgres;

--
-- Name: usuario_reporta_comment_segun_regla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_reporta_comment_segun_regla (
    username character varying(100) NOT NULL,
    id_comment integer NOT NULL,
    id_regla integer NOT NULL
);


ALTER TABLE public.usuario_reporta_comment_segun_regla OWNER TO postgres;

--
-- Name: usuario_reporta_post_segun_regla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_reporta_post_segun_regla (
    username character varying(100) NOT NULL,
    id_post integer NOT NULL,
    id_regla integer NOT NULL
);


ALTER TABLE public.usuario_reporta_post_segun_regla OWNER TO postgres;

--
-- Name: usuario_sigue_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_sigue_usuario (
    username character varying(100) NOT NULL,
    username_seguido character varying(100) NOT NULL
);


ALTER TABLE public.usuario_sigue_usuario OWNER TO postgres;

--
-- Name: usuario_suscrito_subreddit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_suscrito_subreddit (
    username character varying(100) NOT NULL,
    nombre_subreddit character varying(100) NOT NULL
);


ALTER TABLE public.usuario_suscrito_subreddit OWNER TO postgres;

--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    username character varying(100) NOT NULL,
    display_name character varying(100),
    about text,
    email character varying(320),
    coins integer,
    karma bigint,
    cake_day timestamp without time zone,
    tipo character varying(10)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Data for Name: aporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aporte (id_aporte, texto, karma, fecha) FROM stdin;
\.
COPY public.aporte (id_aporte, texto, karma, fecha) FROM '$$PATH$$/3191.dat';

--
-- Data for Name: aporte_referencia_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aporte_referencia_link (id_aporte, direccion_web) FROM stdin;
\.
COPY public.aporte_referencia_link (id_aporte, direccion_web) FROM '$$PATH$$/3205.dat';

--
-- Data for Name: comment_responde_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment_responde_comment (id_comentario, id_comentario_respondido) FROM stdin;
\.
COPY public.comment_responde_comment (id_comentario, id_comentario_respondido) FROM '$$PATH$$/3204.dat';

--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id_comments, id_aporte) FROM stdin;
\.
COPY public.comments (id_comments, id_aporte) FROM '$$PATH$$/3198.dat';

--
-- Data for Name: mensajes_privados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mensajes_privados (id_mensaje, tema, texto) FROM stdin;
\.
COPY public.mensajes_privados (id_mensaje, tema, texto) FROM '$$PATH$$/3192.dat';

--
-- Data for Name: multireddit_agrupa_subreddit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.multireddit_agrupa_subreddit (username, nombre_multireddit, nombre_subreddit) FROM stdin;
\.
COPY public.multireddit_agrupa_subreddit (username, nombre_multireddit, nombre_subreddit) FROM '$$PATH$$/3199.dat';

--
-- Data for Name: multireddits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.multireddits (nombre_multireddit, username, fecha_creacion_multireddit) FROM stdin;
\.
COPY public.multireddits (nombre_multireddit, username, fecha_creacion_multireddit) FROM '$$PATH$$/3195.dat';

--
-- Data for Name: post_colecciona_comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_colecciona_comentario (id_post, id_comentario) FROM stdin;
\.
COPY public.post_colecciona_comentario (id_post, id_comentario) FROM '$$PATH$$/3203.dat';

--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id_posts, id_aporte, titulo) FROM stdin;
\.
COPY public.posts (id_posts, id_aporte, titulo) FROM '$$PATH$$/3197.dat';

--
-- Data for Name: premios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.premios (nombre_premio, descripcion_premio) FROM stdin;
\.
COPY public.premios (nombre_premio, descripcion_premio) FROM '$$PATH$$/3193.dat';

--
-- Data for Name: reglas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reglas (id_regla, nombre_subreddit, descripcion_regla) FROM stdin;
\.
COPY public.reglas (id_regla, nombre_subreddit, descripcion_regla) FROM '$$PATH$$/3196.dat';

--
-- Data for Name: subreddit_contiene_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subreddit_contiene_post (nombre_subreddit, id_post) FROM stdin;
\.
COPY public.subreddit_contiene_post (nombre_subreddit, id_post) FROM '$$PATH$$/3202.dat';

--
-- Data for Name: subreddit_recomienda_subreddit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subreddit_recomienda_subreddit (nombre_subreddit, nombre_subreddit_recomendado) FROM stdin;
\.
COPY public.subreddit_recomienda_subreddit (nombre_subreddit, nombre_subreddit_recomendado) FROM '$$PATH$$/3200.dat';

--
-- Data for Name: subreddit_regulador_por_regla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subreddit_regulador_por_regla (nombre_subreddit, id_regla) FROM stdin;
\.
COPY public.subreddit_regulador_por_regla (nombre_subreddit, id_regla) FROM '$$PATH$$/3201.dat';

--
-- Data for Name: subreddits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subreddits (nombre_subreddit, descripcion_subreddit) FROM stdin;
\.
COPY public.subreddits (nombre_subreddit, descripcion_subreddit) FROM '$$PATH$$/3189.dat';

--
-- Data for Name: transferencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transferencias (id_transferencia, cant_monedas) FROM stdin;
\.
COPY public.transferencias (id_transferencia, cant_monedas) FROM '$$PATH$$/3194.dat';

--
-- Data for Name: usuario_bloquea_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_bloquea_usuario (username, username_bloqueado) FROM stdin;
\.
COPY public.usuario_bloquea_usuario (username, username_bloqueado) FROM '$$PATH$$/3221.dat';

--
-- Data for Name: usuario_califica_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_califica_comment (username, id_comment, voto) FROM stdin;
\.
COPY public.usuario_califica_comment (username, id_comment, voto) FROM '$$PATH$$/3214.dat';

--
-- Data for Name: usuario_califica_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_califica_post (username, id_post, voto) FROM stdin;
\.
COPY public.usuario_califica_post (username, id_post, voto) FROM '$$PATH$$/3210.dat';

--
-- Data for Name: usuario_emite_transferencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_emite_transferencia (username, id_transferencia) FROM stdin;
\.
COPY public.usuario_emite_transferencia (username, id_transferencia) FROM '$$PATH$$/3219.dat';

--
-- Data for Name: usuario_envia_mensaje_privado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_envia_mensaje_privado (username, id_mensaje) FROM stdin;
\.
COPY public.usuario_envia_mensaje_privado (username, id_mensaje) FROM '$$PATH$$/3223.dat';

--
-- Data for Name: usuario_esta_bloqueado_subreddit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_esta_bloqueado_subreddit (username, nombre_subreddit) FROM stdin;
\.
COPY public.usuario_esta_bloqueado_subreddit (username, nombre_subreddit) FROM '$$PATH$$/3208.dat';

--
-- Data for Name: usuario_establece_subreddit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_establece_subreddit (username, nombre_subreddit) FROM stdin;
\.
COPY public.usuario_establece_subreddit (username, nombre_subreddit) FROM '$$PATH$$/3206.dat';

--
-- Data for Name: usuario_gana_premio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_gana_premio (username, nombre_premio) FROM stdin;
\.
COPY public.usuario_gana_premio (username, nombre_premio) FROM '$$PATH$$/3218.dat';

--
-- Data for Name: usuario_genera_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_genera_comment (username, id_comment) FROM stdin;
\.
COPY public.usuario_genera_comment (username, id_comment) FROM '$$PATH$$/3217.dat';

--
-- Data for Name: usuario_genera_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_genera_post (username, id_post) FROM stdin;
\.
COPY public.usuario_genera_post (username, id_post) FROM '$$PATH$$/3213.dat';

--
-- Data for Name: usuario_guarda_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_guarda_comment (username, id_comment) FROM stdin;
\.
COPY public.usuario_guarda_comment (username, id_comment) FROM '$$PATH$$/3215.dat';

--
-- Data for Name: usuario_guarda_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_guarda_post (username, id_post) FROM stdin;
\.
COPY public.usuario_guarda_post (username, id_post) FROM '$$PATH$$/3211.dat';

--
-- Data for Name: usuario_modera_subreddit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_modera_subreddit (username, nombre_subreddit) FROM stdin;
\.
COPY public.usuario_modera_subreddit (username, nombre_subreddit) FROM '$$PATH$$/3207.dat';

--
-- Data for Name: usuario_percibe_transferencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_percibe_transferencia (username, id_transferencia) FROM stdin;
\.
COPY public.usuario_percibe_transferencia (username, id_transferencia) FROM '$$PATH$$/3220.dat';

--
-- Data for Name: usuario_recibe_mensaje_privado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_recibe_mensaje_privado (username, id_mensaje) FROM stdin;
\.
COPY public.usuario_recibe_mensaje_privado (username, id_mensaje) FROM '$$PATH$$/3224.dat';

--
-- Data for Name: usuario_reporta_comment_segun_regla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_reporta_comment_segun_regla (username, id_comment, id_regla) FROM stdin;
\.
COPY public.usuario_reporta_comment_segun_regla (username, id_comment, id_regla) FROM '$$PATH$$/3216.dat';

--
-- Data for Name: usuario_reporta_post_segun_regla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_reporta_post_segun_regla (username, id_post, id_regla) FROM stdin;
\.
COPY public.usuario_reporta_post_segun_regla (username, id_post, id_regla) FROM '$$PATH$$/3212.dat';

--
-- Data for Name: usuario_sigue_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_sigue_usuario (username, username_seguido) FROM stdin;
\.
COPY public.usuario_sigue_usuario (username, username_seguido) FROM '$$PATH$$/3222.dat';

--
-- Data for Name: usuario_suscrito_subreddit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_suscrito_subreddit (username, nombre_subreddit) FROM stdin;
\.
COPY public.usuario_suscrito_subreddit (username, nombre_subreddit) FROM '$$PATH$$/3209.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (username, display_name, about, email, coins, karma, cake_day, tipo) FROM stdin;
\.
COPY public.usuarios (username, display_name, about, email, coins, karma, cake_day, tipo) FROM '$$PATH$$/3190.dat';

--
-- Name: multireddits multireddits_nombre_multireddit_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddits
    ADD CONSTRAINT multireddits_nombre_multireddit_key UNIQUE (nombre_multireddit);


--
-- Name: aporte pk_aporte; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aporte
    ADD CONSTRAINT pk_aporte PRIMARY KEY (id_aporte);


--
-- Name: aporte_referencia_link pk_aporte_referencia_link; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aporte_referencia_link
    ADD CONSTRAINT pk_aporte_referencia_link PRIMARY KEY (id_aporte);


--
-- Name: comment_responde_comment pk_comment_responde_comment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_responde_comment
    ADD CONSTRAINT pk_comment_responde_comment PRIMARY KEY (id_comentario, id_comentario_respondido);


--
-- Name: comments pk_comments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT pk_comments PRIMARY KEY (id_comments);


--
-- Name: mensajes_privados pk_mensajes_privados; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mensajes_privados
    ADD CONSTRAINT pk_mensajes_privados PRIMARY KEY (id_mensaje);


--
-- Name: multireddit_agrupa_subreddit pk_multireddit_agrupa_subreddit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT pk_multireddit_agrupa_subreddit PRIMARY KEY (username, nombre_multireddit, nombre_subreddit);


--
-- Name: multireddits pk_multireddits; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddits
    ADD CONSTRAINT pk_multireddits PRIMARY KEY (username, nombre_multireddit);


--
-- Name: post_colecciona_comentario pk_post_colecciona_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_colecciona_comentario
    ADD CONSTRAINT pk_post_colecciona_comentario PRIMARY KEY (id_post, id_comentario);


--
-- Name: posts pk_posts; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT pk_posts PRIMARY KEY (id_posts);


--
-- Name: premios pk_premios; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premios
    ADD CONSTRAINT pk_premios PRIMARY KEY (nombre_premio);


--
-- Name: reglas pk_reglas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reglas
    ADD CONSTRAINT pk_reglas PRIMARY KEY (nombre_subreddit, id_regla);


--
-- Name: subreddit_contiene_post pk_subreddit_contiene_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_contiene_post
    ADD CONSTRAINT pk_subreddit_contiene_post PRIMARY KEY (nombre_subreddit, id_post);


--
-- Name: subreddit_recomienda_subreddit pk_subreddit_recomienda_subreddit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_recomienda_subreddit
    ADD CONSTRAINT pk_subreddit_recomienda_subreddit PRIMARY KEY (nombre_subreddit, nombre_subreddit_recomendado);


--
-- Name: subreddit_regulador_por_regla pk_subreddit_regulador_por_regla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_regulador_por_regla
    ADD CONSTRAINT pk_subreddit_regulador_por_regla PRIMARY KEY (nombre_subreddit, id_regla);


--
-- Name: subreddits pk_subreddits; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddits
    ADD CONSTRAINT pk_subreddits PRIMARY KEY (nombre_subreddit);


--
-- Name: transferencias pk_transferencias; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transferencias
    ADD CONSTRAINT pk_transferencias PRIMARY KEY (id_transferencia);


--
-- Name: usuario_bloquea_usuario pk_usuario_bloquea_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_bloquea_usuario
    ADD CONSTRAINT pk_usuario_bloquea_usuario PRIMARY KEY (username, username_bloqueado);


--
-- Name: usuario_califica_comment pk_usuario_califica_comment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_califica_comment
    ADD CONSTRAINT pk_usuario_califica_comment PRIMARY KEY (username, id_comment);


--
-- Name: usuario_califica_post pk_usuario_califica_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_califica_post
    ADD CONSTRAINT pk_usuario_califica_post PRIMARY KEY (username, id_post);


--
-- Name: usuario_emite_transferencia pk_usuario_emite_transferencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_emite_transferencia
    ADD CONSTRAINT pk_usuario_emite_transferencia PRIMARY KEY (username, id_transferencia);


--
-- Name: usuario_envia_mensaje_privado pk_usuario_envia_mensaje_privado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_envia_mensaje_privado
    ADD CONSTRAINT pk_usuario_envia_mensaje_privado PRIMARY KEY (username, id_mensaje);


--
-- Name: usuario_esta_bloqueado_subreddit pk_usuario_esta_bloqueado_subreddit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit
    ADD CONSTRAINT pk_usuario_esta_bloqueado_subreddit PRIMARY KEY (username, nombre_subreddit);


--
-- Name: usuario_establece_subreddit pk_usuario_establece_subreddit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_establece_subreddit
    ADD CONSTRAINT pk_usuario_establece_subreddit PRIMARY KEY (username, nombre_subreddit);


--
-- Name: usuario_gana_premio pk_usuario_gana_premio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_gana_premio
    ADD CONSTRAINT pk_usuario_gana_premio PRIMARY KEY (username, nombre_premio);


--
-- Name: usuario_genera_comment pk_usuario_genera_comment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_genera_comment
    ADD CONSTRAINT pk_usuario_genera_comment PRIMARY KEY (username, id_comment);


--
-- Name: usuario_genera_post pk_usuario_genera_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_genera_post
    ADD CONSTRAINT pk_usuario_genera_post PRIMARY KEY (username, id_post);


--
-- Name: usuario_guarda_comment pk_usuario_guarda_comment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_guarda_comment
    ADD CONSTRAINT pk_usuario_guarda_comment PRIMARY KEY (username, id_comment);


--
-- Name: usuario_guarda_post pk_usuario_guarda_post; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_guarda_post
    ADD CONSTRAINT pk_usuario_guarda_post PRIMARY KEY (username, id_post);


--
-- Name: usuario_modera_subreddit pk_usuario_modera_subreddit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_modera_subreddit
    ADD CONSTRAINT pk_usuario_modera_subreddit PRIMARY KEY (username, nombre_subreddit);


--
-- Name: usuario_percibe_transferencia pk_usuario_percibe_transferencia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_percibe_transferencia
    ADD CONSTRAINT pk_usuario_percibe_transferencia PRIMARY KEY (username, id_transferencia);


--
-- Name: usuario_recibe_mensaje_privado pk_usuario_recibe_mensaje_privado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_recibe_mensaje_privado
    ADD CONSTRAINT pk_usuario_recibe_mensaje_privado PRIMARY KEY (username, id_mensaje);


--
-- Name: usuario_reporta_comment_segun_regla pk_usuario_reporta_comment_segun_regla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT pk_usuario_reporta_comment_segun_regla PRIMARY KEY (username, id_comment, id_regla);


--
-- Name: usuario_reporta_post_segun_regla pk_usuario_reporta_post_segun_regla; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT pk_usuario_reporta_post_segun_regla PRIMARY KEY (username, id_post, id_regla);


--
-- Name: usuario_sigue_usuario pk_usuario_sigue_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_sigue_usuario
    ADD CONSTRAINT pk_usuario_sigue_usuario PRIMARY KEY (username, username_seguido);


--
-- Name: usuario_suscrito_subreddit pk_usuario_suscrito_subreddit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_suscrito_subreddit
    ADD CONSTRAINT pk_usuario_suscrito_subreddit PRIMARY KEY (username, nombre_subreddit);


--
-- Name: usuarios pk_usuarios; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (username);


--
-- Name: reglas reglas_id_regla_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reglas
    ADD CONSTRAINT reglas_id_regla_key UNIQUE (id_regla);


--
-- Name: aporte_referencia_link fk_aporte_referencia_link_aportes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aporte_referencia_link
    ADD CONSTRAINT fk_aporte_referencia_link_aportes FOREIGN KEY (id_aporte) REFERENCES public.aporte(id_aporte);


--
-- Name: comment_responde_comment fk_comment_responde_comment_comments; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_responde_comment
    ADD CONSTRAINT fk_comment_responde_comment_comments FOREIGN KEY (id_comentario) REFERENCES public.comments(id_comments);


--
-- Name: comment_responde_comment fk_comment_responde_comment_comments_respondido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_responde_comment
    ADD CONSTRAINT fk_comment_responde_comment_comments_respondido FOREIGN KEY (id_comentario_respondido) REFERENCES public.comments(id_comments);


--
-- Name: comments fk_comments_aportes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_comments_aportes FOREIGN KEY (id_aporte) REFERENCES public.aporte(id_aporte);


--
-- Name: multireddit_agrupa_subreddit fk_multireddit_agrupa_subreddit_multireddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT fk_multireddit_agrupa_subreddit_multireddits FOREIGN KEY (nombre_multireddit) REFERENCES public.multireddits(nombre_multireddit);


--
-- Name: multireddit_agrupa_subreddit fk_multireddit_agrupa_subreddit_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT fk_multireddit_agrupa_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: multireddit_agrupa_subreddit fk_multireddit_agrupa_subreddit_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddit_agrupa_subreddit
    ADD CONSTRAINT fk_multireddit_agrupa_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: multireddits fk_multireddits_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.multireddits
    ADD CONSTRAINT fk_multireddits_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: post_colecciona_comentario fk_post_colecciona_comentario_comments; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_colecciona_comentario
    ADD CONSTRAINT fk_post_colecciona_comentario_comments FOREIGN KEY (id_comentario) REFERENCES public.comments(id_comments);


--
-- Name: post_colecciona_comentario fk_post_colecciona_comentario_posts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_colecciona_comentario
    ADD CONSTRAINT fk_post_colecciona_comentario_posts FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);


--
-- Name: posts fk_posts_aportes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_posts_aportes FOREIGN KEY (id_aporte) REFERENCES public.aporte(id_aporte);


--
-- Name: reglas fk_reglas_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reglas
    ADD CONSTRAINT fk_reglas_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: subreddit_contiene_post fk_subreddit_contiene_post_posts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_contiene_post
    ADD CONSTRAINT fk_subreddit_contiene_post_posts FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);


--
-- Name: subreddit_contiene_post fk_subreddit_contiene_post_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_contiene_post
    ADD CONSTRAINT fk_subreddit_contiene_post_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: subreddit_recomienda_subreddit fk_subreddit_recomienda_subreddit_recomendado_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_recomienda_subreddit
    ADD CONSTRAINT fk_subreddit_recomienda_subreddit_recomendado_subreddits FOREIGN KEY (nombre_subreddit_recomendado) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: subreddit_recomienda_subreddit fk_subreddit_recomienda_subreddit_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_recomienda_subreddit
    ADD CONSTRAINT fk_subreddit_recomienda_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: subreddit_regulador_por_regla fk_subreddit_regulador_por_regla_reglas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_regulador_por_regla
    ADD CONSTRAINT fk_subreddit_regulador_por_regla_reglas FOREIGN KEY (id_regla) REFERENCES public.reglas(id_regla);


--
-- Name: subreddit_regulador_por_regla fk_subreddit_regulador_por_regla_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subreddit_regulador_por_regla
    ADD CONSTRAINT fk_subreddit_regulador_por_regla_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: usuario_bloquea_usuario fk_usuario_bloquea_usuario_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_bloquea_usuario
    ADD CONSTRAINT fk_usuario_bloquea_usuario_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_bloquea_usuario fk_usuario_bloquea_usuario_usuarios_bloqueados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_bloquea_usuario
    ADD CONSTRAINT fk_usuario_bloquea_usuario_usuarios_bloqueados FOREIGN KEY (username_bloqueado) REFERENCES public.usuarios(username);


--
-- Name: usuario_califica_comment fk_usuario_califica_comment_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_califica_comment
    ADD CONSTRAINT fk_usuario_califica_comment_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);


--
-- Name: usuario_califica_comment fk_usuario_califica_comment_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_califica_comment
    ADD CONSTRAINT fk_usuario_califica_comment_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_califica_post fk_usuario_califica_post_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_califica_post
    ADD CONSTRAINT fk_usuario_califica_post_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);


--
-- Name: usuario_califica_post fk_usuario_califica_post_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_califica_post
    ADD CONSTRAINT fk_usuario_califica_post_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_emite_transferencia fk_usuario_emite_transferencia_transferencias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_emite_transferencia
    ADD CONSTRAINT fk_usuario_emite_transferencia_transferencias FOREIGN KEY (id_transferencia) REFERENCES public.transferencias(id_transferencia);


--
-- Name: usuario_emite_transferencia fk_usuario_emite_transferencia_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_emite_transferencia
    ADD CONSTRAINT fk_usuario_emite_transferencia_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_envia_mensaje_privado fk_usuario_envia_mensaje_privado_mensajes_privados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_envia_mensaje_privado
    ADD CONSTRAINT fk_usuario_envia_mensaje_privado_mensajes_privados FOREIGN KEY (id_mensaje) REFERENCES public.mensajes_privados(id_mensaje);


--
-- Name: usuario_envia_mensaje_privado fk_usuario_envia_mensaje_privado_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_envia_mensaje_privado
    ADD CONSTRAINT fk_usuario_envia_mensaje_privado_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_esta_bloqueado_subreddit fk_usuario_esta_bloqueado_subreddit_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit
    ADD CONSTRAINT fk_usuario_esta_bloqueado_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: usuario_esta_bloqueado_subreddit fk_usuario_esta_bloqueado_subreddit_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_esta_bloqueado_subreddit
    ADD CONSTRAINT fk_usuario_esta_bloqueado_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_establece_subreddit fk_usuario_establece_subreddit_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_establece_subreddit
    ADD CONSTRAINT fk_usuario_establece_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: usuario_establece_subreddit fk_usuario_establece_subreddit_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_establece_subreddit
    ADD CONSTRAINT fk_usuario_establece_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_gana_premio fk_usuario_gana_premio_premios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_gana_premio
    ADD CONSTRAINT fk_usuario_gana_premio_premios FOREIGN KEY (nombre_premio) REFERENCES public.premios(nombre_premio);


--
-- Name: usuario_gana_premio fk_usuario_gana_premio_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_gana_premio
    ADD CONSTRAINT fk_usuario_gana_premio_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_genera_comment fk_usuario_genera_comment_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_genera_comment
    ADD CONSTRAINT fk_usuario_genera_comment_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);


--
-- Name: usuario_genera_comment fk_usuario_genera_comment_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_genera_comment
    ADD CONSTRAINT fk_usuario_genera_comment_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_genera_post fk_usuario_genera_post_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_genera_post
    ADD CONSTRAINT fk_usuario_genera_post_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);


--
-- Name: usuario_genera_post fk_usuario_genera_post_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_genera_post
    ADD CONSTRAINT fk_usuario_genera_post_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_guarda_comment fk_usuario_guarda_comment_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_guarda_comment
    ADD CONSTRAINT fk_usuario_guarda_comment_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);


--
-- Name: usuario_guarda_comment fk_usuario_guarda_comment_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_guarda_comment
    ADD CONSTRAINT fk_usuario_guarda_comment_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_guarda_post fk_usuario_guarda_post_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_guarda_post
    ADD CONSTRAINT fk_usuario_guarda_post_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);


--
-- Name: usuario_guarda_post fk_usuario_guarda_post_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_guarda_post
    ADD CONSTRAINT fk_usuario_guarda_post_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_modera_subreddit fk_usuario_modera_subreddit_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_modera_subreddit
    ADD CONSTRAINT fk_usuario_modera_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: usuario_modera_subreddit fk_usuario_modera_subreddit_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_modera_subreddit
    ADD CONSTRAINT fk_usuario_modera_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_percibe_transferencia fk_usuario_percibe_transferencia_transferencias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_percibe_transferencia
    ADD CONSTRAINT fk_usuario_percibe_transferencia_transferencias FOREIGN KEY (id_transferencia) REFERENCES public.transferencias(id_transferencia);


--
-- Name: usuario_percibe_transferencia fk_usuario_percibe_transferencia_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_percibe_transferencia
    ADD CONSTRAINT fk_usuario_percibe_transferencia_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_recibe_mensaje_privado fk_usuario_recibe_mensaje_privado_mensajes_privados; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_recibe_mensaje_privado
    ADD CONSTRAINT fk_usuario_recibe_mensaje_privado_mensajes_privados FOREIGN KEY (id_mensaje) REFERENCES public.mensajes_privados(id_mensaje);


--
-- Name: usuario_recibe_mensaje_privado fk_usuario_recibe_mensaje_privado_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_recibe_mensaje_privado
    ADD CONSTRAINT fk_usuario_recibe_mensaje_privado_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_reporta_comment_segun_regla fk_usuario_reporta_comment_segun_regla_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_comment_segun_regla_comment FOREIGN KEY (id_comment) REFERENCES public.comments(id_comments);


--
-- Name: usuario_reporta_comment_segun_regla fk_usuario_reporta_comment_segun_regla_reglas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_comment_segun_regla_reglas FOREIGN KEY (id_regla) REFERENCES public.reglas(id_regla);


--
-- Name: usuario_reporta_comment_segun_regla fk_usuario_reporta_comment_segun_regla_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_comment_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_comment_segun_regla_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_reporta_post_segun_regla fk_usuario_reporta_post_segun_regla_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_post_segun_regla_post FOREIGN KEY (id_post) REFERENCES public.posts(id_posts);


--
-- Name: usuario_reporta_post_segun_regla fk_usuario_reporta_post_segun_regla_reglas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_post_segun_regla_reglas FOREIGN KEY (id_regla) REFERENCES public.reglas(id_regla);


--
-- Name: usuario_reporta_post_segun_regla fk_usuario_reporta_post_segun_regla_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_reporta_post_segun_regla
    ADD CONSTRAINT fk_usuario_reporta_post_segun_regla_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_sigue_usuario fk_usuario_sigue_usuario_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_sigue_usuario
    ADD CONSTRAINT fk_usuario_sigue_usuario_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- Name: usuario_sigue_usuario fk_usuario_sigue_usuario_usuarios_seguidos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_sigue_usuario
    ADD CONSTRAINT fk_usuario_sigue_usuario_usuarios_seguidos FOREIGN KEY (username_seguido) REFERENCES public.usuarios(username);


--
-- Name: usuario_suscrito_subreddit fk_usuario_suscrito_subreddit_subreddits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_suscrito_subreddit
    ADD CONSTRAINT fk_usuario_suscrito_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES public.subreddits(nombre_subreddit);


--
-- Name: usuario_suscrito_subreddit fk_usuario_suscrito_subreddit_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_suscrito_subreddit
    ADD CONSTRAINT fk_usuario_suscrito_subreddit_usuarios FOREIGN KEY (username) REFERENCES public.usuarios(username);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               