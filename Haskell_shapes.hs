-- Shapes.hs

main :: IO ()
main = putStr $ unlines $ concat shapes

shapes :: [[String]]
shapes = [square 5, triangle 5, diamond 5, hexagon 5]

-- Square function
square :: Int -> [String]
square n = replicate n (replicate n '*')

-- Triangle function
triangle :: Int -> [String]
triangle n = [replicate i '*' | i <- [1..n]]

-- Diamond function
diamond :: Int -> [String]
diamond n = top ++ middle ++ bottom
  where
    top = [replicate (n - i) ' ' ++ replicate (2 * i - 1) '*' | i <- [1..n-1]]
    middle = [replicate (2 * n - 1) '*']
    bottom = reverse top

-- Hexagon function
hexagon :: Int -> [String]
hexagon n = top ++ middle ++ bottom
  where
    top = [replicate (n - i) ' ' ++ replicate (2 * n + 2 * i) '*' | i <- [0..n-1]]
    middle = replicate n (replicate (4 * n - 1) '*')
    bottom = reverse top

-- Plus function
plus :: Int -> [String]
plus n = let line = replicate n ' ' ++ replicate n '*' ++ replicate n ' '
             middle = replicate (3 * n) '*'
         in replicate n line ++ [middle] ++ replicate n line

-- Star function
star :: Int -> [String]
star n = top ++ [middle] ++ bottom
  where
    middle = replicate (4 * n - 1) '*'
    top = [replicate (2 * n - i - 1) ' ' ++ "*" | i <- [0..n-1]]
    bottom = reverse top

-- Hollow Square function
hollowSquare :: Int -> [String]
hollowSquare n = [border] ++ middle ++ [border]
  where
    border = replicate n '*'
    middle = [ "*" ++ replicate (n - 2) ' ' ++ "*" | _ <- [1..n-2] ]

-- Function to print a shape separator
separator :: Int -> String
separator n = replicate n '='

-- All shapes together
allShapes :: [String]
allShapes = concatMap (\f -> separator 20 : f 5 ++ [""]) 
                       [square, triangle, diamond, hexagon, plus, star, hollowSquare]
