const UsuarioRepository = require('../repositories/UsuarioRepository');

class UsuarioController {
  async store(request, response) {
    const {
      nome, email, telefone, senha,
    } = request.body;

    if (!nome) return response.status(400).json({ error: 'Nome é obrigatório' });
    if (!email) return response.status(400).json({ error: 'E-mail é obrigatório' });
    if (!telefone) return response.status(400).json({ error: 'Telefone é obrigatório' });
    if (!senha) return response.status(400).json({ error: 'Senha é obrigatório' });

    const usuarioExists = await UsuarioRepository.findByEmail(email);
    if (usuarioExists) return response.status(400).json({ error: 'Esse e-mail já está em uso' });

    const usuario = await UsuarioRepository.create({
      nome, email, telefone, senha,
    });

    response.json(usuario);
  }
}

module.exports = new UsuarioController();
