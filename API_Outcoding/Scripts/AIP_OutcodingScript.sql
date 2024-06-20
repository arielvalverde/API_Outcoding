--Creación de tablas

CREATE TABLE Pais (
    id INT identity PRIMARY KEY,
    name VARCHAR(100),
    isoCode VARCHAR(2),
    isoCode2 VARCHAR(3),
	population bigint
);

CREATE TABLE Restaurant (
    id INT identity PRIMARY KEY,
    name VARCHAR(100),
    type varchar(20)
);

CREATE TABLE Hotel (
    id INT identity PRIMARY KEY,
    name VARCHAR(100),
    starts varchar(1)
);

CREATE TABLE HotelXPais(
	id INT identity PRIMARY KEY,
	idPais int,
	idHotel int,
	
	FOREIGN KEY (idPais) REFERENCES Pais(id),
	FOREIGN KEY (idHotel) REFERENCES Hotel(id)
)

CREATE TABLE RestaurantXPais(
	id INT identity PRIMARY KEY,
	idPais int,
	idRestaurant int,
	
	FOREIGN KEY (idPais) REFERENCES Pais(id),
	FOREIGN KEY (idRestaurant) REFERENCES Restaurant(id)
)

--Creación de datos

INSERT INTO Pais (name, isoCode, isoCode2, population) VALUES
('Afghanistan', 'AF', 'AFG', 38928346),
('Albania', 'AL', 'ALB', 2877797),
('Algeria', 'DZ', 'DZA', 43851044),
('Andorra', 'AD', 'AND', 77265),
('Angola', 'AO', 'AGO', 32866272),
('Antigua and Barbuda', 'AG', 'ATG', 97928),
('Argentina', 'AR', 'ARG', 45195777),
('Armenia', 'AM', 'ARM', 2963243),
('Australia', 'AU', 'AUS', 25499884),
('Austria', 'AT', 'AUT', 9006398),
('Azerbaijan', 'AZ', 'AZE', 10139177),
('Bahamas', 'BS', 'BHS', 393244),
('Bahrain', 'BH', 'BHR', 1701575),
('Bangladesh', 'BD', 'BGD', 164689383),
('Barbados', 'BB', 'BRB', 287375),
('Belarus', 'BY', 'BLR', 9449323),
('Belgium', 'BE', 'BEL', 11589623),
('Belize', 'BZ', 'BLZ', 397628),
('Benin', 'BJ', 'BEN', 12123200),
('Bhutan', 'BT', 'BTN', 771608),
('Bolivia', 'BO', 'BOL', 11673021),
('Bosnia and Herzegovina', 'BA', 'BIH', 3280819),
('Botswana', 'BW', 'BWA', 2351627),
('Brazil', 'BR', 'BRA', 212559417),
('Brunei', 'BN', 'BRN', 437479),
('Bulgaria', 'BG', 'BGR', 6948445),
('Burkina Faso', 'BF', 'BFA', 20903273),
('Burundi', 'BI', 'BDI', 11890784),
('Cabo Verde', 'CV', 'CPV', 555987),
('Cambodia', 'KH', 'KHM', 16718965),
('Cameroon', 'CM', 'CMR', 26545863),
('Canada', 'CA', 'CAN', 37742154),
('Central African Republic', 'CF', 'CAF', 4829767),
('Chad', 'TD', 'TCD', 16425864),
('Chile', 'CL', 'CHL', 19116201),
('China', 'CN', 'CHN', 1439323776),
('Colombia', 'CO', 'COL', 50882891),
('Comoros', 'KM', 'COM', 869601),
('Congo (Congo-Brazzaville)', 'CG', 'COG', 5518087),
('Congo (DRC)', 'CD', 'COD', 89561403),
('Costa Rica', 'CR', 'CRI', 5094118),
('Croatia', 'HR', 'HRV', 4105267),
('Cuba', 'CU', 'CUB', 11326616),
('Cyprus', 'CY', 'CYP', 1207359),
('Czechia (Czech Republic)', 'CZ', 'CZE', 10708981),
('Denmark', 'DK', 'DNK', 5792202),
('Djibouti', 'DJ', 'DJI', 988000),
('Dominica', 'DM', 'DMA', 71986),
('Dominican Republic', 'DO', 'DOM', 10847910),
('Ecuador', 'EC', 'ECU', 17643054),
('Egypt', 'EG', 'EGY', 102334404),
('El Salvador', 'SV', 'SLV', 6486201),
('Equatorial Guinea', 'GQ', 'GNQ', 1402985),
('Eritrea', 'ER', 'ERI', 3546421),
('Estonia', 'EE', 'EST', 1326535),
('Eswatini (fmr. "Swaziland")', 'SZ', 'SWZ', 1160164),
('Ethiopia', 'ET', 'ETH', 114963588),
('Fiji', 'FJ', 'FJI', 896445),
('Finland', 'FI', 'FIN', 5540720),
('France', 'FR', 'FRA', 65273511),
('Gabon', 'GA', 'GAB', 2225734),
('Gambia', 'GM', 'GMB', 2416668),
('Georgia', 'GE', 'GEO', 3989167),
('Germany', 'DE', 'DEU', 83783942),
('Ghana', 'GH', 'GHA', 31072940),
('Greece', 'GR', 'GRC', 10423054),
('Grenada', 'GD', 'GRD', 112523),
('Guatemala', 'GT', 'GTM', 17915568),
('Guinea', 'GN', 'GIN', 13132795),
('Guinea-Bissau', 'GW', 'GNB', 1968001),
('Guyana', 'GY', 'GUY', 786552),
('Haiti', 'HT', 'HTI', 11402528),
('Honduras', 'HN', 'HND', 9904607),
('Hungary', 'HU', 'HUN', 9660351),
('Iceland', 'IS', 'ISL', 343599),
('India', 'IN', 'IND', 1380004385),
('Indonesia', 'ID', 'IDN', 273523615),
('Iran', 'IR', 'IRN', 83992949),
('Iraq', 'IQ', 'IRQ', 40222493),
('Ireland', 'IE', 'IRL', 4937786),
('Israel', 'IL', 'ISR', 8655535),
('Italy', 'IT', 'ITA', 60244639),
('Jamaica', 'JM', 'JAM', 2961167),
('Japan', 'JP', 'JPN', 126476461),
('Jordan', 'JO', 'JOR', 10203134),
('Kazakhstan', 'KZ', 'KAZ', 18776707),
('Kenya', 'KE', 'KEN', 53771296),
('Kiribati', 'KI', 'KIR', 119449),
('Kuwait', 'KW', 'KWT', 4270571),
('Kyrgyzstan', 'KG', 'KGZ', 6524195),
('Laos', 'LA', 'LAO', 7275560),
('Latvia', 'LV', 'LVA', 1886198),
('Lebanon', 'LB', 'LBN', 6825445),
('Lesotho', 'LS', 'LSO', 2142249),
('Liberia', 'LR', 'LBR', 5057681),
('Libya', 'LY', 'LBY', 6871292),
('Liechtenstein', 'LI', 'LIE', 38128),
('Lithuania', 'LT', 'LTU', 2722289),
('Luxembourg', 'LU', 'LUX', 634814),
('Madagascar', 'MG', 'MDG', 27691018),
('Malawi', 'MW', 'MWI', 19129952),
('Malaysia', 'MY', 'MYS', 32365999),
('Maldives', 'MV', 'MDV', 540544),
('Mali', 'ML', 'MLI', 20250833),
('Malta', 'MT', 'MLT', 514564),
('Marshall Islands', 'MH', 'MHL', 59190),
('Mauritania', 'MR', 'MRT', 4649658),
('Mauritius', 'MU', 'MUS', 1271768),
('Mexico', 'MX', 'MEX', 128932753),
('Micronesia', 'FM', 'FSM', 548914),
('Moldova', 'MD', 'MDA', 2657637),
('Monaco', 'MC', 'MCO', 39242),
('Mongolia', 'MN', 'MNG', 3278290),
('Montenegro', 'ME', 'MNE', 622359),
('Morocco', 'MA', 'MAR', 36910560),
('Mozambique', 'MZ', 'MOZ', 31255435),
('Myanmar (Burma)', 'MM', 'MMR', 54409800),
('Namibia', 'NA', 'NAM', 2540905),
('Nauru', 'NR', 'NRU', 10824),
('Nepal', 'NP', 'NPL', 29136808),
('Netherlands', 'NL', 'NLD', 17134872),
('New Zealand', 'NZ', 'NZL', 4822233),
('Nicaragua', 'NI', 'NIC', 6624554),
('Niger', 'NE', 'NER', 24206644),
('Nigeria', 'NG', 'NGA', 206139589),
('North Korea', 'KP', 'PRK', 25778816),
('North Macedonia', 'MK', 'MKD', 2083459),
('Norway', 'NO', 'NOR', 5421241),
('Oman', 'OM', 'OMN', 5106626),
('Pakistan', 'PK', 'PAK', 220892340),
('Palau', 'PW', 'PLW', 18094),
('Palestine State', 'PS', 'PSE', 5101414),
('Panama', 'PA', 'PAN', 4314767),
('Papua New Guinea', 'PG', 'PNG', 8947024),
('Paraguay', 'PY', 'PRY', 7132530),
('Peru', 'PE', 'PER', 32971854),
('Philippines', 'PH', 'PHL', 109581078),
('Poland', 'PL', 'POL', 38386000),
('Portugal', 'PT', 'PRT', 10196709),
('Qatar', 'QA', 'QAT', 2881060),
('Romania', 'RO', 'ROU', 19237691),
('Russia', 'RU', 'RUS', 145934462),
('Rwanda', 'RW', 'RWA', 12952218),
('Saint Kitts and Nevis', 'KN', 'KNA', 53192),
('Saint Lucia', 'LC', 'LCA', 183627),
('Saint Vincent and the Grenadines', 'VC', 'VCT', 110940),
('Samoa', 'WS', 'WSM', 198414),
('San Marino', 'SM', 'SMR', 33931),
('Sao Tome and Principe', 'ST', 'STP', 219159),
('Saudi Arabia', 'SA', 'SAU', 34813871),
('Senegal', 'SN', 'SEN', 16743927),
('Serbia', 'RS', 'SRB', 8772235),
('Seychelles', 'SC', 'SYC', 98347),
('Sierra Leone', 'SL', 'SLE', 7976983),
('Singapore', 'SG', 'SGP', 5850342),
('Slovakia', 'SK', 'SVK', 5456362),
('Slovenia', 'SI', 'SVN', 2078654),
('Solomon Islands', 'SB', 'SLB', 686878),
('Somalia', 'SO', 'SOM', 15893222),
('South Africa', 'ZA', 'ZAF', 59308690),
('South Korea', 'KR', 'KOR', 51269185),
('South Sudan', 'SS', 'SSD', 11193725),
('Spain', 'ES', 'ESP', 46754778),
('Sri Lanka', 'LK', 'LKA', 21413249),
('Sudan', 'SD', 'SDN', 43849260),
('Suriname', 'SR', 'SUR', 586632),
('Sweden', 'SE', 'SWE', 10099265),
('Switzerland', 'CH', 'CHE', 8654622),
('Syria', 'SY', 'SYR', 17500658),
('Taiwan', 'TW', 'TWN', 23816775),
('Tajikistan', 'TJ', 'TJK', 9537645),
('Tanzania', 'TZ', 'TZA', 59734218),
('Thailand', 'TH', 'THA', 69799978),
('Timor-Leste', 'TL', 'TLS', 1318445),
('Togo', 'TG', 'TGO', 8278724),
('Tonga', 'TO', 'TON', 105695),
('Trinidad and Tobago', 'TT', 'TTO', 1399488),
('Tunisia', 'TN', 'TUN', 11818619),
('Turkey', 'TR', 'TUR', 84339067),
('Turkmenistan', 'TM', 'TKM', 6031200),
('Tuvalu', 'TV', 'TUV', 11792),
('Uganda', 'UG', 'UGA', 45741007),
('Ukraine', 'UA', 'UKR', 43733762),
('United Arab Emirates', 'AE', 'ARE', 9890402),
('United Kingdom', 'GB', 'GBR', 67886011),
('United States', 'US', 'USA', 331002651),
('Uruguay', 'UY', 'URY', 3473730),
('Uzbekistan', 'UZ', 'UZB', 33469203),
('Vanuatu', 'VU', 'VUT', 307145),
('Vatican City', 'VA', 'VAT', 801),
('Venezuela', 'VE', 'VEN', 28435940),
('Vietnam', 'VN', 'VNM', 97338579),
('Yemen', 'YE', 'YEM', 29825964),
('Zambia', 'ZM', 'ZMB', 18383955),
('Zimbabwe', 'ZW', 'ZWE', 14862924);


INSERT INTO Restaurant (name, type) VALUES
('Restaurante1', 'Vegetarian'),
('Restaurante2', 'Casual'),
('Restaurante3', 'Vegetarian'),
('Restaurante4', 'Casual'),
('Restaurante5', 'Vegetarian'),
('Restaurante6', 'Casual'),
('Restaurante7', 'Vegetarian'),
('Restaurante8', 'Casual'),
('Restaurante9', 'Vegetarian'),
('Restaurante10', 'Casual')


INSERT INTO Hotel (name, starts) VALUES
('Hotel1', '1'),
('Hotel2', '2'),
('Hotel3', '3'),
('Hotel4', '1'),
('Hotel5', '2'),
('Hotel6', '3'),
('Hotel7', '1'),
('Hotel8', '2'),
('Hotel9', '3'),
('Hotel10', '1')

--Método utilizado para la asignación aleatoria de hoteles por país
DECLARE @idPais INT = 1;
DECLARE @idHotel1 INT;
DECLARE @idHotel2 INT;

WHILE @idPais <= 195
BEGIN
    SET @idHotel1 = ((@idPais - 1) % 10) + 1;
    SET @idHotel2 = ((@idPais) % 10) + 1;

    INSERT INTO HotelXPais (idPais, idHotel) VALUES (@idPais, @idHotel1);
    INSERT INTO HotelXPais (idPais, idHotel) VALUES (@idPais, @idHotel2);

    SET @idPais = @idPais + 1;
END;

--Método utilizado para la asignación aleatoria de restaurantes por país
DECLARE @idPais INT = 1;
DECLARE @idRestaurant1 INT;
DECLARE @idRestaurant2 INT;

WHILE @idPais <= 195
BEGIN
    SET @idRestaurant1 = ((@idPais - 1) % 10) + 1;
    SET @idRestaurant2 = ((@idPais) % 10) + 2;

    INSERT INTO RestaurantXPais (idPais, idRestaurant) VALUES (@idPais, @idRestaurant1);
    INSERT INTO RestaurantXPais (idPais, idRestaurant) VALUES (@idPais, @idRestaurant2);

    SET @idPais = @idPais + 1;
END;

