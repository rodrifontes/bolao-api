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

router.get('/usuarios', UsuarioController.index);

router.get('/times', isAuthenticated, TimeController.index);
router.get('/times/:id', isAuthenticated, TimeController.show);
router.delete('/times/:id', isAuthenticated, TimeController.delete);
router.post('/times', isAuthenticated, TimeController.store);
router.put('/times/:id', isAuthenticated, TimeController.update);

router.get('/campeonatos', isAuthenticated, CampeonatoController.index);
router.get('/campeonatos/:id', isAuthenticated, CampeonatoController.show);
router.delete('/campeonatos/:id', isAuthenticated, CampeonatoController.delete);
router.post('/campeonatos', isAuthenticated, CampeonatoController.store);
router.put('/campeonatos/:id', isAuthenticated, CampeonatoController.update);

router.get('/jogos', isAuthenticated, JogoController.index);
router.post('/jogos', isAuthenticated, JogoController.store);

router.get('/fases', isAuthenticated, FaseController.index);


module.exports = router;
