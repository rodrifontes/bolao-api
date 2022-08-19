const { Router } = require('express');

const UsuarioController = require('./app/controllers/UsuarioController');
const TimeController = require('./app/controllers/TimeController');

const router = Router();

router.post('/usuarios', UsuarioController.store);

router.get('/times', TimeController.index);
router.get('/times/:id', TimeController.show);
router.delete('/times/:id', TimeController.delete);
router.post('/times', TimeController.store);
router.put('/times:id', TimeController.update);

module.exports = router;
