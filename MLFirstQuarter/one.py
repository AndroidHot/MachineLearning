from sklearn import tree

# [140, 1] first data is weight， second data is the surface smoothness.
# O is apple, 1 is orange

features = [[140, 1], [130, 1], [150, 0], [170, 0]]
labels = [0, 0 , 1, 1]

clf = tree.DecisionTreeClassifier()
clf = clf.fit(features, labels)

print(clf.predict([135, 1]))
print(clf.predict([135, 0]))
print(clf.predict([155, 0]))
print(clf.predict([155, 1]))