const { Routex, Router } = require('express');
const router = Router();

const { getUsers, createUsers, getUsersById, deleteUsers, updatedUser } = require("../controllers/index.controller");


router.get('/users', getUsers);
router.get('/users/:id', getUsersById);
router.post('/users', createUsers);
router.delete('/users/:id', deleteUsers);
router.put('/users/:id', updatedUser);

module.exports = router;