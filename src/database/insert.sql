INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('RB Salzburg', 'Sal', 'rb-salzburg.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Bayern de Munique', 'Bay', 'bayern-de-munique.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Sporting', 'Spt', 'sporting.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Manchester City', 'Mac', 'manchester-city.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Benfica', 'Ben', 'benfica.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Ajax', 'Aja', 'ajax.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Chelsea', 'Che', 'chelsea.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Lille', 'Lil', 'lille.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Atlético de Madrid', 'Atl', 'atletico-madrid.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Manchester United', 'Man', 'manchester-united.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Villarreal', 'Vil', 'villarreal.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Juventus', 'Juv', 'juventus.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Internazionale', 'Int', 'internazionale.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Liverpool', 'Liv', 'liverpool.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Paris Saint-Germain', 'Psg', 'psg.svg');
INSERT INTO times (nome, nome_reduzido, path_escudo) VALUES ('Real Madrid', 'Mad', 'real-madrid.svg');

INSERT INTO campeonatos (nome) VALUES ('Liga dos Campeões');

INSERT INTO fases (nome) VALUES ('Oitavas de final');

INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 1);

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'cc723408-f114-455b-a7aa-64b0453525fd', '2d5f07da-7ced-4308-a8e7-c9a793a76d7e', '2022-02-16 17:00:00', 'Salzburg Arena');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '2d5f07da-7ced-4308-a8e7-c9a793a76d7e', 'cc723408-f114-455b-a7aa-64b0453525fd', '2022-03-08 17:00:00', 'Arena de Munique');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'cfecc112-40b0-43c7-9580-b02eca3704c0', 'fddd9a12-a2ff-4fa0-a4b1-78e36d0beff4', '2022-02-15 17:00:00', 'José Alvalade');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'fddd9a12-a2ff-4fa0-a4b1-78e36d0beff4', 'cfecc112-40b0-43c7-9580-b02eca3704c0', '2022-03-09 17:00:00', 'City of Manchester');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'a28ca489-a7fa-4d36-aa79-b1e474ac8b4f', '17c6b34a-a72e-4a5e-af03-4be1286387df', '2022-02-23 17:00:00', 'Estádio da Luz');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '17c6b34a-a72e-4a5e-af03-4be1286387df', 'a28ca489-a7fa-4d36-aa79-b1e474ac8b4f', '2022-03-15 17:00:00', 'Johan Cruijff Arena');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'd61c33ce-57d7-44d7-9160-aac406ffaca4', '7628183b-bdc6-48ec-b54f-01f0ed6b04fb', '2022-02-22 17:00:00', 'Stamfod Bridge');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '7628183b-bdc6-48ec-b54f-01f0ed6b04fb', 'd61c33ce-57d7-44d7-9160-aac406ffaca4', '2022-03-16 17:00:00', 'Pierre-Mauroy');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'fa30468c-b03a-4ca8-b899-4a7340c1573c', '83ae0baf-0af2-4e27-8046-947c5cbee36c', '2022-02-23 17:00:00', 'Metropolitano');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '83ae0baf-0af2-4e27-8046-947c5cbee36c', 'fa30468c-b03a-4ca8-b899-4a7340c1573c', '2022-02-15 17:00:00', 'Old Trafford');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'fc356c49-ff33-42e2-8463-2a9c838adb7d', 'e6c8ea54-77dd-49f2-bda1-e4e2a160f013', '2022-02-22 17:00:00', 'El Madrigal');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'e6c8ea54-77dd-49f2-bda1-e4e2a160f013', 'fc356c49-ff33-42e2-8463-2a9c838adb7d', '2022-03-16 17:00:00', 'Juventus Stadium');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '68899a00-36f0-4e37-b1d6-441ef838df42', '333e0ea8-0c23-4d4e-958f-67cc92610cd4', '2022-02-16 17:00:00', 'Giuseppe Meazza');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '333e0ea8-0c23-4d4e-958f-67cc92610cd4', '68899a00-36f0-4e37-b1d6-441ef838df42', '2022-03-08 17:00:00', 'Anfield');

INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', '40ad8824-7999-46cc-b324-b31bdedf02ab', 'e98d8958-86c7-4215-896c-440b4269bacc', '2022-02-15 17:00:00', 'Parc Des Princes');
INSERT INTO jogos (campeonato_id, fase_id, mandante_id, visitante_id, data, local) VALUES ('09b34e31-d275-4baf-b9b2-1a0b43edcab4', 'aed0962e-0bc8-412a-a8c5-264c827ab80f', 'e98d8958-86c7-4215-896c-440b4269bacc', '40ad8824-7999-46cc-b324-b31bdedf02ab', '2022-03-09 17:00:00', 'Santiago Bernabéu');


SELECT 
  c.nome as campeonato,
  f.nome as fase,
  m.nome as mandante,
  v.nome as visitante,
  j.data,
  j.local
FROM jogos j
INNER JOIN campeonatos c ON j.campeonato_id = c.id
INNER JOIN fases f ON j.fase_id = f.id
INNER JOIN times m ON j.mandante_id = m.id
INNER JOIN times v ON j.visitante_id = v.id