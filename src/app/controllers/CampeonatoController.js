const CampeonatoRepository = require('../repositories/CampeonatoRepository');
const isValidUUID = require('../utils/isValidUUID');

class CampeonatoController {
  async index(request, response) {
    const { orderBy } = request.query;
    const campeonatos = await CampeonatoRepository.findAll(orderBy);
    response.json(campeonatos);
  }

  async show(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid campeonato id' });
    }

    const campeonato = await CampeonatoRepository.findByID(id);
    if (!campeonato) {
      return response.status(404).json({ error: 'Campeonato not found' });
    }

    response.json(campeonato);
  }

  async store(request, response) {
    const {
      nome,
    } = request.body;

    if (!nome) return response.status(400).json({ error: 'Nome is required' });

    const campeonato = await CampeonatoRepository.create({
      nome,
    });

    response.status(201).json(campeonato);
  }

  async update(request, response) {
    const { id } = request.params;

    const {
      nome,
    } = request.body;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid campeonato id' });
    }

    if (!nome) return response.status(400).json({ error: 'Nome is required' });

    const campeonatoExists = await CampeonatoRepository.findByID(id);
    if (!campeonatoExists) return response.status(404).json({ error: 'Campeonato not found' });

    const campeonato = await CampeonatoRepository.update(id, {
      nome,
    });

    response.json(campeonato);
  }

  async delete(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid campeonato id' });
    }
    await CampeonatoRepository.delete(id);

    response.sendStatus(204);
  }
}

module.exports = new CampeonatoController();
