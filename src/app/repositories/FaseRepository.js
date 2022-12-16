const db = require('../../database');

class CampeonatoRepository {
  async findAll(orderBy = 'ASC') {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT *
      FROM fases f
      ORDER BY nome ${direction}
    `);
    return rows;
  }
}

module.exports = new CampeonatoRepository();
