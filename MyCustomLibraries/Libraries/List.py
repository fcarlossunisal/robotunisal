import ast

class List(object):

    ROBOT_LIBRARY_VERSION = 1.0

    def __init__(self):
        pass

    def ConvertToListFromString(self, ListString):
        x = ast.literal_eval(ListString)
        return x