const pg = require('pg')

const pool = new pg.Pool({
    host: 'localhost',
    port: 4000,
    user: 'postgres',
    password: '1990suxrob4442',
    database: 'look'
})

let query = `
    INSERT INTO users(
        user_name,
        last_name,
        contact
    ) VALUES ('Maftuna', 'Xujaeva', '998999999999')
    RETURNING *;
`

async function fetching() {
    const client = await pool.connect()
    try {
        let data = await client.query('SELECT * FROM users')
        // let data = await client.query(query)
        console.log(data.rows);
    } catch (error) {
        console.log(error.rows);
    } finally {
        client.release()
    }
}
fetching()