const db = require('../../database');

class CampeonatoRepository {
  async findAll(orderBy = 'ASC') {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT *
      FROM campeonatos
      ORDER BY nome ${direction}
    `);
    return rows;
  }

  async findByID(id) {
    const [row] = await db.query(`
      SELECT *
      FROM campeonatos
      WHERE id = $1
    `, [id]);
    return row;
  }

  async create({
    nome,
  }) {
    const [row] = await db.query(`
      INSERT INTO campeonatos (nome)
      VALUES ($1)
      RETURNING *;
    `, [nome]);
    return row;
  }

  async update(id, {
    nome
  }) {
    const [row] = await db.query(`
      UPDATE campeonatos SET nome = $1
      WHERE id = $2
      RETURNING *;
    `, [nome, id]);
    return row;
  }

  async delete(id) {
    const deleteOp = await db.query('DELETE FROM campeonatos WHERE id = $1;', [id]);
    return deleteOp;
  }
}

module.exports = new CampeonatoRepository();
