CREATE DATABASE agencia

USE agencia

CREATE TABLE header (
    hea_logo VARCHAR(20) NOT NULL,
    hea_subtitulo VARCHAR(50) NOT NULL,
    hea_titulo VARCHAR(50) NOT NULL,
)

INSERT INTO (hea_logo, hea_subtitulo, hea_titulo) VALUES
    ("Sofia Casas", "Bienvenido(a) A Mi Panaderia", "El dulce sabor");

-- CREATE auditoria(
--     au_id,
--     au_user_id,
--     au_add_fecha DATETIME,
--     au_tipo,
--     au_ip_publica,
--     au_ip_local
-- )