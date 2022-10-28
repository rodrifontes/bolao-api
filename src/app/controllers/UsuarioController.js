const UsuarioRepository = require('../repositories/UsuarioRepository');

class UsuarioController {
  async index(request, response) {
    const { orderBy } = request.query;
    const usuarios = await UsuarioRepository.findAll(orderBy);
    response.json(usuarios);
  }

  async show(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid usuário id' });
    }

    const usuario = await UsuarioRepository.findByID(id);
    if (!usuario) {
      return response.status(404).json({ error: 'Usuário not found' });
    }

    response.json(usuario);
  }

  async store(request, response) {
    const {
      nome, email, telefone, senha,
    } = request.body;

    console.log({
      nome, email, telefone, senha,
    });

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

  async update(request, response) {
    const { id } = request.params;

    const {
      nome, email, telefone, senha,
    } = request.body;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid usuário id' });
    }

    if (!nome) return response.status(400).json({ error: 'Nome é obrigatório' });
    if (!email) return response.status(400).json({ error: 'E-mail é obrigatório' });
    if (!telefone) return response.status(400).json({ error: 'Telefone é obrigatório' });
    if (!senha) return response.status(400).json({ error: 'Senha é obrigatório' });

    //const usuarioExists = await UsuarioRepository.findByEmail(email);
    //if (usuarioExists) return response.status(400).json({ error: 'Esse e-mail já está em uso' });

    const usuario = await UsuarioRepository.update(id, {
      nome, email, telefone, senha,
    });

    response.json(usuario);
  }

  async delete(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid usuário id' });
    }
    await UsuarioRepository.delete(id);

    response.sendStatus(204);
  }
}

module.exports = new UsuarioController();
