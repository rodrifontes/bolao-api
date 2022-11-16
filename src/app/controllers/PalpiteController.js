const PalpiteRepository = require('../repositories/PalpiteRepository');
const isValidUUID = require('../utils/isValidUUID');

class PalpiteController {
  async index(request, response) {
    const { orderBy, userId } = request.query;
    const palpites = await PalpiteRepository.findAll(orderBy, userId);
    response.json(palpites);
  }

  async show(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid palpite id' });
    }

    const palpite = await PalpiteRepository.findByID(id);
    if (!palpite) {
      return response.status(404).json({ error: 'Time not found' });
    }

    response.json(time);
  }

  async store(request, response) {
    const {
      usuario_id, jogo_id, placar_mandante, placar_visitante,
    } = request.body;

    if (!usuario_id) return response.status(400).json({ error: 'Usuário é obrigatório' });

    if (usuario_id && !isValidUUID(usuario_id)) {
      return response.status(400).json({ error: 'Usuário inválido' });
    }

    if (!jogo_id) return response.status(400).json({ error: 'Jogo é obrigatório' });

    if (jogo_id && !isValidUUID(jogo_id)) {
      return response.status(400).json({ error: 'Jogo inválido' });
    }

    if (!placar_mandante) return response.status(400).json({ error: 'Placar do mandante é obrigatório' });

    if (!placar_visitante) return response.status(400).json({ error: 'Placar do visitante é obrigatório' });

    const palpiteExists = await PalpiteRepository.findByUsuarioEJogo(usuario_id, jogo_id);
    let palpite;
    if (!palpiteExists) {
      palpite = await PalpiteRepository.create({
        usuario_id,
        jogo_id,
        placar_mandante,
        placar_visitante,
      });
    } else {
      palpite = await PalpiteRepository.update(palpiteExists.id, {
        placar_mandante,
        placar_visitante,
      });
    }

    response.status(201).json(palpite);
  }

  async update(request, response) {
    const { id } = request.params;

    const {
      usuario_id, jogo_id, placar_mandante, placar_visitante,
    } = request.body;

    if (!usuario_id) return response.status(400).json({ error: 'Usuário é obrigatório' });

    if (usuario_id && !isValidUUID(usuario_id)) {
      return response.status(400).json({ error: 'Usuário inválido' });
    }

    if (!jogo_id) return response.status(400).json({ error: 'Jogo é obrigatório' });

    if (jogo_id && !isValidUUID(jogo_id)) {
      return response.status(400).json({ error: 'Jogo inválido' });
    }

    if (!placar_mandante) return response.status(400).json({ error: 'Placar do mandante é obrigatório' });

    if (!placar_visitante) return response.status(400).json({ error: 'Placar do visitante é obrigatório' });

    const palpiteExists = await PalpiteRepository.findByID(id);
    if (!palpiteExists) return response.status(404).json({ error: 'Palpite não encontrado' });

    const palpite = await PalpiteRepository.update(id, {
      usuario_id,
      jogo_id,
      placar_mandante,
      placar_visitante,
    });

    response.json(palpite);
  }

}

module.exports = new PalpiteController();
