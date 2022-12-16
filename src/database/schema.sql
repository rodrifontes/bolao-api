CREATE DATABASE bolao;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS usuarios (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  nome VARCHAR NOT NULL,
  email VARCHAR NOT NULL,
  telefone VARCHAR NOT NULL,
  senha VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS campeonatos (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  nome VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS fases (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  nome VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS times (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  nome VARCHAR NOT NULL,
  nome_reduzido VARCHAR NOT NULL,
  path_escudo VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS boloes (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  campeonato_id UUID NOT NULL,
  administrador_id UUID NOT NULL,
  nome VARCHAR NOT NULL,
  path_logo VARCHAR,
  FOREIGN KEY(campeonato_id) REFERENCES campeonatos(id),
  FOREIGN KEY(administrador_id) REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS apostadores (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  usuario_id UUID NOT NULL,
  bolao_id UUID NOT NULL,
  liberacao BOOLEAN,
  pontuacao INTEGER,
  posicao INTEGER,
  FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY(bolao_id) REFERENCES boloes(id)
);

/*
CREATE TABLE IF NOT EXISTS fases_campeonatos (
  id_campeonato UUID NOT NULL,
  id_fase UUID NOT NULL,
  ordem INTEGER,
  PRIMARY KEY (id_campeonato, id_fase),
  FOREIGN KEY(id_campeonato) REFERENCES campeonatos(id),
  FOREIGN KEY(id_fase) REFERENCES fases(id)
);
*/

CREATE TABLE IF NOT EXISTS jogos (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  mandante_id UUID NOT NULL,
  visitante_id UUID NOT NULL,
  campeonato_id UUID NOT NULL,
  fase_id UUID NOT NULL,
  data TIMESTAMP NOT NULL,
  local VARCHAR,
  gols_mandante INTEGER,
  gols_visitante INTEGER,
  FOREIGN KEY(mandante_id) REFERENCES times(id),
  FOREIGN KEY(visitante_id) REFERENCES times(id),
  FOREIGN KEY(campeonato_id) REFERENCES campeonatos(id),
  FOREIGN KEY(fase_id) REFERENCES fases(id),
  --FOREIGN KEY(campeonato_id, fase_id) REFERENCES fases_campeonatos(id_campeonato, id_fase)
);

CREATE TABLE IF NOT EXISTS palpites (
  id UUID NOT NULL UNIQUE DEFAULT UUID_generate_v4(),
  usuario_id UUID NOT NULL,
  jogo_id UUID NOT NULL,
  placar_mandante INTEGER NOT NULL,
  placar_visitante INTEGER NOT NULL,
  data TIMESTAMP DEFAULT NOW() NOT NULL,
  FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY(jogo_id) REFERENCES jogos(id)
);
