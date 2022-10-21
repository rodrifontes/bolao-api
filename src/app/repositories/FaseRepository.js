const db = require('../../database');

class CampeonatoRepository {
  async findAll(orderBy = 'ASC') {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT *
      FROM fases f
      LEFT JOIN fases_campeonatos fc ON f.id = fc.id_fase
      ORDER BY fc.ordem ${direction}, nome ${direction}
    `);
    return rows;
  }
}

module.exports = new CampeonatoRepository();
