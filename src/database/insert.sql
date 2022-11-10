/* Consultas para gerar os inserts de BKP
SELECT
'INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES (''' || id || ''', ' || '''' || nome || ''', ' || '''' || nome_reduzido || ''', ' || '''' || path_escudo || ''');'
FROM times

SELECT
'INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES (''' || id || ''', ' || '''' || mandante_id || ''', ' || '''' || visitante_id || ''', ' || '''' || campeonato_id || ''', ' || '''' || data || ''', ' || '''' || local || ''');'
FROM jogos


SELECT
'INSERT INTO fases (id, nome) VALUES (''' || id || ''', ' || '''' || nome || ''');'
FROM fases

SELECT
'INSERT INTO fases (id, nome) VALUES (''' || id || ''', ' || '''' || nome || ''');'
FROM campeonatos

SELECT
'INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES (''' || id_campeonato || ''', ' || '''' || id_fase || ''', ' || ordem || ');'
FROM fases_campeonatos
*/


INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('8afb87dc-449d-464f-9ff4-433400673b77', 'Catar', 'Cat', 'https://s.sde.globo.com/media/organizations/2019/09/06/Catar.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('982d63e4-af19-4dad-ac76-659a4b91cd06', 'Equador', 'Equ', 'https://s.sde.globo.com/media/organizations/2019/07/15/Equador.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('b3815a7b-4bb7-4506-bb73-56a197eca985', 'Senegal', 'Sen', 'https://s.sde.globo.com/media/organizations/2019/09/03/Senegal.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('177686ba-d49c-4df5-9f79-b270c9a30384', 'Holanda', 'Hol', 'https://s.sde.globo.com/media/organizations/2019/09/16/Holanda.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('a6a7fd93-416e-4824-b509-9cf85b489021', 'Inglaterra', 'Ing', 'https://s.sde.globo.com/media/organizations/2019/09/13/Inglaterra.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('6c35ac44-2b68-4927-b421-a15cbd8df1e1', 'Irã', 'Ira', 'https://s.sde.globo.com/media/organizations/2019/09/01/Irã.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('936ea3a0-bbe4-4a3f-802f-a5f59bc073ba', 'Estados Unidos', 'EUA', 'https://s.sde.globo.com/media/organizations/2019/07/16/Estados_Unidos.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('64d65940-8d11-449c-b6be-b99b06f8fff8', 'País de Gales', 'Gal', 'https://s.sde.globo.com/media/organizations/2019/09/17/País_de_Gales.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('11b24ea7-0200-4537-933b-85ccc6985d81', 'Argentina', 'Arg', 'https://s.sde.globo.com/media/organizations/2019/07/15/Argentina.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('ab510cee-fe15-4986-a033-ce319d8f4e04', 'Arábia Saudita', 'Ara', 'https://s.sde.globo.com/media/organizations/2019/09/05/Ar%C3%A1bia_Saudita.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('55c422a3-8d47-47d6-9349-2251a2fb7128', 'México', 'Mex', 'https://s.sde.globo.com/media/organizations/2019/07/15/M%C3%A9xico.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('67077d08-6d80-47e1-a564-ecc7facefb20', 'Polônia', 'Pol', 'https://s.sde.globo.com/media/organizations/2019/09/02/Polonia_Rl0m1A5.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('73edfc95-b350-40ca-a2ee-03689484bb2b', 'Austrália', 'Aus', 'https://s.sde.globo.com/media/organizations/2019/09/02/Australia.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('58f00811-ccce-4009-8696-c5107fbbb7b5', 'Dinamarca', 'Din', 'https://s.sde.globo.com/media/organizations/2019/09/16/Dinamarca.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('ed7e9873-15eb-4b7b-8579-f4d54fb27a55', 'França', 'Fra', 'https://s.sde.globo.com/media/organizations/2019/09/03/Fran%C3%A7a.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('45998885-ccab-4f94-82fb-545b1d076c1e', 'Tunísia', 'Tun', 'https://s.sde.globo.com/media/organizations/2018/03/10/tunisia.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('faf0cd23-9acb-4bb5-a8a4-60b89efd5308', 'Costa Rica', 'Crc', 'https://s.sde.globo.com/media/organizations/2019/07/14/Costa_Rica.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('bb3d337b-85b3-453f-acf3-9d0767a43567', 'Espanha', 'Esp', 'https://s.sde.globo.com/media/organizations/2019/09/03/Espanha.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('9f9236a1-0292-4cd1-b0fe-460e69312d61', 'Japão', 'Jap', 'https://s.sde.globo.com/media/organizations/2019/09/03/Japao.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('fc3a2d0e-38dd-4bf3-b7a1-300c7e8140d6', 'Bélgica', 'Bel', 'https://s.sde.globo.com/media/organizations/2019/09/15/B%C3%A9lgica.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('1a7abb33-70e8-468e-8d0d-5362356af2fe', 'Canadá', 'Can', 'https://s.sde.globo.com/media/organizations/2019/07/15/Canad%C3%A1.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('ecea9a5b-83df-434e-acd7-ee9ac7f57d25', 'Croácia', 'Cro', 'https://s.sde.globo.com/media/organizations/2019/09/16/Cro%C3%A1cia.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('f9db2dd0-ee1f-4928-bed3-96a255b6304a', 'Marrocos', 'Mar', 'https://s.sde.globo.com/media/organizations/2019/09/10/Marrocos.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('36c38db2-73b7-403b-88b8-fe2242e9b40b', 'Brasil', 'Bra', 'https://s.sde.globo.com/media/organizations/2019/07/16/Brasil_rgYHF6Z.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('798a6a0e-e127-48a1-b210-121224202638', 'Camarões', 'Cam', 'https://s.sde.globo.com/media/organizations/2019/09/10/Camar%C3%B5es.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('fde2e1bd-2f89-4a93-b267-ce49bd863cb7', 'Suíça', 'Sui', 'https://s.sde.globo.com/media/organizations/2019/09/15/Su%C3%AD%C3%A7a.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('1d2de140-55e5-4a87-8a64-b972a742f32a', 'Sérvia', 'Ser', 'https://s.sde.globo.com/media/organizations/2019/09/02/Servia.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('d3686788-0d5d-4ec7-bf7d-d1430dd037eb', 'Coreia do Sul', 'Cor', 'https://s.sde.globo.com/media/organizations/2019/09/01/Coreia_do_Sul.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('f3227914-dd79-4592-b70a-f86e605989a9', 'Gana', 'Gan', 'https://s.sde.globo.com/media/organizations/2019/09/08/Gana.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('5dd73f60-0fa8-42fd-8172-57b786383f88', 'Portugal', 'Por', 'https://s.sde.globo.com/media/organizations/2019/09/17/Portugal.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('04e38ad1-8e78-461b-9a57-4d430916a969', 'Uruguai', 'Uru', 'https://s.sde.globo.com/media/organizations/2019/07/16/Uruguai.svg');
INSERT INTO times (id, nome, nome_reduzido, path_escudo) VALUES ('b3a49de4-4b29-431e-982a-de3bdb973e15', 'Alemanha', 'Ale', 'https://s.sde.globo.com/media/organizations/2019/09/03/Alemanha.svg');

INSERT INTO fases (id, nome) VALUES ('281c35bc-5ee2-4252-a146-6b66a454eec2', 'Fase de Grupos');
INSERT INTO fases (id, nome) VALUES ('3c9b24c9-a391-4ce0-8f3d-4c1c04c99f81', 'Oitavas de Final');
INSERT INTO fases (id, nome) VALUES ('3cc59b2a-86ab-4bc7-b83d-51f6934ff953', 'Quartas de Final');
INSERT INTO fases (id, nome) VALUES ('7891ca93-5358-4f29-9536-c890cd6a87a3', 'Semifinal');
INSERT INTO fases (id, nome) VALUES ('46e9b1fa-ff7d-48d2-b812-e4e9c0a52cc9', 'Disputa do 3º Lugar');
INSERT INTO fases (id, nome) VALUES ('02ea8667-cda7-462f-a6fd-8bf71b0e37f0', 'Final');

INSERT INTO campeonatos (id, nome) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', 'Copa do Mundo 2022');

INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', 1);
INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '3c9b24c9-a391-4ce0-8f3d-4c1c04c99f81', 2);
INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '3cc59b2a-86ab-4bc7-b83d-51f6934ff953', 3);
INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '7891ca93-5358-4f29-9536-c890cd6a87a3', 4);
INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '46e9b1fa-ff7d-48d2-b812-e4e9c0a52cc9', 5);
INSERT INTO fases_campeonatos (id_campeonato, id_fase, ordem) VALUES ('48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '02ea8667-cda7-462f-a6fd-8bf71b0e37f0', 6);

INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('d865575e-f7af-4b4b-9306-06920c47a797', '8afb87dc-449d-464f-9ff4-433400673b77', '982d63e4-af19-4dad-ac76-659a4b91cd06', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-20 13:00:00', 'Al Bayt');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('470891d1-4971-4ef4-ae5c-a5cdceea7ff4', 'b3815a7b-4bb7-4506-bb73-56a197eca985', '177686ba-d49c-4df5-9f79-b270c9a30384', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-21 13:00:00', 'Al Thumama');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('af05dfdb-4ab6-4c83-93a0-87cdd5c53dd7', '8afb87dc-449d-464f-9ff4-433400673b77', 'b3815a7b-4bb7-4506-bb73-56a197eca985', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-25 10:00:00', 'Al Thumama');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('36a0eaf9-044b-4728-9be9-e04afff1a5e5', '177686ba-d49c-4df5-9f79-b270c9a30384', '982d63e4-af19-4dad-ac76-659a4b91cd06', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-25 13:00:00', 'Internacional Khalifa');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('dc74aea2-9a15-4876-b468-76f4d4df4474', '177686ba-d49c-4df5-9f79-b270c9a30384', '8afb87dc-449d-464f-9ff4-433400673b77', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-29 12:00:00', 'Al Bayt');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('c24edc9c-5d6d-471d-9d23-961f1bf0ff2d', '982d63e4-af19-4dad-ac76-659a4b91cd06', 'b3815a7b-4bb7-4506-bb73-56a197eca985', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-29 12:00:00', 'Internacional Khalifa');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('cf1e1ece-eeaf-439b-8f81-f968d1365cd5', 'a6a7fd93-416e-4824-b509-9cf85b489021', '6c35ac44-2b68-4927-b421-a15cbd8df1e1', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-21 10:00:00', 'Internacional Khalifa');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('68ff0864-b3c0-49cd-83e2-e9e324a3d89e', '936ea3a0-bbe4-4a3f-802f-a5f59bc073ba', '64d65940-8d11-449c-b6be-b99b06f8fff8', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-21 16:00:00', 'Ahmad Bin Ali');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('09052bc2-97f4-4def-8f19-51f49a1651a0', '64d65940-8d11-449c-b6be-b99b06f8fff8', '6c35ac44-2b68-4927-b421-a15cbd8df1e1', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-25 07:00:00', 'Ahmad Bin Ali');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('8284b208-045c-447b-8346-39113fc095ca', 'a6a7fd93-416e-4824-b509-9cf85b489021', '936ea3a0-bbe4-4a3f-802f-a5f59bc073ba', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-25 16:00:00', 'Al Bayt');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('937cb1ee-7aac-4fdb-b017-bda1b857461a', '6c35ac44-2b68-4927-b421-a15cbd8df1e1', '936ea3a0-bbe4-4a3f-802f-a5f59bc073ba', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-29 16:00:00', 'Al Thumama');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('08781723-1d95-4f61-bb2a-ab29bf617974', '64d65940-8d11-449c-b6be-b99b06f8fff8', 'a6a7fd93-416e-4824-b509-9cf85b489021', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-29 16:00:00', 'Ahmad Bin Ali');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('33404dc6-b029-43b9-a3af-db48ed59d0a4', '11b24ea7-0200-4537-933b-85ccc6985d81', 'ab510cee-fe15-4986-a033-ce319d8f4e04', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-22 07:00:00', 'Lusail');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('03c66bb5-b3d1-4b57-81a1-fa25c84c63d5', '55c422a3-8d47-47d6-9349-2251a2fb7128', '67077d08-6d80-47e1-a564-ecc7facefb20', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-22 13:00:00', 'Estádio 974');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('3d76f9d9-4d61-4dda-b305-3d82d172cb38', '67077d08-6d80-47e1-a564-ecc7facefb20', 'ab510cee-fe15-4986-a033-ce319d8f4e04', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-26 10:00:00', 'Cidade da Educação');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('cddee2a1-b306-4655-b156-7cc24d1fc2e2', '11b24ea7-0200-4537-933b-85ccc6985d81', '55c422a3-8d47-47d6-9349-2251a2fb7128', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-26 16:00:00', 'Lusail');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('5219527b-149f-4dc8-a09a-e8ee28695406', '67077d08-6d80-47e1-a564-ecc7facefb20', '11b24ea7-0200-4537-933b-85ccc6985d81', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-30 16:00:00', 'Estádio 974');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('3cbcb625-48eb-49f9-8f92-815859ba4b53', 'ab510cee-fe15-4986-a033-ce319d8f4e04', '55c422a3-8d47-47d6-9349-2251a2fb7128', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-30 16:00:00', 'Lusail');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('bd7e1477-5b49-404b-9258-7288de30481a', '58f00811-ccce-4009-8696-c5107fbbb7b5', '45998885-ccab-4f94-82fb-545b1d076c1e', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-22 10:00:00', 'Cidade da Educação');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('f7af04a4-fa3e-4aef-addd-d98d50d27227', 'ed7e9873-15eb-4b7b-8579-f4d54fb27a55', '73edfc95-b350-40ca-a2ee-03689484bb2b', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-22 16:00:00', 'Al Janoub');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('fed1825e-efa3-4330-bae7-e9171872dc0d', '45998885-ccab-4f94-82fb-545b1d076c1e', '73edfc95-b350-40ca-a2ee-03689484bb2b', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-26 07:00:00', 'Al Janoub');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('6d81db00-b7c7-401e-92d6-3faa9bddf3c1', 'ed7e9873-15eb-4b7b-8579-f4d54fb27a55', '58f00811-ccce-4009-8696-c5107fbbb7b5', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-26 13:00:00', 'Estádio 974');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('4158b452-7d91-4cd4-95ab-88273847cd5c', '45998885-ccab-4f94-82fb-545b1d076c1e', 'ed7e9873-15eb-4b7b-8579-f4d54fb27a55', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-30 12:00:00', 'Cidade da Educação');
INSERT INTO jogos (id, mandante_id, visitante_id, campeonato_id, fase_id, data, local) VALUES ('e9083cf5-84b2-477d-b348-bc5c96f6b592', '73edfc95-b350-40ca-a2ee-03689484bb2b', '58f00811-ccce-4009-8696-c5107fbbb7b5', '48e45a98-2fb2-47b8-9f2e-34aaea4df16a', '281c35bc-5ee2-4252-a146-6b66a454eec2', '2022-11-30 12:00:00', 'Al Janoub');
