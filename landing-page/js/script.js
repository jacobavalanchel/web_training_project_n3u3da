// This file is intentionally left blank.
const db =require('./database.js');

const sql= 'insert into students ( name, age, grade) values (?, ?, ?)';
const values = ['John Doe', 20, 'A'];
console.log("Landing page script loaded.");

db.query(sql, values, (err, results) => {
    if (err) {
        console.error('Error executing query:', err.stack);
        return;
    }
    console.log('Query executed successfully:', results);
});

const r1 = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

r1.question('Enter your name: ', (name) => {
    console.log(`Hello, ${name}!`);
    r1.close();
});
const readline = require('readline');           
// Ensure readline is required after its usage to avoid ReferenceError
// This is a simple script to demonstrate database interaction and user input
// It inserts a record into the students table and prompts for user input   

