import Euler

-- The ODE
slope x y = x - y

-- Initial values
x_0 = 1.5
y_0 = 2

-- Step size
h = 0.2

-- Number of steps
steps = 5

main :: IO ()
main = print $ euler slope x_0 y_0 h steps