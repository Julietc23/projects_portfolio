#helpers:
from sklearn import neighbors
def max_score(X_train, X_test, y_train, y_test):
    score_list=[]
    for i in range(5,21):
        clf = neighbors.KNeighborsClassifier(n_neighbors=i)
        clf.fit(X_train, y_train)
        score_list.append(clf.score(X_test, y_test))
        score_max = max(score_list)
    return f'n = {score_list.index(score_max) + 5} será el que de mayor precisión de predicción: {score_max}'