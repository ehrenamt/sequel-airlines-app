-- load-static.sql
--------------------------------------------------------------------------------
-- Executes after 3-permissions.sql
-- Loads in fictional data for airports and aircraft.
-- This data is expected to remain unchanged for long periods of time.
-- (Hence the static descriptor.)
--------------------------------------------------------------------------------

\c flightsdb

--------------------------------------------------------------------------------
-- Airports
--------------------------------------------------------------------------------


INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'CYYZ',
    'YYZ',
    'Toronto Pearson International Airport',
    'Toronto Pearson',
    'Canada',
    'Toronto',
    'America/New_York'
);


INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'CYTZ',
    'YTZ',
    'Billy Bishop Toronto City Airport',
    'Billy Bishop Toronto',
    'Canada',
    'Toronto',
    'America/New_York'
);


INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'CYUL',
    'YUL',
    'Montréal–Trudeau International Airport',
    'Montréal–Trudeau',
    'Canada',
    'Montreal',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'CYHZ',
    'YHZ',
    'Halifax Stanfield International Airport',
    'Halifax Stanfield',
    'Canada',
    'Halifax',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'CYOW',
    'YOW',
    'Ottawa Macdonald–Cartier International Airport',
    'Ottawa Macdonald–Cartier',
    'Canada',
    'Ottawa',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'CYVR',
    'YVR',
    'Vancouver International Airport ',
    'Vancouver International',
    'Canada',
    'Vancouver',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'KEWR',
    'EWR',
    'Newark Liberty International Airport',
    'Newark Liberty',
    'United States',
    'Newark',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'EHAM',
    'AMS',
    'Amsterdam Airport Schiphol',
    'Amsterdam Schipol',
    'Netherlands',
    'Amsterdam',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'EDDF',
    'FRA',
    'Frankfurt Airport',
    'Frankfurt',
    'Germany',
    'Frankfurt',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'EKCH',
    'CPH',
    'Copenhagen Airport',
    'Copenhagen',
    'Denmark',
    'Copenhagen',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'ENGM',
    'OSL',
    'Oslo Gardermoen Airport',
    'Oslo',
    'Norway',
    'Oslo',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'LTFJ',
    'SAW',
    'Sabiha Gökçen International Airport',
    'Sabiha Gökçen',
    'Turkey',
    'Istanbul',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'RJAA',
    'NRT',
    'Tokyo Narita International Airport',
    'Tokyo Narita',
    'Japan',
    'Tokyo',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'WSSS',
    'SIN',
    'Singapore Changi Airport',
    'Singapore Changi',
    'Singapore',
    'Singapore',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'ZSPD',
    'PVG',
    'Shanghai Pudong International Airport',
    'Shanghai Pudong',
    'China',
    'Shanghai',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'WIII',
    'CGK',
    'Soekarno–Hatta International Airport',
    'Soekarno (Jakarta)',
    'Indonesia',
    'Jakarta',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'RJBB',
    'KIX',
    'Kansai International Airport',
    'Kansai (Osaka)',
    'Japan',
    'Osaka',
    'America/New_York'
);


-- temp timezone
INSERT INTO core.airports (icao, iata, full_airport_name, airport_display_name, country, city, timezone)
VALUES (
    'RJCC',
    'CTS',
    'New Chitose Airport',
    'Chitose (Hokkaido)',
    'Japan',
    'Chitose',
    'America/New_York'
);


--------------------------------------------------------------------------------
-- Aircraft (of various types)
--------------------------------------------------------------------------------

-- KEEP THIS COMMENT UPDATED
-- Aircraft
-- 6x B787-9
-- 11x Dash 8 Q400
-- 5x A220-300
-- 6x A220-100
-- 3x E195
-- 10x A350-1000
-- 53 total
INSERT INTO core.aircraft (registration, manufacturer, model, destination_icao_last, status, total_cycles, cycles_since_maintenance)
VALUES 
('C-A1A1', 'BOEING','B787-9'::core.aircraft_model_type, 'CYYZ', 'FREE', 0, 0),
('C-A1A2', 'BOEING','B787-9'::core.aircraft_model_type, 'CYYZ', 'UNDER MAINTENANCE', 0, 0),
('C-A1A3', 'BOEING','B787-9'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0),
('C-A1A4', 'BOEING','B787-9'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0),
('C-A1A5', 'BOEING','B787-9'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0),
('C-A1A6', 'BOEING','B787-9'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0),
('C-DRMA', 'BOEING','B787-9'::core.aircraft_model_type, 'CYVR', 'FREE', 0, 0),
('C-DRMB', 'BOEING','B787-9'::core.aircraft_model_type, 'WSSS', 'FREE', 0, 0),
('C-DRMC', 'BOEING','B787-9'::core.aircraft_model_type, 'WSSS', 'FREE', 0, 0),
('C-DRMD', 'BOEING','B787-9'::core.aircraft_model_type, 'WSSS', 'FREE', 0, 0),
('C-DRME', 'BOEING','B787-9'::core.aircraft_model_type, 'WSSS', 'FREE', 0, 0),
('C-B1A1', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYTZ', 'FREE', 0, 0),
('C-B1A2', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYYZ', 'FREE', 0, 0),
('C-B1A3', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHA', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHB', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHC', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYYZ', 'FREE', 0, 0),
('C-DSHD', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHE', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYVR', 'UNDER MAINTENANCE', 0, 0),
('C-DSHF', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHG', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHH', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHI', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHJ', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHK', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-DSHL', 'BOMBARDIER','Dash 8 Q400'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-C1A1', 'AIRBUS','A220-300'::core.aircraft_model_type, 'CYUL', 'UNDER MAINTENANCE', 0, 0),
('C-C1A2', 'AIRBUS','A220-300'::core.aircraft_model_type, 'CYYZ', 'FREE', 0, 0),
('C-C1A3', 'AIRBUS','A220-300'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-C1A4', 'AIRBUS','A220-300'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-C2A1', 'AIRBUS','A220-100'::core.aircraft_model_type, 'CYYZ', 'FREE', 0, 0),
('C-C2A2', 'AIRBUS','A220-100'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CSRA', 'AIRBUS','A220-100'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CSRB', 'AIRBUS','A220-100'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CSRC', 'AIRBUS','A220-100'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CSRD', 'AIRBUS','A220-100'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CSRX', 'AIRBUS','A220-300'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-D1A1', 'EMBRAER','E195'::core.aircraft_model_type, 'CYHZ', 'UNDER MAINTENANCE', 0, 0),
('C-D1A2', 'EMBRAER','E195'::core.aircraft_model_type, 'CYVR', 'FREE', 0, 0),
('C-D1A3', 'EMBRAER','E195'::core.aircraft_model_type, 'CYHZ', 'UNDER MAINTENANCE', 0, 0),
('C-D2A1', 'EMBRAER','E175'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-D2A2', 'EMBRAER','E175'::core.aircraft_model_type, 'CYHZ', 'UNDER MAINTENANCE', 0, 0),
('C-D2A3', 'EMBRAER','E175'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-E1A1', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-E1A2', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'UNDER MAINTENANCE', 0, 0),
('C-E1A3', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-E1A4', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-E1A5', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'RJAA', 'FREE', 0, 0),
('C-E1A6', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-XWBA', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-XWBB', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-XWBC', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'RJAA', 'FREE', 0, 0),
('C-XWBD', 'AIRBUS','A350-1000'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-F1A1', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-F1A2', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-F1A3', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-F1A4', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'CYHZ', 'UNDER MAINTENANCE', 0, 0),
('C-F1A5', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-NXOA', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'CYHZ', 'FREE', 0, 0),
('C-NXOB', 'AIRBUS','A319 NEO'::core.aircraft_model_type, 'RJAA', 'FREE', 0, 0),
('C-CXNA', 'CESSNA','208B GR. CARAVAN'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CXNB', 'CESSNA','208B GR. CARAVAN'::core.aircraft_model_type, 'CYYZ', 'UNDER MAINTENANCE', 0, 0),
('C-CXNC', 'CESSNA','208B GR. CARAVAN'::core.aircraft_model_type, 'CYOW', 'FREE', 0, 0),
('C-CXND', 'CESSNA','208B GR. CARAVAN'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0),
('C-CXNE', 'CESSNA','208B GR. CARAVAN'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0),
('C-D2A4', 'EMBRAER','E175'::core.aircraft_model_type, 'CYUL', 'FREE', 0, 0);

-- user accounts

INSERT INTO core.user_accounts (public_id, email, username, hashed_pwd, first_name, last_name, active) VALUES
('PID000', 'defaultuser1@gmail.com', 'jsmith1', 'abcdefg', 'John', 'Smith', TRUE);
