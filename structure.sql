CREATE TABLE subreddits (
    nombre_subreddit varchar(20),
    descripcion_subreddit text,
    CONSTRAINT PK_subreddits PRIMARY KEY (nombre_subreddit)
);

CREATE TABLE usuarios (
    username varchar(20),
    display_name varchar(20),
    about text,
    email varchar(320),
    coins integer,
    karma bigint,
    cake_day timestamp,
    tipo varchar(10),
    CONSTRAINT PK_usuarios PRIMARY KEY (username)
);

CREATE TABLE aporte (
    id_aporte integer,
    texto text,
    karma bigint,
    fecha timestamp,
    CONSTRAINT PK_aporte PRIMARY KEY (id_aporte)
);

CREATE TABLE mensajes_privados (
    id_mensaje integer,
    tema char(50),
    texto text,
    CONSTRAINT PK_mensajes_privados PRIMARY KEY (id_mensaje)
);

CREATE TABLE premios (
    nombre_premio char(50),
    descripcion_premio text,
    CONSTRAINT PK_premios PRIMARY KEY (nombre_premio)
);

CREATE TABLE transferencias (
    id_transferencia integer,
    cant_monedas integer,
    CONSTRAINT PK_transferencias PRIMARY KEY (id_transferencia)
);

CREATE TABLE multireddits (
    nombre_multireddit varchar(20) NOT NULL UNIQUE,
    username varchar(20),
    fecha_creacion_multireddit timestamp,
    CONSTRAINT PK_multireddits PRIMARY KEY (username, nombre_multireddit),
    CONSTRAINT FK_multireddits_usuarios FOREIGN KEY (username) REFERENCES usuarios (username) 
);

CREATE TABLE reglas (
    id_regla integer NOT NULL UNIQUE,
    nombre_subreddit varchar(20),
    descripcion_regla text,
    CONSTRAINT PK_reglas PRIMARY KEY (nombre_subreddit, id_regla),
    CONSTRAINT FK_reglas_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit) 
);

CREATE TABLE posts (
    id_posts integer,
    id_aporte integer,
    titulo varchar(20),
    CONSTRAINT PK_posts PRIMARY KEY (id_posts),
    CONSTRAINT FK_posts_aportes FOREIGN KEY (id_aporte) REFERENCES aporte (id_aporte)
);

CREATE TABLE comments (
    id_comments integer,
    id_aporte integer,
    CONSTRAINT PK_comments PRIMARY KEY (id_comments),
    CONSTRAINT FK_comments_aportes FOREIGN KEY (id_aporte) REFERENCES aporte (id_aporte)
);

-- relaciones

CREATE TABLE multireddit_agrupa_subreddit (
    username varchar(20),
    nombre_multireddit varchar(20),
    nombre_subreddit varchar(20),
    CONSTRAINT PK_multireddit_agrupa_subreddit PRIMARY KEY (username, nombre_multireddit, nombre_subreddit),
    CONSTRAINT FK_multireddit_agrupa_subreddit_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_multireddit_agrupa_subreddit_multireddits FOREIGN KEY (nombre_multireddit) REFERENCES multireddits (nombre_multireddit),
    CONSTRAINT FK_multireddit_agrupa_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit)
);

CREATE TABLE subreddit_recomienda_subreddit (
    nombre_subreddit varchar(20),
    nombre_subreddit_recomendado varchar(20),
    CONSTRAINT PK_subreddit_recomienda_subreddit PRIMARY KEY (nombre_subreddit, nombre_subreddit_recomendado),
    CONSTRAINT FK_subreddit_recomienda_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit),
    CONSTRAINT FK_subreddit_recomienda_subreddit_recomendado_subreddits FOREIGN KEY (nombre_subreddit_recomendado) REFERENCES subreddits (nombre_subreddit)
);

CREATE TABLE subreddit_regulador_por_regla (
    nombre_subreddit varchar(20),
    id_regla integer,
    CONSTRAINT PK_subreddit_regulador_por_regla PRIMARY KEY (nombre_subreddit, id_regla),
    CONSTRAINT FK_subreddit_regulador_por_regla_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit),
    CONSTRAINT FK_subreddit_regulador_por_regla_reglas FOREIGN KEY (id_regla) REFERENCES reglas (id_regla)

);

CREATE TABLE subreddit_contiene_post (
    nombre_subreddit varchar(20),
    id_post integer,
    CONSTRAINT PK_subreddit_contiene_post PRIMARY KEY (nombre_subreddit, id_post),
    CONSTRAINT FK_subreddit_contiene_post_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit),
    CONSTRAINT FK_subreddit_contiene_post_posts FOREIGN KEY (id_post) REFERENCES posts (id_posts)
);

CREATE TABLE post_colecciona_comentario (
    id_post integer,
    id_comentario integer,
    CONSTRAINT PK_post_colecciona_comentario PRIMARY KEY (id_post, id_comentario),
    CONSTRAINT FK_post_colecciona_comentario_posts FOREIGN KEY (id_post) REFERENCES posts (id_posts),
    CONSTRAINT FK_post_colecciona_comentario_comments FOREIGN KEY (id_comentario) REFERENCES comments (id_comments)
);

CREATE TABLE comment_responde_comment (
    id_comentario integer,
    id_comentario_respondido integer,
    CONSTRAINT PK_comment_responde_comment PRIMARY KEY (id_comentario, id_comentario_respondido),
    CONSTRAINT FK_comment_responde_comment_comments FOREIGN KEY (id_comentario) REFERENCES comments (id_comments),
    CONSTRAINT FK_comment_responde_comment_comments_respondido FOREIGN KEY (id_comentario_respondido) REFERENCES comments (id_comments)
);

CREATE TABLE aporte_referencia_link (
    id_aporte integer,
    direccion_web varchar(253),
    CONSTRAINT PK_aporte_referencia_link PRIMARY KEY (id_aporte),
    CONSTRAINT FK_aporte_referencia_link_aportes FOREIGN KEY (id_aporte) REFERENCES aporte (id_aporte)
);

-- usuario - subreddit

CREATE TABLE usuario_establece_subreddit (
    username varchar(20),
    nombre_subreddit varchar(20),
    CONSTRAINT PK_usuario_establece_subreddit PRIMARY KEY (username, nombre_subreddit),
    CONSTRAINT FK_usuario_establece_subreddit_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_establece_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit)
);

CREATE TABLE usuario_modera_subreddit (
    username varchar(20),
    nombre_subreddit varchar(20),
    CONSTRAINT PK_usuario_modera_subreddit PRIMARY KEY (username, nombre_subreddit),
    CONSTRAINT FK_usuario_modera_subreddit_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_modera_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit)
);

CREATE TABLE usuario_esta_bloqueado_subreddit (
    username varchar(20),
    nombre_subreddit varchar(20),
    CONSTRAINT PK_usuario_esta_bloqueado_subreddit PRIMARY KEY (username, nombre_subreddit),
    CONSTRAINT FK_usuario_esta_bloqueado_subreddit_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_esta_bloqueado_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit)
);

CREATE TABLE usuario_suscrito_subreddit (
    username varchar(20),
    nombre_subreddit varchar(20),
    CONSTRAINT PK_usuario_suscrito_subreddit PRIMARY KEY (username, nombre_subreddit),
    CONSTRAINT FK_usuario_suscrito_subreddit_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_suscrito_subreddit_subreddits FOREIGN KEY (nombre_subreddit) REFERENCES subreddits (nombre_subreddit)
);

-- usuario - post

CREATE TABLE usuario_califica_post (
    username varchar(20),
    id_post integer,
    voto integer,
    CONSTRAINT PK_usuario_califica_post PRIMARY KEY (username, id_post),
    CONSTRAINT FK_usuario_califica_post_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_califica_post_post FOREIGN KEY (id_post) REFERENCES posts (id_posts)
);

CREATE TABLE usuario_guarda_post (
    username varchar(20),
    id_post integer,
    CONSTRAINT PK_usuario_guarda_post PRIMARY KEY (username, id_post),
    CONSTRAINT FK_usuario_guarda_post_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_guarda_post_post FOREIGN KEY (id_post) REFERENCES posts (id_posts)
);

CREATE TABLE usuario_reporta_post_segun_regla (
    username varchar(20),
    id_post integer,
    id_regla integer,
    CONSTRAINT PK_usuario_reporta_post_segun_regla PRIMARY KEY (username, id_post, id_regla),
    CONSTRAINT FK_usuario_reporta_post_segun_regla_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_reporta_post_segun_regla_post FOREIGN KEY (id_post) REFERENCES posts (id_posts),
    CONSTRAINT FK_usuario_reporta_post_segun_regla_reglas FOREIGN KEY (id_regla) REFERENCES reglas (id_regla)
);

CREATE TABLE usuario_genera_post (
    username varchar(20),
    id_post integer,
    CONSTRAINT PK_usuario_genera_post PRIMARY KEY (username, id_post),
    CONSTRAINT FK_usuario_genera_post_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_genera_post_post FOREIGN KEY (id_post) REFERENCES posts (id_posts)
);

-- Usuario - comment

CREATE TABLE usuario_califica_comment (
    username varchar(20),
    id_comment integer,
    voto integer,
    CONSTRAINT PK_usuario_califica_comment PRIMARY KEY (username, id_comment),
    CONSTRAINT FK_usuario_califica_comment_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_califica_comment_comment FOREIGN KEY (id_comment) REFERENCES comments (id_comments)
);

CREATE TABLE usuario_guarda_comment (
    username varchar(20),
    id_comment integer,
    CONSTRAINT PK_usuario_guarda_comment PRIMARY KEY (username, id_comment),
    CONSTRAINT FK_usuario_guarda_comment_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_guarda_comment_comment FOREIGN KEY (id_comment) REFERENCES comments (id_comments)
);

CREATE TABLE usuario_reporta_comment_segun_regla (
    username varchar(20),
    id_comment integer,
    id_regla integer,
    CONSTRAINT PK_usuario_reporta_comment_segun_regla PRIMARY KEY (username, id_comment, id_regla),
    CONSTRAINT FK_usuario_reporta_comment_segun_regla_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_reporta_comment_segun_regla_comment FOREIGN KEY (id_comment) REFERENCES comments (id_comments),
    CONSTRAINT FK_usuario_reporta_comment_segun_regla_reglas FOREIGN KEY (id_regla) REFERENCES reglas (id_regla)
);

CREATE TABLE usuario_genera_comment (
    username varchar(20),
    id_comment integer,
    CONSTRAINT PK_usuario_genera_comment PRIMARY KEY (username, id_comment),
    CONSTRAINT FK_usuario_genera_comment_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_genera_comment_comment FOREIGN KEY (id_comment) REFERENCES comments (id_comments)
);

-- Usuario - premio

CREATE TABLE usuario_gana_premio (
    username varchar(20),
    nombre_premio char(50),
    CONSTRAINT PK_usuario_gana_premio PRIMARY KEY (username, nombre_premio),
    CONSTRAINT FK_usuario_gana_premio_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_gana_premio_premios FOREIGN KEY (nombre_premio) REFERENCES premios (nombre_premio)
);

-- usuario - transferencia

CREATE TABLE usuario_emite_transferencia (
    username varchar(20),
    id_transferencia integer,
    CONSTRAINT PK_usuario_emite_transferencia PRIMARY KEY (username, id_transferencia),
    CONSTRAINT FK_usuario_emite_transferencia_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_emite_transferencia_transferencias FOREIGN KEY (id_transferencia) REFERENCES transferencias (id_transferencia)
);

CREATE TABLE usuario_percibe_transferencia (
    username varchar(20),
    id_transferencia integer,
    CONSTRAINT PK_usuario_percibe_transferencia PRIMARY KEY (username, id_transferencia),
    CONSTRAINT FK_usuario_percibe_transferencia_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_percibe_transferencia_transferencias FOREIGN KEY (id_transferencia) REFERENCES transferencias (id_transferencia)
);

-- usuario - usuario

CREATE TABLE usuario_bloquea_usuario (
    username varchar(20),
    username_bloqueado varchar(20),
    CONSTRAINT PK_usuario_bloquea_usuario PRIMARY KEY (username, username_bloqueado),
    CONSTRAINT FK_usuario_bloquea_usuario_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_bloquea_usuario_usuarios_bloqueados FOREIGN KEY (username_bloqueado) REFERENCES usuarios (username)
);

CREATE TABLE usuario_sigue_usuario (
    username varchar(20),
    username_seguido varchar(20),
    CONSTRAINT PK_usuario_sigue_usuario PRIMARY KEY (username, username_seguido),
    CONSTRAINT FK_usuario_sigue_usuario_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_sigue_usuario_usuarios_seguidos FOREIGN KEY (username_seguido) REFERENCES usuarios (username)
);

-- usuario - mensaje

CREATE TABLE usuario_envia_mensaje_privado (
    username varchar(20),
    id_mensaje integer,
    CONSTRAINT PK_usuario_envia_mensaje_privado PRIMARY KEY (username, id_mensaje),
    CONSTRAINT FK_usuario_envia_mensaje_privado_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_envia_mensaje_privado_mensajes_privados FOREIGN KEY (id_mensaje) REFERENCES mensajes_privados (id_mensaje)
);

CREATE TABLE usuario_recibe_mensaje_privado (
    username varchar(20),
    id_mensaje integer,
    CONSTRAINT PK_usuario_recibe_mensaje_privado PRIMARY KEY (username, id_mensaje),
    CONSTRAINT FK_usuario_recibe_mensaje_privado_usuarios FOREIGN KEY (username) REFERENCES usuarios (username),
    CONSTRAINT FK_usuario_recibe_mensaje_privado_mensajes_privados FOREIGN KEY (id_mensaje) REFERENCES mensajes_privados (id_mensaje)
);
