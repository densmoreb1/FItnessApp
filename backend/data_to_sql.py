import pandas as pd
import sqlite3
from pandas.core.indexing import convert_missing_indexer

class DB_Writer:
    def __init__(self):    
        self.connection = sqlite3.connect('workouts')
        self.cursor = self.connection.cursor()

    def read_from_csv(self):
        data = pd.read_csv (r'/Users/densmoreb/Documents/myprojects/fitness_app/backend/data/WorkoutExport.csv')   
        self.df = pd.DataFrame(data)
        
        pd.set_option('display.max_columns', None)
        pd.set_option('display.max_rows', 50)

        self.df.rename({'Weight(kg)' : 'Weight'}, axis=1, inplace=True)
        self.df = self.df.drop(['Duration(s)', 'Distance(m)', 'Incline', 'Resistance', 'isWarmup', 'multiplier'], axis=1)
        self.df['Date'] = pd.to_datetime(self.df['Date'])
        print(self.df)

    def write_into_sql(self):

        for row in self.df.itertuples():
            values = (row.Index,
            row.Date,
            row.Exercise,
            row.Reps,
            row.Weight,
            row.Note)
            self.cursor.execute('''
                    insert into workouts (row, date, exercise, reps, weight, note) values (?, ?, ?, ?, ?, ?)
            
            ''',
            values)
        self.connection.commit()

db_writer = DB_Writer()
db_writer.read_from_csv()
