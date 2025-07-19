SELECT * FROM Atores
SELECT * FROM Filmes
SELECT * FROM ElencoFilme
SELECT * FROM FilmesGenero
SELECT * FROM Generos

--       Primeira Consulta

SELECT Nome,Ano 
FROM Filmes

--       Segunda Consulta

SELECT Nome,Ano 
FROM Filmes 
ORDER BY Ano

--       Terceira Consulta

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

--       Quarta Consulta

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Ano = 1997

--       Quinta Consulta

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Ano >2000

--       Sexta Consulta

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

--       Sétima Consulta

SELECT Ano , COUNT(Ano) AS Quantidade 
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

--       Oitava Consulta

SELECT Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'M'

--       Nona Consulta

SELECT Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--       Décima Consulta

SELECT F.Nome, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON G.Id = FG.IdGenero

--       Décima Primeira Consulta

SELECT F.Nome, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--       Décima Segunda Consulta

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
FROM Atores AS A
JOIN ElencoFilme AS EF ON A.Id = EF.IdAtor
JOIN Filmes AS F ON F.Id = EF.IdFilme
