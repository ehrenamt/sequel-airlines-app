-- load-dynamic.sql
--------------------------------------------------------------------------------
-- Executes after 4-load-static.sql
-- Loads in fictional "dynamic" i.e. changing data regarding flights, trips,
-- and users.
--------------------------------------------------------------------------------

\c flightsdb

--------------------------------------------------------------------------------
-- Flights
-- Notes:
-- This airline is headquartered in the NY time zone, UTC-5.
-- For this reason, be sure to subtract 5 when 
--------------------------------------------------------------------------------


-- As follows:
-- SALXXX: Canadian domestic flight. Three digits only.
-- SAL1XXX: International flight to or from Canada and to or from Europe
-- SAL2XXX: Regional flight, Europe
-- SAL3XXX: International flight to or from Canada and to or from Asia
-- SAL4XXX: Regional flight, Asia
-- SAL9XXX: Domestic flights, Asia

INSERT INTO core.flights (
    flight_number, 
    origin_icao, 
    destination_icao, 
    departure_time_scheduled, 
    arrival_time_scheduled,
    types_allowed,
    date_from,
    date_to,
    date_dows
    )
VALUES
-- Billy Bishop to Montreal-Trudeau
('SAL100', 'CYTZ', 'CYUL', '00:00:00-05:00', '01:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL102', 'CYTZ', 'CYUL', '04:00:00-05:00', '05:45:00-05:00', '{"A220-300", "Dash 8 Q400"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL104', 'CYTZ', 'CYUL', '08:00:00-05:00', '09:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL106', 'CYTZ', 'CYUL', '12:00:00-05:00', '13:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL108', 'CYTZ', 'CYUL', '16:00:00-05:00', '17:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL110', 'CYTZ', 'CYUL', '20:00:00-05:00', '21:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL112', 'CYTZ', 'CYUL', '22:00:00-05:00', '23:45:00-05:00', '{"208B GR. CARAVAN", "Dash 8 Q400"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Montreal-Trudeau to Billy Bishop
('SAL101', 'CYUL', 'CYTZ', '03:00:00-05:00', '04:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195", "E175"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL103', 'CYUL', 'CYTZ', '07:00:00-05:00', '08:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195", "E175"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL107', 'CYUL', 'CYTZ', '09:00:00-05:00', '10:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195", "E175"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL109', 'CYUL', 'CYTZ', '11:00:00-05:00', '12:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195", "E175"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL111', 'CYUL', 'CYTZ', '13:00:00-05:00', '14:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195", "E175"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL113', 'CYUL', 'CYTZ', '15:00:00-05:00', '16:45:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195", "E175"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Montreal to Halifax
('SAL120', 'CYUL', 'CYHZ', '07:00:00-05:00', '10:00:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, false, false, true, true, true]),
('SAL122', 'CYUL', 'CYHZ', '11:00:00-05:00', '14:00:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, false, false, true, true, true]),
('SAL124', 'CYUL', 'CYHZ', '15:00:00-05:00', '18:00:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, false, false, true, true, true]),
('SAL126', 'CYUL', 'CYHZ', '18:00:00-05:00', '21:00:00-05:00', '{"A220-300", "Dash 8 Q400", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, false, false, true, true, true]),

-- Montreal to Newark - completed
('SAL1200', 'CYUL', 'KEWR', '07:15:00-05:00', '10:15:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1202', 'CYUL', 'KEWR', '10:15:00-05:00', '13:15:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1204', 'CYUL', 'KEWR', '13:15:00-05:00', '16:15:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1206', 'CYUL', 'KEWR', '16:15:00-05:00', '19:15:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1208', 'CYUL', 'KEWR', '19:15:00-05:00', '22:15:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),

-- Newark to Montreal - completed
('SAL1201', 'KEWR', 'CYUL', '08:05:00-05:00', '11:05:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1203', 'KEWR', 'CYUL', '11:05:00-05:00', '14:05:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1205', 'KEWR', 'CYUL', '14:05:00-05:00', '17:05:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1207', 'KEWR', 'CYUL', '17:05:00-05:00', '20:05:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),
('SAL1209', 'KEWR', 'CYUL', '20:05:00-05:00', '23:05:00-05:00', '{"A220-300", "B787-9", "A319 NEO", "E195"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, false, false, true, true, true]),


-- to Copenhagen
('SAL2300', 'CYUL', 'EKCH', '06:00:00-05:00', '12:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2302', 'CYUL', 'EKCH', '10:00:00-05:00', '16:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2304', 'CYUL', 'EKCH', '14:00:00-05:00', '20:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),


-- from Copenhagen
('SAL2301', 'EKCH', 'CYUL', '05:00:00-05:00', '11:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2303', 'EKCH', 'CYUL', '13:00:00-05:00', '19:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2305', 'EKCH', 'CYUL', '17:00:00-05:00', '23:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Ottawa to Amsterdam - completed
('SAL2400', 'CYOW', 'EHAM', '04:00:00-05:00', '11:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2402', 'CYOW', 'EHAM', '07:00:00-05:00', '14:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2404', 'CYOW', 'EHAM', '10:00:00-05:00', '17:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Amsterdam to Ottawa - completed
('SAL2401', 'EHAM', 'CYOW', '06:00:00-05:00', '13:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2403', 'EHAM', 'CYOW', '09:00:00-05:00', '16:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL2405', 'EHAM', 'CYOW', '12:00:00-05:00', '19:00:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Amsterdam to Istanbul Sabiha - completed
('SAL2010', 'EHAM', 'LTFJ', '04:00:00-05:00', '08:00:00-05:00', '{"A319 NEO", "A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, true, true, true, true, true]),
('SAL2012', 'EHAM', 'LTFJ', '18:20:00-05:00', '22:20:00-05:00', '{"A319 NEO", "A220-300","A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, true, true, true, true, true]),

-- Istanbul Sabiha to Amsterdam - completed
('SAL2011', 'LTFJ', 'EHAM', '10:00:00-05:00', '14:00:00-05:00', '{"A319 NEO", "A220-300", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, true, true, true, true, true]),
('SAL2013', 'LTFJ', 'EHAM', '19:30:00-05:00', '23:30:00-05:00', '{"A319 NEO", "A220-300", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, false, true, true, true, true, true]),

-- Vancouver to Tokyo
('SAL3100', 'CYVR', 'RJAA', '02:35:00-05:00', '15:15:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3102', 'CYVR', 'RJAA', '04:35:00-05:00', '17:15:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3104', 'CYVR', 'RJAA', '08:35:00-05:00', '21:15:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Tokyo to Vancouver
('SAL3101', 'RJAA', 'CYVR', '04:20:00-05:00', '17:35:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3103', 'RJAA', 'CYVR', '06:20:00-05:00', '19:35:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3105', 'RJAA', 'CYVR', '10:20:00-05:00', '23:35:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Tokyo to Singapore
('SAL3220', 'RJAA', 'WSSS', '06:45:00-05:00', '14:15:00-05:00', '{"A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3222', 'RJAA', 'WSSS', '09:45:00-05:00', '17:15:00-05:00', '{"A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3224', 'RJAA', 'WSSS', '12:45:00-05:00', '20:15:00-05:00', '{"A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Singapore to Tokyo
('SAL3221', 'WSSS', 'RJAA', '04:05:00-05:00', '10:50:00-05:00', '{"A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3223', 'WSSS', 'RJAA', '07:05:00-05:00', '13:50:00-05:00', '{"A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL3225', 'WSSS', 'RJAA', '16:05:00-05:00', '22:50:00-05:00', '{"A220-300", "A220-100", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Kansai Osaka to Singapore
('SAL3232', 'RJBB', 'WSSS', '11:45:00-05:00', '19:15:00-05:00', '{"A220-300", "A319 NEO", "A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, false, true, true]),

-- Kansai Osaka to Chitose Hokkaido, regional
('SAL9000', 'RJBB', 'RJCC', '06:00:00-05:00', '09:30:00-05:00', '{"208B GR. CARAVAN","A220-100", "Dash 8 Q400"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, false, true, true]),
('SAL9002', 'RJBB', 'RJCC', '18:00:00-05:00', '21:30:00-05:00', '{"208B GR. CARAVAN", "A220-100", "Dash 8 Q400"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, false, true, true]),

-- Frankfurt am Main to Montreal - completed
('SAL1501', 'EDDF', 'CYUL', '00:55:00-05:00', '07:55:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL1503', 'EDDF', 'CYUL', '16:05:00-05:00', '23:15:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),

-- Montreal to Frankfurt am Main - completed
('SAL1500', 'CYUL', 'EDDF', '04:10:00-05:00', '11:10:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]),
('SAL1502', 'CYUL', 'EDDF', '06:10:00-05:00', '13:10:00-05:00', '{"A350-1000", "B787-9"}'::core.aircraft_model_type[], '2025-06-6'::date, '2030-06-6'::date, ARRAY[true, true, true, true, true, true, true]);
