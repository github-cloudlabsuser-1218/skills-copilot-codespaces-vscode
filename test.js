function add(a, b) {
    return a + b;
}

function subtract(a, b) {
    return a - b;
}

function multiply(a, b) {
    return a * b;
}

function divide(a, b) {
    if (b === 0) {
        throw new Error("Division by zero");
    }
    return a / b;
}c

const { divide } = require('./test');

test('divides 6 by 3 to get 2', () => {
    expect(divide(6, 3)).toBe(2);
});

test('divides 5 by 2 to get 2.5', () => {
    expect(divide(5, 2)).toBe(2.5);
});

test('throws an error when dividing by zero', () => {
    expect(() => divide(4, 0)).toThrow("Division by zero");
});