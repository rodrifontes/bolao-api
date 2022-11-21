const JogoRepository = require('../repositories/JogoRepository');
const isValidUUID = require('../utils/isValidUUID');

class JogoController {
  async index(request, response) {
    const { orderBy } = request.query;
    const jogos = await JogoRepository.findAll(orderBy);
    response.json(jogos);
  }

  async show(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Id do time inválido' });
    }

    const jogo = await JogoRepository.findByID(id);
    if (!jogo) {
      return response.status(404).json({ error: 'Jogo não encontrado' });
    }

    response.json(time);
  }

  async store(request, response) {
    const {
      mandante_id, visitante_id, campeonato_id, fase_id, data, local,
    } = request.body;

    if (!mandante_id) return response.status(400).json({ error: 'Time mandante é obrigatório' });

    if (mandante_id && !isValidUUID(mandante_id)) {
      return response.status(400).json({ error: 'Inválido time mandante' });
    }

    if (!visitante_id) return response.status(400).json({ error: 'Time visitante é obrigatório' });

    if (visitante_id && !isValidUUID(visitante_id)) {
      return response.status(400).json({ error: 'Time visitante inválido' });
    }

    if (!campeonato_id) return response.status(400).json({ error: 'Campeonato é obrigatório' });

    if (campeonato_id && !isValidUUID(campeonato_id)) {
      return response.status(400).json({ error: 'Campronato inválido' });
    }

    if (!fase_id) return response.status(400).json({ error: 'Fase é obrigatória' });

    if (fase_id && !isValidUUID(fase_id)) {
      return response.status(400).json({ error: 'Fase inválida' });
    }

    if (!data) return response.status(400).json({ error: 'Data é obrigatória' });

    const time = await JogoRepository.create({
      mandante_id,
      visitante_id,
      campeonato_id,
      fase_id,
      data,
      local
    });

    response.status(201).json(time);
  }

  async updateResultado(request, response) {
    const { id } = request.params;

    const {
      gols_mandante, gols_visitante,
    } = request.body;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Id Jogo Invalido' });
    }

    if (!gols_mandante) {
      return response.status(400).json({
        error: 'Número de Gols do Mandante é Obrigatório'
      });
    }

    if (!gols_visitante) {
      return response.status(400).json({
        error: 'Número de Gols do Visitante é Obrigatório'
      });
    }

    const jogoExists = await JogoRepository.findByID(id);
    if (!jogoExists) return response.status(404).json({ error: 'Jogo não encontrado' });

    const jogo = await JogoRepository.updateResultado(id, {
      gols_mandante,
      gols_visitante,
    });

    response.json(jogo);
  }

  async delete(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Id jogo inválido' });
    }
    await JogoRepository.delete(id);

    response.sendStatus(204);
  }
}

module.exports = new JogoController();
