const db = require('../../database');

class UsuarioRepository {
  async findByEmail(email) {
    const [row] = await db.query('SELECT * FROM usuarios WHERE email = $1', [email]);
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
}

module.exports = new UsuarioRepository();
