const http = require('http');
const url = require('url');
// At the top of backend.cjs
const sqlite3 = require('sqlite3').verbose();


const server = http.createServer((req, res) => {
    // Set CORS headers for all responses
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

    // Handle preflight OPTIONS request
    if (req.method === 'OPTIONS') {
        res.writeHead(204);
        res.end();
        return;
    }

    const parsedUrl = url.parse(req.url, true);

    if (parsedUrl.pathname === '/slogans' && req.method === 'GET') {
        const randomSlogan = slogans[Math.floor(Math.random() * slogans.length)];
        res.writeHead(200, {'Content-Type': 'application/json'});
        res.end(JSON.stringify({slogan: randomSlogan}));
    } else if (parsedUrl.pathname === '/parent-gender' && req.method === 'GET') {
        const parent = parsedUrl.query.parent;
        let gender = null;
        if (parent === 'mother') gender = 'female';
        else if (parent === 'father') gender = 'male';

        if (gender) {
            res.writeHead(200, {'Content-Type': 'application/json'});
            res.end(JSON.stringify({gender}));
        } else {
            res.writeHead(400, {'Content-Type': 'application/json'});
            res.end(JSON.stringify({error: 'Invalid parent value. Use "mother" or "father".'}));
        }
    } // Add this inside your server's request handler, after the other routes
    else if (parsedUrl.pathname === '/people' && req.method === 'GET') {
        db.all('SELECT * FROM people', [], (err, rows) => {
            if (err) {
                res.writeHead(500, {'Content-Type': 'application/json'});
                res.end(JSON.stringify({error: 'Database error', details: err.message}));
            } else {
                res.writeHead(200, {'Content-Type': 'application/json'});
                res.end(JSON.stringify({people: rows}));
            }
        });
    } else if (parsedUrl.pathname === '/people' && req.method === 'POST') {
        let body = '';
        req.on('data', chunk => {
            body += chunk;
        });
        req.on('end', () => {
            try {
                const data = JSON.parse(body);
                db.run('INSERT INTO people (name, country, motto) VALUES (?, ?, ?)',
                    [data.name, 'chian', 'wuwuwuw '], function (err) {
                    if (err) {
                        res.writeHead(500, {'Content-Type': 'application/json'});
                        res.end(JSON.stringify({error: 'Database error', details: err.message}));
                    } else {
                        res.writeHead(201, {'Content-Type': 'application/json'});
                        res.end(JSON.stringify({id: this.lastID, name: data.name}));
                    }
                });
            } catch (e) {
                res.writeHead(400, {'Content-Type': 'application/json'});
                res.end(JSON.stringify({error: 'Invalid JSON'}));
            }
        });
    } else {
        res.writeHead(404, {'Content-Type': 'application/json'});
        res.end(JSON.stringify({error: 'Not found'}));
    }
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/slogans`);
    console.log(`Parent gender endpoint at http://localhost:${PORT}/parent-gender?parent=mother`);
});


// Create or open the database
const db = new sqlite3.Database('friday.sqlite', (err) => {
    if (err) {
        console.error('Could not connect to SQLite database:', err.message);
    } else {
        console.log('Connected to SQLite database.');
    }
});

db.all('SELECT * FROM people', [], (err, rows) => {
    if (err) {
        console.error('Database error:', err.message);
    } else {
        console.log('people table rows:', rows);
    }
});

