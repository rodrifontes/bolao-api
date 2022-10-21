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
      return response.status(400).json({ error: 'Invalid time id' });
    }

    const time = await JogoRepository.findByID(id);
    if (!time) {
      return response.status(404).json({ error: 'Time not found' });
    }

    response.json(time);
  }

  async store(request, response) {
    const {
      mandante_id, visitante_id, campeonato_id, fase_id, data, local,
    } = request.body;

    if (!mandante_id) return response.status(400).json({ error: 'Time mandante is required' });

    if (mandante_id && !isValidUUID(mandante_id)) {
      return response.status(400).json({ error: 'Invalid time mandante' });
    }

    if (!visitante_id) return response.status(400).json({ error: 'Time visitante is required' });

    if (visitante_id && !isValidUUID(visitante_id)) {
      return response.status(400).json({ error: 'Invalid time visitante' });
    }

    if (!campeonato_id) return response.status(400).json({ error: 'Campeonato is required' });

    if (campeonato_id && !isValidUUID(campeonato_id)) {
      return response.status(400).json({ error: 'Invalid campeonato' });
    }

    if (!fase_id) return response.status(400).json({ error: 'Fase is required' });

    if (fase_id && !isValidUUID(fase_id)) {
      return response.status(400).json({ error: 'Invalid fase' });
    }

    if (!data) return response.status(400).json({ error: 'Data is required' });

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

  async update(request, response) {
    const { id } = request.params;

    const {
      nome, nome_reduzido, path_escudo,
    } = request.body;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid time id' });
    }

    if (!nome) return response.status(400).json({ error: 'Nome is required' });

    if (!nome_reduzido) return response.status(400).json({ error: 'Nome reduzido is required' });

    if (!path_escudo) return response.status(400).json({ error: 'Path do escudo is required' });

    const timeExists = await TimeRepository.findByID(id);
    if (!timeExists) return response.status(404).json({ error: 'Time not found' });

    const time = await JogoRepository.update(id, {
      nome,
      nome_reduzido,
      path_escudo,
    });

    response.json(time);
  }

  async delete(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid jogo id' });
    }
    await JogoRepository.delete(id);

    response.sendStatus(204);
  }
}

module.exports = new JogoController();
