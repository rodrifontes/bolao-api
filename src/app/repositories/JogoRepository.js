const db = require('../../database');

class JogoRepository {
  async findAll(orderBy = 'ASC') {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT
        j.id,
        j.campeonato_id, c.nome AS campeonato_nome,
        j.fase_id, f.nome AS fase_nome,
        j.mandante_id, m.nome AS mandante_nome, m.nome_reduzido AS mandante_nome_reduzido, m.path_escudo AS mandante_path_escudo,
        j.visitante_id, v.nome AS visitante_nome,  v.nome_reduzido AS visitante_nome_reduzido, v.path_escudo AS visitante_path_escudo,
        data,
        local,
        j.gols_mandante,
        j.gols_visitante
      FROM jogos j
      INNER JOIN campeonatos c ON j.campeonato_id = c.id
      INNER JOIN fases f ON j.fase_id = f.id
      INNER JOIN times m ON j.mandante_id = m.id
      INNER JOIN times v ON j.visitante_id = v.id
      ORDER BY data ${direction}
    `);
    return rows;
  }

  async findByID(id) {
    const [row] = await db.query(`
      SELECT *
      FROM jogos
      WHERE id = $1
    `, [id]);
    return row;
  }

  async create({
    mandante_id,
    visitante_id,
    campeonato_id,
    fase_id,
    data,
    local,
  }) {
    const [row] = await db.query(`
      INSERT INTO jogos
      (mandante_id, visitante_id, campeonato_id, fase_id, data, local)
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING *;
    `, [mandante_id, visitante_id, campeonato_id, fase_id, data, local]);
    return row;
  }

  async update(id, {
    mandante_id,
    visitante_id,
    campeonato_id,
    fase_id,
    data,
    local,
  }) {
    const [row] = await db.query(`
      UPDATE JOGOS
      SET mandante_id = $1, visitante_id = $2, campeonato_id = $3, fase_id = $4,
      data = $4, local = $5
      WHERE id = $6
      RETURNING *;
    `, [mandante_id, visitante_id, campeonato_id, fase_id, data, local, id]);
    return row;
  }

  async updateResultado(id, {
    gols_mandante,
    gols_visitante,
  }) {
    const [row] = await db.query(`
      UPDATE JOGOS
      SET gols_mandante = $1, gols_visitante = $2
      WHERE id = $3
      RETURNING *;
    `, [gols_mandante, gols_visitante, id]);
    return row;
  }

  async delete(id) {
    const deleteOp = await db.query('DELETE FROM jogos WHERE id = $1;', [id]);
    return deleteOp;
  }
}

module.exports = new JogoRepository();
