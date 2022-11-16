const AuthRepository = require('../repositories/AuthRepository');
const UsuarioRepository = require('../repositories/usuarioRepository');
const jwt = require('jsonwebtoken');
const authConfig = require('../config/auth');

class AuthController {

  async singin(request, response) {
    const {
      email, senha,
    } = request.body;

    if (!email) return response.status(400).json({ error: 'E-mail é obrigatório' });
    if (!senha) return response.status(400).json({ error: 'Senha é obrigatório' });

    const usuarioExists = await UsuarioRepository.findByEmail(email);
    if (!usuarioExists) return response.status(401).json({ error: 'Usuário não encontrado!' });

    const usuario = await AuthRepository.signin(email, senha);
    if (!usuario) return response.status(401).json({ error: 'Senha incorreta!' });

    const access_token = jwt.sign({ ...usuario, }, authConfig.jwt.secretKey, { expiresIn: authConfig.jwt.expiresIn, });
    delete usuario.senha;
    return response.status(200).json({ access_token, user: usuario });

  }
}

module.exports = new AuthController();
