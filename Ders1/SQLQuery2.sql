-- ürün adlarý ve marka adlarýný listele
SELECT 
	P.Name
	--, P.Id
	--, BP.BrandId
	, B.Name 
FROM Products AS P
INNER JOIN BrandProducts AS BP ON BP.ProductId = P.Id
INNER JOIN Brands AS B ON B.Id = BP.BrandId