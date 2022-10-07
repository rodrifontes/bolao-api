const { Router } = require('express');

const UsuarioController = require('./app/controllers/UsuarioController');
const TimeController = require('./app/controllers/TimeController');
const CampeonatoController = require('./app/controllers/CampeonatoController');

const router = Router();

router.post('/usuarios', UsuarioController.store);

router.get('/times', TimeController.index);
router.get('/times/:id', TimeController.show);
router.delete('/times/:id', TimeController.delete);
router.post('/times', TimeController.store);
router.put('/times/:id', TimeController.update);

router.get('/campeonatos', CampeonatoController.index);
router.get('/campeonatos/:id', CampeonatoController.show);
router.delete('/campeonatos/:id', CampeonatoController.delete);
router.post('/campeonatos', CampeonatoController.store);
router.put('/campeonatos/:id', CampeonatoController.update);

module.exports = router;
