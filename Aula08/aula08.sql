-- Agendamento logístico: funções Date and Time

SELECT
    Motorista                                    AS motorista,
    time(agendamento)                            AS agendamento,
    time(Chegada)                                AS chegada,
    time_add(time(agendamento), interval 2 hour) AS tolerancia,
    CASE
        WHEN time(chegada) > time_add(time(agendamento), interval 2 hour)
        THEN 'Late'
        WHEN time(chegada) < time(agendamento)
        THEN 'Early'
        ELSE 'On time'
    END AS status
FROM FROM `projetosql-401620.extras.agendamento`;