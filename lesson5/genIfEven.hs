ifEven f x = if even x then f x else x

genIfEven f = (\x -> ifEven f x)

