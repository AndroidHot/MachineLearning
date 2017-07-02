import numpy as np
from sklearn import datasets
from sklearn import tree

iris = datasets.load_iris()

# print(iris.feature_names)
# print(iris.target_names)
# print(iris.data[0])
# print(iris.target[0])

test_ids = [0, 50, 100]

# training data
train_target = np.delete(iris.target, test_ids)
train_data = np.delete(iris.data, test_ids, axis=0)

# test data
test_target = iris.target[test_ids]
test_data = iris.data[test_ids]

clf = tree.DecisionTreeClassifier()
clf = clf.fit(train_data, train_target)

print(clf.predict(test_data))
print(test_target)