const http = require('http');
const url = require('url');

const slogans = [
    "Time flies, make every second count.",
    "Seize the moment, shape your future.",
    "Every tick is an opportunity.",
    "Make time your ally, not your enemy.",
    "Success is built one minute at a time.",
    "Don't watch the clock, do what it does—keep going.",
    "Your time, your legacy."
];

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
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ slogan: randomSlogan }));
    } else if (parsedUrl.pathname === '/parent-gender' && req.method === 'GET') {
        const parent = parsedUrl.query.parent;
        let gender = null;
        if (parent === 'mother') gender = 'female';
        else if (parent === 'father') gender = 'male';

        if (gender) {
            res.writeHead(200, { 'Content-Type': 'application/json' });
            res.end(JSON.stringify({ gender }));
        } else {
            res.writeHead(400, { 'Content-Type': 'application/json' });
            res.end(JSON.stringify({ error: 'Invalid parent value. Use "mother" or "father".' }));
        }
    } else {
        res.writeHead(404, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({ error: 'Not found' }));
    }
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/slogans`);
    console.log(`Parent gender endpoint at http://localhost:${PORT}/parent-gender?parent=mother`);
});