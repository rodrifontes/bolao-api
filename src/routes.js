const { Router } = require('express');

const UsuarioController = require('./app/controllers/UsuarioController');
const TimeController = require('./app/controllers/TimeController');
const CampeonatoController = require('./app/controllers/CampeonatoController');
const JogoController = require('./app/controllers/JogoController');
const FaseController = require('./app/controllers/FaseController');
const AuthController = require('./app/controllers/AuthController');
const isAuthenticated = require('./app/middlewares/isAuthenticated');

const router = Router();

router.post('/login', AuthController.singin);
router.post('/usuarios', UsuarioController.store);

router.use(isAuthenticated);

router.get('/usuarios', UsuarioController.index);

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

router.get('/jogos', JogoController.index);
router.post('/jogos', JogoController.store);

router.get('/fases', FaseController.index);


module.exports = router;
