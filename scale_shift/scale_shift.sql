BEGIN;

/*
 * Skript identifiziert die DSV, welche einen bestimmten Masstabsübergang enthalten und verschiebt
 * den Uebergang auf den übergegebenen neuen Wert.
 */
WITH 

scale_shift AS ( -- Darf nur eine Zeile umfassen
    SELECT
        *        
    FROM (
        VALUES (
            ${oldscale},
            ${newscale}
            --6000,
            --6005
        )
    )
    AS t(oldscale, newscale) 
),

scale_tokens AS (
    SELECT        
        concat('minimumScale="', oldscale, '"') AS scale_min_old,
        concat('minimumScale="', newscale, '"') AS scale_min_new,       
        concat('maximumScale="', oldscale, '"') AS scale_max_old,
        concat('maximumScale="', newscale, '"') AS scale_max_new,        
        concat('scalemindenom="', oldscale, '"') AS denom_min_old,
        concat('scalemindenom="', newscale, '"') AS denom_min_new,  
        concat('scalemaxdenom="', oldscale, '"') AS denom_max_old,
        concat('scalemaxdenom="', newscale, '"') AS denom_max_new       
    FROM
       scale_shift 
),

affected_dsv AS ( 
    SELECT 
        id,
        style_server
    FROM 
        simi.simidata_data_set_view AS dsv,
        scale_tokens
    WHERE 
            dsv.style_server LIKE concat('%', scale_min_old, '%')
        OR 
            dsv.style_server LIKE concat('%', scale_max_old, '%')
        OR 
            dsv.style_server LIKE concat('%', denom_min_old, '%')
        OR 
            dsv.style_server LIKE concat('%', denom_max_old, '%')
),

style_server_new AS (
    SELECT 
        id,
        replace(
            replace(
                replace(
                    replace(
                        style_server, 
                        scale_min_old, 
                        scale_min_new
                    ),
                    scale_max_old,
                    scale_max_new
                ),
                denom_min_old,
                denom_min_new
            ),
            denom_max_old,
            denom_max_new
        ) AS style_server_new            
    FROM
       affected_dsv,
       scale_tokens
)

UPDATE 
    simi.simidata_data_set_view dsv
SET 
    style_server = style_server_new
FROM 
    style_server_new s
WHERE 
    dsv.id = s.id
;

COMMIT;
    



