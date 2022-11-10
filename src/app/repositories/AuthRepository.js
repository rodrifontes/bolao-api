const db = require('../../database');

class AuthRepository {
  async signin(email, password) {
    const [row] = await db.query('SELECT * FROM usuarios WHERE email = $1 AND senha = $2', [email, password]);
    return row;
  }
}

module.exports = new AuthRepository();
