mapMaybe :: (a -> b) -> Maybe a -> Maybe b
mapMaybe f Nothing  = Nothing
mapMaybe f (Just x) = Just $ f x



mapListMaybe :: (a -> b) -> [Maybe a] -> [Maybe b]
mapListMaybe f ma = map (mapMaybe f) ma
