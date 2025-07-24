console.log((a,b)=>{console.log( a+b);});

const fruits = ['apple', 'banana', 'cherry'];

fruits.forEach(fruit => {
    //to upper caase
    console.log(fruit.toUpperCase());
});
// input a number and check if it is positive


const timedOut = () => {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve('suceess!');
      }, 1000);
    });
};

const checkPositive = (number) => {
    return new Promise((resolve, reject) => {
        if (number > 0) {
            resolve('Positive!');
        } else {
            reject('Error!');
        }
    });
};

checkPositive(5).then(console.log).catch(console.error); // "Positive!"
checkPositive(-1).then(console.log).catch(console.error); // "Error!"
timedOut().then(console.log).catch(console.error); // "success!"