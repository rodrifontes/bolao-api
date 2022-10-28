const db = require('../../database');

class UsuarioRepository {
  async findAll(orderBy = 'ASC') {
    const direction = orderBy.toUpperCase() === 'DESC' ? 'DESC' : 'ASC';
    const rows = await db.query(`
      SELECT *
      FROM usuarios
      ORDER BY nome ${direction}
    `);
    return rows;
  }

  async findByEmail(email) {
    const [row] = await db.query('SELECT * FROM usuarios WHERE email = $1', [email]);
    return row;
  }

  async findByID(id) {
    const [row] = await db.query(`
      SELECT *
      FROM usuarios
      WHERE id = $1
    `, [id]);
    return row;
  }

  async create({
    nome, email, telefone, senha,
  }) {
    const [row] = await db.query(`
    INSERT INTO usuarios (nome, email, telefone, senha)
    VALUES ($1, $2, $3, MD5($4))
    RETURNING *;
    `, [nome, email, telefone, senha]);

    return row;
  }

  async update(id, {
    nome, email, telefone, senha,
  }) {
    const [row] = await db.query(`
      UPDATE usuarios SET
      nome = $1,
      email = $2,
      telefone = $3,
      senha = $4
      WHERE id = $5
      RETURNING *;
    `, [nome, email, telefone, senha, id]);
    return row;
  }

  async delete(id) {
    const deleteOp = await db.query('DELETE FROM usuarios WHERE id = $1;', [id]);
    return deleteOp;
  }

}

module.exports = new UsuarioRepository();
