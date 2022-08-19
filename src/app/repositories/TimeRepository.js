const db = require('../../database');

class TimeRepository {
  async findAll(orderBy = 'ASC') {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT *
      FROM times
      ORDER BY nome ${direction}
    `);
    return rows;
  }

  async findByID(id) {
    const [row] = await db.query(`
      SELECT *
      FROM times
      WHERE id = $1
    `, [id]);
    return row;
  }

  async create({
    nome, nome_reduzido, path_escudo
  }) {
    const [row] = await db.query(`
      INSERT INTO times (nome, nome_reduzido, path_escudo)
      VALUES ($1, $2, $3)
      RETURNING *;
    `, [nome, nome_reduzido, path_escudo]);
    return row;
  }

  async update(id, {
    nome, nome_reduzido, path_escudo
  }) {
    const [row] = await db.query(`
      UPDATE times SET nome = $1, nome_reduzido = $2, path_escudo = $3
      WHERE id = $4
      RETURNING *;
    `, [nome, nome_reduzido, path_escudo, id]);
    return row;
  }

  async delete(id) {
    const deleteOp = await db.query('DELETE FROM times WHERE id = $1;', [id]);
    return deleteOp;
  }
}

module.exports = new TimeRepository();
