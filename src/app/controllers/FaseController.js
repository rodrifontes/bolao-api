const FaseRepository = require('../repositories/FaseRepository');
const isValidUUID = require('../utils/isValidUUID');

class FaseController {
  async index(request, response) {
    const fases = await FaseRepository.findAll();
    response.json(fases);
  }
}

module.exports = new FaseController();
