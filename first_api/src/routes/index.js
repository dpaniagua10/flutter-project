const { Routex, Router } = require('express');
const router = Router();

const { getUsers, createUsers, getUsersById, deleteUsers, updatedUser,
    getProducto
    } = require("../controllers/index.controller");



router.get('/users', getUsers);
router.get('/product', getProducto);
router.get('/users/:id', getUsersById);
router.post('/users', createUsers);
router.delete('/users/:id', deleteUsers);
router.put('/users/:id', updatedUser);

module.exports = router;