-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
-- 
data = LOAD 'data.tsv' AS (f1: CHARARRAY, f2: CHARARRAY, f3: INT);
data = ORDER data BY f1, f3;
STORE data INTO 'output';

