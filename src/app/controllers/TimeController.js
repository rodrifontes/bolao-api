const TimeRepository = require('../repositories/TimeRepository');
const isValidUUID = require('../utils/isValidUUID');

class TimeController {
  async index(request, response) {
    const { orderBy } = request.query;
    const times = await TimeRepository.findAll(orderBy);
    response.json(times);
  }

  async show(request, response) {
    const { id } = request.params;

    if (!isValidUUID(id)) {
      return response.status(400).json({ error: 'Invalid time id' });
    }

    const time = await TimeRepository.findByID(id);
    if (!time) {
      return response.status(404).json({ error: 'Time not found' });
    }

    response.json(time);
  }

  async store(request, response) {
    const {
      nome, nome_reduzido, path_escudo,
    } = request.body;

    if (!nome) return response.status(400).json({ error: 'Nome is required' });

    if (!nome_reduzido) return response.status(400).json({ error: 'Nome reduzido is required' });

    if (!path_escudo) return response.status(400).json({ error: 'Path do escudo is required' });

    const time = await TimeRepository.create({
      nome,
      nome_reduzido,
      path_escudo,
    });

    response.status(201).json(time);
  }

  async update(request, response) {

  }

  async delete(request, response) {

  }
}

module.exports = new TimeController();
