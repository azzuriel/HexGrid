module Tests where

import open Public.ElmTest.ElmTest

import open HexGrid

testRectangularHexGridBool = testFunction2 "rectangularHexGrid" rectangularHexGrid
    [ (((1,1), True), Rectangular ([[{ coord = { x = 0, y = 0 }, value = True }],[{ coord = { x = 0, y = 1 }, value = True }]]))
    , (((1,1), False), Rectangular ([[{ coord = { x = 0, y = 0 }, value = False }],[{ coord = { x = 0, y = 1 }, value = False }]]))
    , (((2,1), True), Rectangular ([[{ coord = { x = 0, y = 0 }, value = True },{ coord = { x = 1, y = 0 }, value = True }],[{ coord = { x = 0, y = 1 }, value = True },{ coord = { x = 1, y = 1 }, value = True }]]))
    , (((0,1), True), Rectangular [[],[]])
    , (((1,0), True), Rectangular [])
    , (((5,3), False), Rectangular ([[{ coord = { x = 0, y = 0 }, value = False },{ coord = { x = 1, y = 0 }, value = False },{ coord = { x = 2, y = 0 }, value = False },{ coord = { x = 3, y = 0 }, value = False },{ coord = { x = 4, y = 0 }, value = False }],[{ coord = { x = 0, y = 1 }, value = False },{ coord = { x = 1, y = 1 }, value = False },{ coord = { x = 2, y = 1 }, value = False },{ coord = { x = 3, y = 1 }, value = False },{ coord = { x = 4, y = 1 }, value = False }],[{ coord = { x = -1, y = 2 }, value = False },{ coord = { x = 0, y = 2 }, value = False },{ coord = { x = 1, y = 2 }, value = False },{ coord = { x = 2, y = 2 }, value = False },{ coord = { x = 3, y = 2 }, value = False }],[{ coord = { x = -1, y = 3 }, value = False },{ coord = { x = 0, y = 3 }, value = False },{ coord = { x = 1, y = 3 }, value = False },{ coord = { x = 2, y = 3 }, value = False },{ coord = { x = 3, y = 3 }, value = False }]]))
    ] 

testRectangularHexGridInt = testFunction2 "rectangularHexGrid" rectangularHexGrid
    [ (((1,1), 0), Rectangular ([[{ coord = { x = 0, y = 0 }, value = 0 }],[{ coord = { x = 0, y = 1 }, value = 0 }]]))
    , (((1,1), 1), Rectangular ([[{ coord = { x = 0, y = 0 }, value = 1 }],[{ coord = { x = 0, y = 1 }, value = 1 }]]))
    , (((2,1), -1), Rectangular ([[{ coord = { x = 0, y = 0 }, value = -1 },{ coord = { x = 1, y = 0 }, value = -1 }],[{ coord = { x = 0, y = 1 }, value = -1 },{ coord = { x = 1, y = 1 }, value = -1 }]]))
    , (((0,1), 100), Rectangular [[],[]])
    , (((1,0), 1000), Rectangular [])
    , (((5,3), 10000), Rectangular ([[{ coord = { x = 0, y = 0 }, value = 10000 },{ coord = { x = 1, y = 0 }, value = 10000 },{ coord = { x = 2, y = 0 }, value = 10000 },{ coord = { x = 3, y = 0 }, value = 10000 },{ coord = { x = 4, y = 0 }, value = 10000 }],[{ coord = { x = 0, y = 1 }, value = 10000 },{ coord = { x = 1, y = 1 }, value = 10000 },{ coord = { x = 2, y = 1 }, value = 10000 },{ coord = { x = 3, y = 1 }, value = 10000 },{ coord = { x = 4, y = 1 }, value = 10000 }],[{ coord = { x = -1, y = 2 }, value = 10000 },{ coord = { x = 0, y = 2 }, value = 10000 },{ coord = { x = 1, y = 2 }, value = 10000 },{ coord = { x = 2, y = 2 }, value = 10000 },{ coord = { x = 3, y = 2 }, value = 10000 }],[{ coord = { x = -1, y = 3 }, value = 10000 },{ coord = { x = 0, y = 3 }, value = 10000 },{ coord = { x = 1, y = 3 }, value = 10000 },{ coord = { x = 2, y = 3 }, value = 10000 },{ coord = { x = 3, y = 3 }, value = 10000 }]]))
    ]    

testRectangularHexGrid = testRectangularHexGridBool ++ testRectangularHexGridInt

testHexagonalHexGridBool = testFunction2 "hexagonalHexGrid" hexagonalHexGrid
    [ ((1, True),  Hexagonal ([[{ coord = { x = 0, y = -1 }, value = True },{ coord = { x = 1, y = -1 }, value = True }],[{ coord = { x = -1, y = 0 }, value = True },{ coord = { x = 0, y = 0 }, value = True },{ coord = { x = 1, y = 0 }, value = True }],[{ coord = { x = -1, y = 1 }, value = True },{ coord = { x = 0, y = 1 }, value = True }]]))
    , ((1, False), Hexagonal ([[{ coord = { x = 0, y = -1 }, value = False },{ coord = { x = 1, y = -1 }, value = False }],[{ coord = { x = -1, y = 0 }, value = False },{ coord = { x = 0, y = 0 }, value = False },{ coord = { x = 1, y = 0 }, value = False }],[{ coord = { x = -1, y = 1 }, value = False },{ coord = { x = 0, y = 1 }, value = False }]]))
    , ((2, True),  Hexagonal ([[{ coord = { x = 0, y = -2 }, value = True },{ coord = { x = 1, y = -2 }, value = True },{ coord = { x = 2, y = -2 }, value = True }],[{ coord = { x = -1, y = -1 }, value = True },{ coord = { x = 0, y = -1 }, value = True },{ coord = { x = 1, y = -1 }, value = True },{ coord = { x = 2, y = -1 }, value = True }],[{ coord = { x = -2, y = 0 }, value = True },{ coord = { x = -1, y = 0 }, value = True },{ coord = { x = 0, y = 0 }, value = True },{ coord = { x = 1, y = 0 }, value = True },{ coord = { x = 2, y = 0 }, value = True }],[{ coord = { x = -2, y = 1 }, value = True },{ coord = { x = -1, y = 1 }, value = True },{ coord = { x = 0, y = 1 }, value = True },{ coord = { x = 1, y = 1 }, value = True }],[{ coord = { x = -2, y = 2 }, value = True },{ coord = { x = -1, y = 2 }, value = True },{ coord = { x = 0, y = 2 }, value = True }]]))
    , ((0, True),  Hexagonal ([[{ coord = { x = 0, y = 0 }, value = True }]]))
    , ((5, False), Hexagonal ([[{ coord = { x = 0, y = -5 }, value = False },{ coord = { x = 1, y = -5 }, value = False },{ coord = { x = 2, y = -5 }, value = False },{ coord = { x = 3, y = -5 }, value = False },{ coord = { x = 4, y = -5 }, value = False },{ coord = { x = 5, y = -5 }, value = False }],[{ coord = { x = -1, y = -4 }, value = False },{ coord = { x = 0, y = -4 }, value = False },{ coord = { x = 1, y = -4 }, value = False },{ coord = { x = 2, y = -4 }, value = False },{ coord = { x = 3, y = -4 }, value = False },{ coord = { x = 4, y = -4 }, value = False },{ coord = { x = 5, y = -4 }, value = False }],[{ coord = { x = -2, y = -3 }, value = False },{ coord = { x = -1, y = -3 }, value = False },{ coord = { x = 0, y = -3 }, value = False },{ coord = { x = 1, y = -3 }, value = False },{ coord = { x = 2, y = -3 }, value = False },{ coord = { x = 3, y = -3 }, value = False },{ coord = { x = 4, y = -3 }, value = False },{ coord = { x = 5, y = -3 }, value = False }],[{ coord = { x = -3, y = -2 }, value = False },{ coord = { x = -2, y = -2 }, value = False },{ coord = { x = -1, y = -2 }, value = False },{ coord = { x = 0, y = -2 }, value = False },{ coord = { x = 1, y = -2 }, value = False },{ coord = { x = 2, y = -2 }, value = False },{ coord = { x = 3, y = -2 }, value = False },{ coord = { x = 4, y = -2 }, value = False },{ coord = { x = 5, y = -2 }, value = False }],[{ coord = { x = -4, y = -1 }, value = False },{ coord = { x = -3, y = -1 }, value = False },{ coord = { x = -2, y = -1 }, value = False },{ coord = { x = -1, y = -1 }, value = False },{ coord = { x = 0, y = -1 }, value = False },{ coord = { x = 1, y = -1 }, value = False },{ coord = { x = 2, y = -1 }, value = False },{ coord = { x = 3, y = -1 }, value = False },{ coord = { x = 4, y = -1 }, value = False },{ coord = { x = 5, y = -1 }, value = False }],[{ coord = { x = -5, y = 0 }, value = False },{ coord = { x = -4, y = 0 }, value = False },{ coord = { x = -3, y = 0 }, value = False },{ coord = { x = -2, y = 0 }, value = False },{ coord = { x = -1, y = 0 }, value = False },{ coord = { x = 0, y = 0 }, value = False },{ coord = { x = 1, y = 0 }, value = False },{ coord = { x = 2, y = 0 }, value = False },{ coord = { x = 3, y = 0 }, value = False },{ coord = { x = 4, y = 0 }, value = False },{ coord = { x = 5, y = 0 }, value = False }],[{ coord = { x = -5, y = 1 }, value = False },{ coord = { x = -4, y = 1 }, value = False },{ coord = { x = -3, y = 1 }, value = False },{ coord = { x = -2, y = 1 }, value = False },{ coord = { x = -1, y = 1 }, value = False },{ coord = { x = 0, y = 1 }, value = False },{ coord = { x = 1, y = 1 }, value = False },{ coord = { x = 2, y = 1 }, value = False },{ coord = { x = 3, y = 1 }, value = False },{ coord = { x = 4, y = 1 }, value = False }],[{ coord = { x = -5, y = 2 }, value = False },{ coord = { x = -4, y = 2 }, value = False },{ coord = { x = -3, y = 2 }, value = False },{ coord = { x = -2, y = 2 }, value = False },{ coord = { x = -1, y = 2 }, value = False },{ coord = { x = 0, y = 2 }, value = False },{ coord = { x = 1, y = 2 }, value = False },{ coord = { x = 2, y = 2 }, value = False },{ coord = { x = 3, y = 2 }, value = False }],[{ coord = { x = -5, y = 3 }, value = False },{ coord = { x = -4, y = 3 }, value = False },{ coord = { x = -3, y = 3 }, value = False },{ coord = { x = -2, y = 3 }, value = False },{ coord = { x = -1, y = 3 }, value = False },{ coord = { x = 0, y = 3 }, value = False },{ coord = { x = 1, y = 3 }, value = False },{ coord = { x = 2, y = 3 }, value = False }],[{ coord = { x = -5, y = 4 }, value = False },{ coord = { x = -4, y = 4 }, value = False },{ coord = { x = -3, y = 4 }, value = False },{ coord = { x = -2, y = 4 }, value = False },{ coord = { x = -1, y = 4 }, value = False },{ coord = { x = 0, y = 4 }, value = False },{ coord = { x = 1, y = 4 }, value = False }],[{ coord = { x = -5, y = 5 }, value = False },{ coord = { x = -4, y = 5 }, value = False },{ coord = { x = -3, y = 5 }, value = False },{ coord = { x = -2, y = 5 }, value = False },{ coord = { x = -1, y = 5 }, value = False },{ coord = { x = 0, y = 5 }, value = False }]]))
    ] 

testHexagonalHexGridInt = testFunction2 "hexagonalHexGrid" hexagonalHexGrid
    [ ((1, 0),     Hexagonal ([[{ coord = { x = 0, y = -1 }, value = 0 },{ coord = { x = 1, y = -1 }, value = 0 }],[{ coord = { x = -1, y = 0 }, value = 0 },{ coord = { x = 0, y = 0 }, value = 0 },{ coord = { x = 1, y = 0 }, value = 0 }],[{ coord = { x = -1, y = 1 }, value = 0 },{ coord = { x = 0, y = 1 }, value = 0 }]]))
    , ((1, 1),     Hexagonal ([[{ coord = { x = 0, y = -1 }, value = 1 },{ coord = { x = 1, y = -1 }, value = 1 }],[{ coord = { x = -1, y = 0 }, value = 1 },{ coord = { x = 0, y = 0 }, value = 1 },{ coord = { x = 1, y = 0 }, value = 1 }],[{ coord = { x = -1, y = 1 }, value = 1 },{ coord = { x = 0, y = 1 }, value = 1 }]]))
    , ((2, -1),    Hexagonal ([[{ coord = { x = 0, y = -2 }, value = -1 },{ coord = { x = 1, y = -2 }, value = -1 },{ coord = { x = 2, y = -2 }, value = -1 }],[{ coord = { x = -1, y = -1 }, value = -1 },{ coord = { x = 0, y = -1 }, value = -1 },{ coord = { x = 1, y = -1 }, value = -1 },{ coord = { x = 2, y = -1 }, value = -1 }],[{ coord = { x = -2, y = 0 }, value = -1 },{ coord = { x = -1, y = 0 }, value = -1 },{ coord = { x = 0, y = 0 }, value = -1 },{ coord = { x = 1, y = 0 }, value = -1 },{ coord = { x = 2, y = 0 }, value = -1 }],[{ coord = { x = -2, y = 1 }, value = -1 },{ coord = { x = -1, y = 1 }, value = -1 },{ coord = { x = 0, y = 1 }, value = -1 },{ coord = { x = 1, y = 1 }, value = -1 }],[{ coord = { x = -2, y = 2 }, value = -1 },{ coord = { x = -1, y = 2 }, value = -1 },{ coord = { x = 0, y = 2 }, value = -1 }]]))
    , ((0, 100),   Hexagonal ([[{ coord = { x = 0, y = 0 }, value = 100 }]]))
    , ((5, 10000), Hexagonal ([[{ coord = { x = 0, y = -5 }, value = 10000 },{ coord = { x = 1, y = -5 }, value = 10000 },{ coord = { x = 2, y = -5 }, value = 10000 },{ coord = { x = 3, y = -5 }, value = 10000 },{ coord = { x = 4, y = -5 }, value = 10000 },{ coord = { x = 5, y = -5 }, value = 10000 }],[{ coord = { x = -1, y = -4 }, value = 10000 },{ coord = { x = 0, y = -4 }, value = 10000 },{ coord = { x = 1, y = -4 }, value = 10000 },{ coord = { x = 2, y = -4 }, value = 10000 },{ coord = { x = 3, y = -4 }, value = 10000 },{ coord = { x = 4, y = -4 }, value = 10000 },{ coord = { x = 5, y = -4 }, value = 10000 }],[{ coord = { x = -2, y = -3 }, value = 10000 },{ coord = { x = -1, y = -3 }, value = 10000 },{ coord = { x = 0, y = -3 }, value = 10000 },{ coord = { x = 1, y = -3 }, value = 10000 },{ coord = { x = 2, y = -3 }, value = 10000 },{ coord = { x = 3, y = -3 }, value = 10000 },{ coord = { x = 4, y = -3 }, value = 10000 },{ coord = { x = 5, y = -3 }, value = 10000 }],[{ coord = { x = -3, y = -2 }, value = 10000 },{ coord = { x = -2, y = -2 }, value = 10000 },{ coord = { x = -1, y = -2 }, value = 10000 },{ coord = { x = 0, y = -2 }, value = 10000 },{ coord = { x = 1, y = -2 }, value = 10000 },{ coord = { x = 2, y = -2 }, value = 10000 },{ coord = { x = 3, y = -2 }, value = 10000 },{ coord = { x = 4, y = -2 }, value = 10000 },{ coord = { x = 5, y = -2 }, value = 10000 }],[{ coord = { x = -4, y = -1 }, value = 10000 },{ coord = { x = -3, y = -1 }, value = 10000 },{ coord = { x = -2, y = -1 }, value = 10000 },{ coord = { x = -1, y = -1 }, value = 10000 },{ coord = { x = 0, y = -1 }, value = 10000 },{ coord = { x = 1, y = -1 }, value = 10000 },{ coord = { x = 2, y = -1 }, value = 10000 },{ coord = { x = 3, y = -1 }, value = 10000 },{ coord = { x = 4, y = -1 }, value = 10000 },{ coord = { x = 5, y = -1 }, value = 10000 }],[{ coord = { x = -5, y = 0 }, value = 10000 },{ coord = { x = -4, y = 0 }, value = 10000 },{ coord = { x = -3, y = 0 }, value = 10000 },{ coord = { x = -2, y = 0 }, value = 10000 },{ coord = { x = -1, y = 0 }, value = 10000 },{ coord = { x = 0, y = 0 }, value = 10000 },{ coord = { x = 1, y = 0 }, value = 10000 },{ coord = { x = 2, y = 0 }, value = 10000 },{ coord = { x = 3, y = 0 }, value = 10000 },{ coord = { x = 4, y = 0 }, value = 10000 },{ coord = { x = 5, y = 0 }, value = 10000 }],[{ coord = { x = -5, y = 1 }, value = 10000 },{ coord = { x = -4, y = 1 }, value = 10000 },{ coord = { x = -3, y = 1 }, value = 10000 },{ coord = { x = -2, y = 1 }, value = 10000 },{ coord = { x = -1, y = 1 }, value = 10000 },{ coord = { x = 0, y = 1 }, value = 10000 },{ coord = { x = 1, y = 1 }, value = 10000 },{ coord = { x = 2, y = 1 }, value = 10000 },{ coord = { x = 3, y = 1 }, value = 10000 },{ coord = { x = 4, y = 1 }, value = 10000 }],[{ coord = { x = -5, y = 2 }, value = 10000 },{ coord = { x = -4, y = 2 }, value = 10000 },{ coord = { x = -3, y = 2 }, value = 10000 },{ coord = { x = -2, y = 2 }, value = 10000 },{ coord = { x = -1, y = 2 }, value = 10000 },{ coord = { x = 0, y = 2 }, value = 10000 },{ coord = { x = 1, y = 2 }, value = 10000 },{ coord = { x = 2, y = 2 }, value = 10000 },{ coord = { x = 3, y = 2 }, value = 10000 }],[{ coord = { x = -5, y = 3 }, value = 10000 },{ coord = { x = -4, y = 3 }, value = 10000 },{ coord = { x = -3, y = 3 }, value = 10000 },{ coord = { x = -2, y = 3 }, value = 10000 },{ coord = { x = -1, y = 3 }, value = 10000 },{ coord = { x = 0, y = 3 }, value = 10000 },{ coord = { x = 1, y = 3 }, value = 10000 },{ coord = { x = 2, y = 3 }, value = 10000 }],[{ coord = { x = -5, y = 4 }, value = 10000 },{ coord = { x = -4, y = 4 }, value = 10000 },{ coord = { x = -3, y = 4 }, value = 10000 },{ coord = { x = -2, y = 4 }, value = 10000 },{ coord = { x = -1, y = 4 }, value = 10000 },{ coord = { x = 0, y = 4 }, value = 10000 },{ coord = { x = 1, y = 4 }, value = 10000 }],[{ coord = { x = -5, y = 5 }, value = 10000 },{ coord = { x = -4, y = 5 }, value = 10000 },{ coord = { x = -3, y = 5 }, value = 10000 },{ coord = { x = -2, y = 5 }, value = 10000 },{ coord = { x = -1, y = 5 }, value = 10000 },{ coord = { x = 0, y = 5 }, value = 10000 }]]))
    ]    

testHexagonalHexGrid = testHexagonalHexGridBool ++ testHexagonalHexGridInt

testToHexList = testFunction "toHexList" toHexList
    [ (Rectangular ([[{ coord = { x = 0, y = 0 }, value = True }],[{ coord = { x = 0, y = 1 }, value = True }]]), [[{ coord = { x = 0, y = 0 }, value = True }],[{ coord = { x = 0, y = 1 }, value = True }]])
    , (Hexagonal ([[{ coord = { x = 0, y = 0 }, value = True }]]), [[{ coord = { x = 0, y = 0 }, value = True }]])
    ]

main = runPrettyTests <| testRectangularHexGrid ++ testHexagonalHexGrid ++ testToHexList