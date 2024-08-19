import Foundation

func triviaGame() {
    let questions = [
        "¿Cuál es la capital de Francia?": "París",
        "¿Cuántos continentes hay?": "7",
        "¿Quién escribió 'Cien años de soledad'?": "Gabriel García Márquez"
    ]
    
    var score = 0
    
    for (question, answer) in questions {
        print(question)
        if let userAnswer = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) {
            if userAnswer.lowercased() == answer.lowercased() {
                score += 1
                print("¡Correcto!")
            } else {
                print("Incorrecto. La respuesta correcta es: \(answer)")
            }
        }
    }
    
    print("Tu puntaje final es: \(score)")
}

triviaGame()
