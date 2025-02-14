def calculate_class_averages(class_scores: dict) -> dict:
    new_set = {}

    for class_name, scores in class_scores.items():
        if not scores:
            new_set[class_name] = 0
        else:
            avr_score = sum(scores) / len(scores)
            new_set[class_name] = round(avr_score)

    return new_set

scores = {
    "Class A": [96,76,98],
    "Class B": [60, 90]
}
print(calculate_class_averages(scores))