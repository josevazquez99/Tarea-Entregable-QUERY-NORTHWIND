SELECT p.ProductName, c.CategoryName, p.UnitPrice 
FROM Products p INNER JOIN Categories c ON p.CategoryID = c.CategoryID
 WHERE p.UnitPrice > ( SELECT AVG(UnitPrice)
						FROM Products 
                        WHERE CategoryID = p.CategoryID )
