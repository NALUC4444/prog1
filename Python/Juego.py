from pyrae import dle

PalabraBuscar = input("Qué palabra deseas buscar?\n")
resultadoBusqueda = dle.search_by_word(word=PalabraBuscar)
print(f"La palabra era: {PalabraBuscar}")
print(resultadoBusqueda)