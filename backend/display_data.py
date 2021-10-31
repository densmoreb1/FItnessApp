import sqlite3

class db:
    def __init__(self):    
        self.connection = sqlite3.connect('/data/workouts')
        self.cursor = self.connection.cursor()
    
    def display_weight(self):
        self.cursor.execute('''
            SELECT weight FROM workouts
        
        ''')