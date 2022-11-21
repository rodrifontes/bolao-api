const db = require('../../database');

class PalpiteRepository {
  async findAll(orderBy = 'ASC', userId) {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT
        j.id,
        j.campeonato_id, c.nome AS campeonato_nome,
        j.fase_id, f.nome AS fase_nome,
        j.mandante_id, m.nome AS mandante_nome, m.nome_reduzido AS mandante_nome_reduzido, m.path_escudo AS mandante_path_escudo,
        j.visitante_id, v.nome AS visitante_nome,  v.nome_reduzido AS visitante_nome_reduzido, v.path_escudo AS visitante_path_escudo,
        j.data,
        j.local,
        j.gols_mandante,
        j.gols_visitante,
        p.placar_mandante AS palpite_placar_mandante,
        p.placar_visitante AS palpite_placar_visitante
      FROM jogos j
      INNER JOIN campeonatos c ON j.campeonato_id = c.id
      INNER JOIN fases f ON j.fase_id = f.id
      INNER JOIN times m ON j.mandante_id = m.id
      INNER JOIN times v ON j.visitante_id = v.id
      LEFT JOIN palpites p ON j.id = p.jogo_id AND p.usuario_id = ${userId}
      ORDER BY j.data ${direction}
    `);
    return rows;
  }

  async findByID(id) {
    const [row] = await db.query(`
      SELECT *
      FROM palpites
      WHERE id = $1
    `, [id]);
    return row;
  }

  async findByUsuarioEJogo(usuario_id, jogo_id) {
    const [row] = await db.query(`
    SELECT *
    FROM palpites
    WHERE usuario_id = $1 AND jogo_id = $2
  `, [usuario_id, jogo_id]);
    return row;
  }

  async create({
    usuario_id,
    jogo_id,
    placar_mandante,
    placar_visitante,
  }) {
    const [row] = await db.query(`
      INSERT INTO palpites
      (usuario_id, jogo_id, placar_mandante, placar_visitante)
      VALUES ($1, $2, $3, $4)
      RETURNING *;
    `, [usuario_id, jogo_id, placar_mandante, placar_visitante]);
    return row;
  }

  async update(id, {
    placar_mandante,
    placar_visitante,
  }) {
    const [row] = await db.query(`
      UPDATE palpites
      SET placar_mandante = $1, placar_visitante = $2, data = NOW()
      WHERE id = $3
      RETURNING *;
    `, [placar_mandante, placar_visitante, id]);
    return row;
  }

}

module.exports = new PalpiteRepository();
