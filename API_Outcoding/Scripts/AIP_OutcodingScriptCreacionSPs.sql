--SP para la obtener la lista de paises con los diferentes filtros
CREATE PROCEDURE ObtenerPaises @namePais VARCHAR(100) = NULL, @isoCode VARCHAR(2) = NULL, @nameHotel VARCHAR(100) = NULL, @nameRestaurant VARCHAR(100) = NULL, @pag int, @tampag int
AS
BEGIN

	SELECT P.id, P.name, P.isoCode, P.population FROM Pais P
	INNER JOIN RestaurantXPais RP ON RP.idPais = P.id
	INNER JOIN HotelXPais HP ON HP.idPais = P.id
	INNER JOIN Restaurant R ON R.id = RP.idRestaurant
	INNER JOIN Hotel H ON H.id = HP.idHotel
	WHERE UPPER(P.name) LIKE ('%'+UPPER(ISNULL(@namePais,P.name))+'%')
	AND P.isoCode LIKE ('%'+UPPER(ISNULL(@isoCode,P.isoCode))+'%')
	AND UPPER(R.name) LIKE ('%'+UPPER(ISNULL(@nameRestaurant,R.name))+'%')
	AND UPPER(H.name) LIKE ('%'+UPPER(ISNULL(@nameHotel,H.name))+'%')
	GROUP BY P.id,P.name,P.isoCode,P.population
	ORDER BY P.id
	OFFSET(@pag - 1) * @tamPag ROWS
	FETCH NEXT @TamPag ROWS ONLY;

END

--SP para la obtener la información de los hoteles del pais
CREATE PROCEDURE ObtenerHotelesXPais @idPais INT
AS
BEGIN

	SELECT H.id,H.name,H.starts FROM HotelXPais HP
	INNER JOIN Hotel H ON HP.idHotel = H.id
	WHERE HP.idPais = @idPais 

END

--SP para la obtener la información de los restaurantes del pais
CREATE PROCEDURE ObtenerRestaurantesXPais @idPais INT
AS
BEGIN

	SELECT R.id,R.name,R.type FROM RestaurantXPais RP
	INNER JOIN Restaurant R ON RP.idRestaurant = R.id
	WHERE RP.idPais = @idPais

END

