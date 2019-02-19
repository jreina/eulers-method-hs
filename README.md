# Euler's Method
A function to help estimate the point-set solution to an ordinary differential equation.

## Why?
Because this was easier than doing the WebWork problem by hand.

## Usage
You can change the inputs in `Source/Example.hs` to specify your own DE, initial values, step size, and explicit solution. Once you've set these inputs, run `ghc Example.hs` and your data will be printed to the console.

The approximation function can be used by itself by importing `Euler`.

**Beware of floating point issues. The default settings in `Example.hs` demonstrate a floating point error in the `x` value.**

## License?
MIT
