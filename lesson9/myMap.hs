myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs

myFilter test [] = []
myFilter test (x:xs) = if test x
                       then x:myFilter test xs
                       else myFilter test xs

myRemove test [] = []
myRemove test (x:xs) = if test x
                       then myRemove test xs
                       else x:myRemove test xs

myProduct xs = foldl (*) 1 xs

myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x

myFoldr f init [] = init
myFoldr f init (x:xs) = f x rightResult
  where rightResult = myFoldr f init xs
