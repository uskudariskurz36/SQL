SELECT Brands.Name, T.Count FROM 
	(SELECT BrandProducts.BrandId, COUNT(*) as [Count] 
	FROM [BrandProducts]
	GROUP BY BrandProducts.BrandId) AS T
inner join Brands on Brands.Id = T.BrandId