const { Pool } = require('pg');

const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    password: 'ro17003904',
    database: 'firstapi',
    port: '5432'
})

const getUsers = async (req,res)=>{
    const response = await pool.query('SELECT * FROM users');
    res.status(200).json(response.rows);
    console.log(response.rows);
}

const getProducto = async (req,res)=>{
    const response = await pool.query('SELECT * FROM producto');
    res.status(200).json(response.rows);
    console.log(response.rows);
}

const updatedUser = async(req, res)=>{
    const id = req.params.id;
    const { name, email } = req.body;
    const response = await pool.query('UPDATE users SET name = $1, email = $2 WHERE id = $3',[
        name,
        email,
        id
    ]);
    console.log(response);
    res.json('User Update succesfuly')
}

const getUsersById = async(req, res)=>{
    const id = req.params.id;
    const response = await pool.query('SELECT * FROM users WHERE id = $1', [id])
    res.json(response.rows);
}

const createUsers = async (req, res)=>{
    const {name, email} =req.body;

    const response = await pool.query('INSERT INTO users (name, email) VALUES ($1,$2)', [name,email]);
    console.log(response);
    res.json({
        message: 'User Added Succesfully',
        body: {
            user: {name, email}
        }
    })
};

const deleteUsers = async (req, res)=>{
    const id = req.params.id;
    const response = await pool.query('DELETE FROM users WHERE id = $1', [id])
    console.log(response);
    res.json(`Users ${id} delete Successful`);
};

module.exports = {
    getUsers,
    createUsers,
    getUsersById,
    deleteUsers,
    updatedUser,
    getProducto
}