import pandas as pd
from sklearn.model_selection import train_test_split as split

dataset = pd.read_csv("dic/clear.dic", delimiter = "\t", header = None)
dataset_train, dataset_test = split(dataset)

dataset_train.to_csv("dic/grafemes_train.dic", header = None, columns = [0], index = None)
dataset_train.to_csv("dic/phonemes_train.dic", header = None, columns = [1], index = None)

dataset_test.to_csv("dic/grafemes_valid.dic", header = None, columns = [0], index = None)
dataset_test.to_csv("dic/phonemes_valid.dic", header = None, columns = [1], index = None)

dataset_train.to_csv("dic/full_train.dic", header = None, index = None, sep = "\t")
dataset_test.to_csv("dic/full_test.dic", header = None, index = None, sep = "\t")
