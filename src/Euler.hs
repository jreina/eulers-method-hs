module Euler 
(
  euler
) where

data Result = Result { x :: Double
                     , y :: Double
                     } deriving (Show)                

-- @private
-- Factory function for result computations
computeResult :: (Double -> Double -> Double) -> Double -> Double -> Double -> Result
computeResult slope a b h = Result { x = (a + h), y = b + ((slope a b) * h) }

-- @private
-- The internal recursive function
eulerR :: (Double -> Double -> Double) -> Double -> Double -> Double -> Int -> Int -> [Result] -> [Result]
eulerR slope x_0 y_0 h steps stepsRemaining results
  | stepsRemaining == steps = eulerR slope x_0 y_0 h steps (stepsRemaining - 1) [(computeResult slope x_0 y_0 h)]
  | stepsRemaining == 0 = results
  | otherwise = 
    let curr = last results
        x_1 = x curr
        y_1 = y curr
    in
      eulerR slope x_0 y_0 h steps (stepsRemaining - 1) (results ++ [(computeResult slope x_1 y_1 h)])

-- Approximates the solution to an ordinary differential equation given
-- an initial value, an increment (h) and number of steps to approximate over
euler :: (Double -> Double -> Double) -> Double -> Double -> Double -> Int -> [Result]
euler slope x_0 y_0 h steps = eulerR slope x_0 y_0 h steps steps [Result { x = x_0, y = y_0 }]
