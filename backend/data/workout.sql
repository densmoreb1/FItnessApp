-- Date,Exercise,Reps,Weight(kg),Duration(s),Distance(m),Incline,Resistance,isWarmup,Note,multiplier


DROP TABLE IF EXISTS workouts;


CREATE TABLE workouts
(
    row PRIMARY KEY NOT NULL,
    date DATE,
    exercise TEXT,
    reps INT,
    weight float,
    note TEXT

);