import timeit

# Test med exceptions
def with_exception():
    for _ in range(100_000):
        try:
            int("ikke et tall")
        except ValueError:
            pass

# Test med if-sjekk
def with_if_check():
    for _ in range(100_000):
        s = "ikke et tall"
        if s.isdigit():
            int(s)


def int_test_positiv():
    a = "ikke et tall"
    for _ in range(100_000):
        try:
            try:
                a = int(a)
            except:
                a = float(a)
            if a > 0:
                return a
            else:
                raise ValueError
        except ValueError:
            pass


def get_number_flexible1(prompt: str = "Type in a number "):
    for _ in range(100_000):
        user_input = "ikke tekst" #input(prompt).strip()

        check_str = user_input.lstrip('-')

        if not (check_str.isdigit() or (check_str.count('.') == 1 and
                                   check_str.replace('.', '').isdigit())):
            #print("Input not valid, try again.")
            continue
        if '.' in user_input:
            return float(user_input)
        else:
            return int(user_input)


def get_number_flexible(prompt: str = "Type in a number "):
    for _ in range(100_000):
        user_input = "ikke et tall" #input(prompt).strip()

        if not user_input:
            #print("You have to type something. ")
            continue

        check_str = user_input.lstrip('-')

        is_valid = (check_str.isdigit() or
                    (check_str.count('.') == 1 and check_str.replace('.', '').isdigit()))

        if not is_valid:
            #print("Input is not valid. Try again!")
            continue

        return float(user_input) if '.' in user_input else int(user_input)


def get_number(prompt: str = "Skriv inn et tall: "): #-> int | float:
    """Raskeste validering av int/float med negative tall."""
    for _ in range(100_000):
        user_input = "ikke et tall" #input(prompt).strip()

        if not user_input:
            #print("Du må skrive inn noe!")
            continue

        # Fjern leading +/- for validering
        check = user_input.lstrip('+-')

        # Rask sjekk: split på '.' gir enten 1 del (int) eller 2 deler (float)
        parts = check.split('.')

        # Valider: alle deler må være digits, maks 2 deler, minst én del med innhold
        if len(parts) <= 2 and all(p.isdigit() for p in parts if p):
            if len(parts) == 1 or not parts[1]:  # Int eller "123."
                return int(float(user_input))  # float() håndterer "123."
            return float(user_input)

        #print("Ugyldig input, prøv igjen.")


def get_number1(prompt: str = "Skriv inn et tall: "): #-> int | float:
    for _ in range(100_000):
        user_input = "ikke et tall"#input(prompt).strip()

        if not user_input or user_input.count('.') > 1:
            #print("Ugyldig input, prøv igjen.")
            continue

        try:
            num = float(user_input)
            return int(num) if num.is_integer() else num
        except ValueError:
            continue
            #print("Ugyldig input, prøv igjen.")


def get_number_fastest(prompt: str = "Skriv inn et tall: "):# -> int | float:
    """Absolutt raskeste - kombinerer if-sjekk med try/except for edge cases."""
    for _ in range(100_000):
        user_input = "ikke et tall"#input(prompt).strip()

        if not user_input:
            #print("Du må skrive inn noe!")
            continue

        # Quick reject: Mer enn 1 punkt = ugyldig
        if user_input.count('.') > 1:
            #print("Ugyldig input, prøv igjen.")
            continue

        # La Python gjøre det tunge løftet
        try:
            num = float(user_input)
            return int(num) if num.is_integer() else num
        except ValueError:
            #print("Ugyldig input, prøv igjen.")
            continue


print(f"Med exception: {timeit.timeit(with_exception, number=100):.4f}s")
print(f"Med if-sjekk:  {timeit.timeit(with_if_check, number=100):.4f}s")
#print(f"Med student-sjekk:  {timeit.timeit(int_test_positiv, number=100):.4f}s")
print(f"Med full-if-sjekk:  {timeit.timeit(get_number_flexible, number=100):.4f}s")
print(f"Med full-if-sjekk2:  {timeit.timeit(get_number_flexible1, number=100):.4f}s")
print(f"Med raskeste-sjekk?:  {timeit.timeit(get_number, number=100):.4f}s")
print(f"Med kombo-sjekk?:  {timeit.timeit(get_number1, number=100):.4f}s")

print(f"Med absolutt-raskeste?:  {timeit.timeit(get_number_fastest, number=100):.4f}s")
# Resultat: Exception er ofte 10-100x tregere!