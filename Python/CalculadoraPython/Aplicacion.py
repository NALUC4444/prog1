import tkinter
import tkinter.messagebox
from tkinter import ttk #Para la lista desplegable
import math #Para las operaciones mas avanzadas

#------------------------- Definiciones -------------------------
#---- ACCIONES ----
def AccionElegida(eventObject): #Lo recibe del "bind" del combobox
    if eventObject.widget.get() == "Sumar":
        VentanaSumar()
    elif eventObject.widget.get() == "Restar":
        VentanaRestar()
    elif eventObject.widget.get() == "Multiplicar":
        VentanaMultiplicar()
    elif eventObject.widget.get() == "Dividir":
        VentanaDividir()
    elif eventObject.widget.get() == "Raiz Cuadrada":
        VentanaRaizCuadrada()
    elif eventObject.widget.get() == "Divisores":
        VentanaDivisores()
    elif eventObject.widget.get() == "Factorial":
        VentanaFactoriazar()
    elif eventObject.widget.get() == "Logaritmo Neperiano":
        VentanaLogaritmoNeperiano()
    elif eventObject.widget.get() == "Logaritmo Base 10":
        VentanaLogaritmo()
    elif eventObject.widget.get() == "Exponencial":
        VentanaExponencial()
    elif eventObject.widget.get() == "Coseno":
        VentanaCoseno()
    elif eventObject.widget.get() == "Seno":
        VentanaSeno()
    elif eventObject.widget.get() == "Tangente":
        VentanaTangente()
    elif eventObject.widget.get() == "Distancia Dos Puntos":
        VentanaDosPuntos()
    elif eventObject.widget.get() == "Raices":
        VentanaRaices()
    elif eventObject.widget.get() == "Potencia":
        VentanaPotencia()
    elif eventObject.widget.get() == "Distancia Punto-Recta":
        VentanaDistanciaRectaPunto()
    else:
        tkinter.messagebox.showwarning("NO DISPONIBLE", "Idioma invalida")

def EleccionAreas(eventObject): #Para eleccion del area
    if eventObject.widget.get() == "Cuadrado":
        VentanaCuadrado()
    elif eventObject.widget.get() == "Triángulo":
        VentanaTriangulo()
    elif eventObject.widget.get() == "Circulo":
        VentanaCirculo()
    elif eventObject.widget.get() == "Trapecio":
        VentanaTrapecio()
    elif eventObject.widget.get() == "Cilindro":
        VentanaCilindro()
    elif eventObject.widget.get() == "Piramide":
        VentanaPiramide()
    else:
        tkinter.messagebox.showerror("INVALIDO", "Operacion no valida")

def Idioma():
    Translate = False
    if (Translate == True):
        seleccionIdioma = tkinter.messagebox.askquestion("Idioma", "Deseas traducir?")
    else:
        seleccionIdioma = tkinter.messagebox.askquestion("lenguage", "You want translate?")
    if seleccionIdioma == "yes":
        Translate = True
    else:
        Translate = False
    return Translate

def salir(): #Para salir de la ventana principal
    ventana.destroy()

#--------- SECCION CUENTAS ---------
#---- Operaciones Basicas ----
def VentanaSumar():  # Para la suma de datos en una pestaña nueva
    Suma = tkinter.Toplevel()  # Para una nueva pestaña
    Suma.title("Suma")
    Suma.geometry("250x290")
    Suma.resizable(0, 0)  # Para no cambiar el tamaño
    Suma.config(background="#151515")
    tkinter.Label(Suma, text="Ingresa el primer valor: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Suma, width=35)
    a.pack()
    tkinter.Label(Suma, text="Ingresa el segundo valor: ", background="#151515", fg="forest green").pack()
    b = tkinter.Entry(Suma, width=35)
    b.pack()
    label = tkinter.Label(Suma, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Suma, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    #Para guardar los datos
    tkinter.Label(Suma, text="Primer valor anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Suma, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Suma, text="Segundo valor anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Suma, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def sumar():
        try:
            dg1 = float(a.get())  # Para almacenar el nuevo valor
            dg2 = float(b.get())
            resultado = dg1 + dg2
            resultado_label.config(text=str(round(resultado, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Suma, text="Calcular", command=sumar, fg="green", background="#151515").pack()
    def destruir():
        Suma.destroy()
    def limpiar():
        try:
            respaldo1.config(text=str(a.get())) #Para guardar y mostrar el anterior dato ingresado
            respaldo2.config(text=str(b.get())) #Para guardar y mostrar el anterior dato ingresado
            a.delete(0, tkinter.END)
            b.delete(0, tkinter.END) #Para limpiar ambos campos de entrada
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Suma, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Suma, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Suma.focus() #Para bloquear la ventana principal
    Suma.grab_set()

def VentanaRestar():  # Para la resta de datos en una pestaña nueva
    Resta = tkinter.Toplevel()  # Para una nueva pestaña
    Resta.title("Resta")
    Resta.geometry("250x290")
    Resta.resizable(0, 0)  # Para no cambiar el tamaño
    Resta.config(background="#151515")
    tkinter.Label(Resta, text="Ingresa el Minuendo: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Resta, width=35)
    a.pack()
    tkinter.Label(Resta, text="Ingresa el sustraendo: ", background="#151515", fg="forest green").pack()
    b = tkinter.Entry(Resta, width=35)
    b.pack()
    label = tkinter.Label(Resta, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Resta, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Resta, text="Minuendo anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Resta, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Resta, text="Sustraendo anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Resta, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def restar():
        try:
            dg1 = float(a.get())  # Para almacenar el nuevo valor
            dg2 = float(b.get())
            resultado = dg1 - dg2
            resultado_label.config(text=str(round(resultado, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Resta, text="Calcular", command=restar, fg="green", background="#151515").pack()
    def destruir():
        Resta.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        a.delete(0, tkinter.END) #Para limpiar los datos
        b.delete(0, tkinter.END)
    tkinter.Button(Resta, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Resta, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Resta.focus()
    Resta.grab_set()

def VentanaMultiplicar(): # Para la multiplicacion de datos en una pestaña nueva
    Multiplicar = tkinter.Toplevel()  # Para una nueva pestaña
    Multiplicar.title("Multiplicacion")
    Multiplicar.geometry("250x290")
    Multiplicar.resizable(0, 0)  # Para no cambiar el tamaño
    Multiplicar.config(background="#151515")
    tkinter.Label(Multiplicar, text="Ingresa el Multiplicando: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Multiplicar, width=35)
    a.pack()
    tkinter.Label(Multiplicar, text="Ingresa el Multiplicador: ", background="#151515", fg="forest green").pack()
    b = tkinter.Entry(Multiplicar, width=35)
    b.pack()
    label = tkinter.Label(Multiplicar, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Multiplicar, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Multiplicar, text="Multiplicando anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Multiplicar, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Multiplicar, text="Multiplicador anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Multiplicar, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def Multiplicacion():
        try:
            dg1 = float(a.get())  # Para almacenar el nuevo valor
            dg2 = float(b.get())
            resultadoOp = dg1 * dg2
            resultado.config(text=str(round(resultadoOp, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Multiplicar, text="Calcular", command=Multiplicacion, fg="green", background="#151515").pack()
    def destruir():
        Multiplicar.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
    tkinter.Button(Multiplicar, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Multiplicar, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Multiplicar.focus()
    Multiplicar.grab_set()

def VentanaDividir():  # Para la dividir de datos en una pestaña nueva
    Division = tkinter.Toplevel()  # Para una nueva pestaña
    Division.title("Division")
    Division.geometry("300x400")
    Division.resizable(0, 0)  # Para no cambiar el tamaño
    Division.config(background="#151515")
    tkinter.Label(Division, text="Ingresa el Dividendo: ", background="#151515", fg="forest green").pack()
    b = tkinter.Entry(Division, width=35)
    b.pack()
    tkinter.Label(Division, text="Ingresa el Divisor ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Division, width=35)
    a.pack()
    label = tkinter.Label(Division, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Division, background="#151515", text="...", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    resto = tkinter.Label(Division, text="RESTO DE LA DIVISION:", background="#151515", fg="medium purple")
    resto.pack()
    resultadoResto = tkinter.Label(Division, text="...", background="#151515", fg="orange3")
    resultadoResto.pack()
    tkinter.Label(Division, text="Dividendo anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Division, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    tkinter.Label(Division, text="Divisor anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Division, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def Dividir():
        try:
            dg1 = float(a.get())  # Para almacenar el nuevo valor
            dg2 = float(b.get())
            resultado = dg2 / dg1
            resultado_label.config(text=str(round(resultado, 2)))  # Actualiza el label con el resultado
            restoOp = dg2 % dg1 #Este es el resto
            resultadoResto.config(text=restoOp)
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
            resultadoResto.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Division, text="Calcular", command=Dividir, fg="green", background="#151515").pack()
    def destruir():
        Division.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
    tkinter.Button(Division, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Division, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    tkinter.Label(Division, text="Dividendo = b", background="#151515", fg="pale turquoise").pack()
    tkinter.Label(Division, text="Divisor = a", background="#151515", fg="pale turquoise").pack()
    tkinter.Label(Division, text="Cociente = c", background="#151515", fg="pale turquoise").pack()
    tkinter.Label(Division, text="Formula: a / b = c", background="#151515", fg="pale turquoise").pack()
    Division.focus() #Para bloquear la ventana principal
    Division.grab_set()

def VentanaDivisores(): 
    Divisores = tkinter.Toplevel()
    Divisores.title("Divisores")
    Divisores.geometry("250x250")
    Divisores.resizable(0, 0)  # Para no cambiar el tamaño
    Divisores.config(background="#151515")
    tkinter.Label(Divisores, text="Valor a buscar divisores: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Divisores, width=35)
    a.pack()
    #Para que aparezca el valor anterior guardado:
    respaldo1 = tkinter.Label(Divisores, text="Los divisores de ... son:", background="#151515", fg="orange3")
    respaldo1.pack()
    #Final de la muestra de valor anterior
    resultado = tkinter.Label(Divisores, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    def Divisor():
        div = [] #Para vaciar la lista
        try:
            respaldo1.config(text=f"Los divisores de {a.get()} son:")
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            i = 0 #Para empezar el bucle
            for i in range(1, dg1 + 1):
                if (dg1 % i == 0) and (i != dg1):
                    div.append(i) #Para ir agregando la lista de datos
                if (i+1 in div):
                    div.remove(i)
            i = 0 #Para terminar con el bucle
            resultado.config(text=str(div))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Divisores, text="Buscar", command=Divisor, fg="green", background="#151515").pack()
    def destruir():
        Divisores.destroy()
    def limpiar():
        a.delete(0, tkinter.END)
    tkinter.Button(Divisores, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Divisores, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    tkinter.Label(Divisores, text="Formula: a/b = 0, b divisor de a", fg="pale turquoise", background="#151515").pack()
    Divisores.focus()
    Divisores.grab_set()

def VentanaRaizCuadrada():
    raizCuadrada = tkinter.Toplevel()
    raizCuadrada.title("Factorizacion")
    raizCuadrada.geometry("250x250")
    raizCuadrada.resizable(0, 0)  # Para no cambiar el tamaño
    raizCuadrada.config(background="#151515")
    tkinter.Label(raizCuadrada, text="Ingresa el Radicando: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(raizCuadrada, width=35)
    a.pack()
    label = tkinter.Label(raizCuadrada, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(raizCuadrada, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(raizCuadrada, text="El radicando anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(raizCuadrada, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def raizCuadradaOp():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            resultadoOp = math.sqrt(dg1)
            resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(raizCuadrada, text="Calcular", command=raizCuadradaOp, fg="green", background="#151515").pack()
    def destruir():
        raizCuadrada.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(raizCuadrada, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(raizCuadrada, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    raizCuadrada.focus()
    raizCuadrada.grab_set()

def VentanaPotencia():
    Power = tkinter.Toplevel()
    Power.title("Potencia")
    Power.geometry("250x290")
    Power.resizable(0, 0)  # Para no cambiar el tamaño
    Power.config(background="#151515")
    tkinter.Label(Power, text="Ingresa la base: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Power, width=35)
    a.pack()
    tkinter.Label(Power, text="Ingresa el exponente: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Power, width=35)
    b.pack()
    label = tkinter.Label(Power, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Power, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Power, text="La base anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Power, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Power, text="El exponente anterior es:", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Power, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def Potencia():
        try:
            Base = int(a.get())  # Para la base
            Exponente = int(b.get())  # Para el exponente
            resultadoOp = Base**Exponente
            resultado.config(text=str(round(resultadoOp, 2)))
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Power, text="Calcular", command=Potencia, fg="green", background="#151515").pack()
    def destruir():
        Power.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
    tkinter.Button(Power, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Power, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Power.focus()
    Power.grab_set()

#---- Exponencial y Logaritmo ----
def VentanaLogaritmoNeperiano():
    LogarithmNeperiano = tkinter.Toplevel()
    LogarithmNeperiano.title("Logaritmo Neperiano")
    LogarithmNeperiano.geometry("250x250")
    LogarithmNeperiano.resizable(0, 0)  # Para no cambiar el tamaño
    LogarithmNeperiano.config(background="#151515")
    tkinter.Label(LogarithmNeperiano, text="Ingresa el argumento: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(LogarithmNeperiano, width=35)
    a.pack()
    label = tkinter.Label(LogarithmNeperiano, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(LogarithmNeperiano, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(LogarithmNeperiano, text="El argumento anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(LogarithmNeperiano, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def LogaritmoNeperiano():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            if (dg1 > 0):
                resultadoOp = math.log(dg1)
                resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
            else:
                resultado.config(text=f"{dg1} ≤ 0, no valido")
        except ValueError: #Para casos de valores caracteres
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(LogarithmNeperiano, text="Calcular", command=LogaritmoNeperiano, fg="green", background="#151515").pack()
    def destruir():
        LogarithmNeperiano.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(LogarithmNeperiano, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(LogarithmNeperiano, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    LogarithmNeperiano.focus()
    LogarithmNeperiano.grab_set()

def VentanaLogaritmo():
    Logarithm = tkinter.Toplevel()
    Logarithm.title("Logaritmo")
    Logarithm.geometry("250x250")
    Logarithm.resizable(0, 0)  # Para no cambiar el tamaño
    Logarithm.config(background="#151515")
    tkinter.Label(Logarithm, text="Ingresa el argumento: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Logarithm, width=35)
    a.pack()
    label = tkinter.Label(Logarithm, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Logarithm, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Logarithm, text="El argumento anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Logarithm, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def Logaritmo():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            if (dg1 > 0):
                resultadoOp = math.log10(dg1)
                resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
            else:
                resultado.config(text=f"{dg1} ≤ 0, no valido")
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Logarithm, text="Calcular", command=Logaritmo, fg="green", background="#151515").pack()
    def destruir():
        Logarithm.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Logarithm, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Logarithm, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Logarithm.focus()
    Logarithm.grab_set()

def VentanaExponencial():
    Exponential = tkinter.Toplevel()
    Exponential.title("Exponencial")
    Exponential.geometry("250x250")
    Exponential.resizable(0, 0)  # Para no cambiar el tamaño
    Exponential.config(background="#151515")
    tkinter.Label(Exponential, text="Ingresa el exponente: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Exponential, width=35)
    a.pack()
    label = tkinter.Label(Exponential, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Exponential, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Exponential, text="El exponente anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Exponential, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def Exponencial():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            if (dg1 >= 0):
                resultadoOp = math.exp(dg1)
                resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
            else:
                resultado.config(text=f"{dg1} < 0, no valido")
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Exponential, text="Calcular", command=Exponencial, background="#151515", fg="green").pack()
    def destruir():
        Exponential.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Exponential, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Exponential, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Exponential.focus()
    Exponential.grab_set()

#---- Trigonometria ----
def VentanaCoseno():
    Coseno = tkinter.Toplevel()
    Coseno.title("Coseno")
    Coseno.geometry("250x250")
    Coseno.resizable(0,0)
    Coseno.config(background="#151515")
    tkinter.Label(Coseno, text="Ingresa el valor: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Coseno, width=35)
    a.pack()
    label = tkinter.Label(Coseno, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Coseno, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Coseno, text="El valor anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Coseno, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def CosenoOp():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            resultadoOp = math.cos(dg1)
            resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Coseno, text="Calcular", command=CosenoOp, fg="green", background="#151515").pack()
    def destruir():
        Coseno.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Coseno, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Coseno, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Coseno.focus()
    Coseno.grab_set()

def VentanaSeno():
    Seno = tkinter.Toplevel()
    Seno.title("Seno")
    Seno.geometry("250x250")
    Seno.resizable(0,0)
    Seno.config(background="#151515")
    tkinter.Label(Seno, text="Ingresa el valor: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Seno, width=35)
    a.pack()
    label = tkinter.Label(Seno, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Seno, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Seno, text="El valor anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Seno, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def SenoOp():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            resultadoOp = math.sin(dg1)
            resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Seno, text="Calcular", command=SenoOp, fg="green", background="#151515").pack()
    def destruir():
        Seno.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Seno, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Seno, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Seno.focus()
    Seno.grab_set()

def VentanaTangente():
    Tangente = tkinter.Toplevel()
    Tangente.title("Tangente")
    Tangente.geometry("250x250")
    Tangente.resizable(0,0)
    Tangente.config(background="#151515")
    tkinter.Label(Tangente, text="Ingresa el valor: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Tangente, width=35)
    a.pack()
    label = tkinter.Label(Tangente, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Tangente, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Tangente, text="El valor anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Tangente, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def TangenteOp():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            resultadoOp = math.tan(dg1)
            resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Tangente, text="Calcular", command=TangenteOp, fg="green", background="#151515").pack()
    def destruir():
        Tangente.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Tangente, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Tangente, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Tangente.focus()
    Tangente.grab_set()

#---- Algebra ----
def VentanaFactoriazar():
    Factorizan = tkinter.Toplevel()
    Factorizan.title("FACTORIZACION!")
    Factorizan.geometry("250x250")
    Factorizan.resizable(0, 0)  # Para no cambiar el tamaño
    Factorizan.config(background="#151515")
    tkinter.Label(Factorizan, text="Ingresa el Factor: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Factorizan, width=35)
    a.pack()
    label = tkinter.Label(Factorizan, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Factorizan, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Factorizan, text="El factor anterior es:", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Factorizan, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def Factorizar():
        try:
            dg1 = int(a.get())  # Para almacenar el nuevo valor
            resultadoOp = math.factorial(dg1)
            resultado.config(text=str(round(resultadoOp, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Factorizan, text="Factorizar", command=Factorizar, fg="green", background="#151515").pack()
    def destruir():
        Factorizan.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Factorizan, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Factorizan, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    tkinter.Label(Factorizan, text="Formula: !n = 1*2*3*...*n", fg="pale turquoise", background="#151515").pack()
    Factorizan.focus()
    Factorizan.grab_set()

def VentanaDosPuntos():
    Distancia = tkinter.Toplevel()
    Distancia.title("DistanciaDos Puntos")
    Distancia.geometry("350x500")
    Distancia.resizable(0, 0)  # Para no cambiar el tamaño
    Distancia.config(background="#151515")
    tkinter.Label(Distancia, text="Ingresa el x1: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Distancia, width=55)
    a.pack()
    tkinter.Label(Distancia, text="Ingresa el y1: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Distancia, width=55)
    b.pack()
    tkinter.Label(Distancia, text="Ingresa el x2: ", background="#151515", fg="chocolate2").pack()
    c = tkinter.Entry(Distancia, width=55)
    c.pack()
    tkinter.Label(Distancia, text="Ingresa el y2: ", background="#151515", fg="chocolate2").pack()
    d = tkinter.Entry(Distancia, width=55)
    d.pack()
    label = tkinter.Label(Distancia, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Distancia, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    #Para guardar datos anteriores
    tkinter.Label(Distancia, text="X1 anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Distancia, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Distancia, text="Y1 anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Distancia, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    tkinter.Label(Distancia, text="X2 anterior: ", background="#151515", fg="orange3").pack()
    respaldo3 = tkinter.Label(Distancia, text="...", background="#151515", fg="orange3")
    respaldo3.pack()
    tkinter.Label(Distancia, text="Y2 anterior: ", background="#151515", fg="orange3").pack()
    respaldo4 = tkinter.Label(Distancia, text="...", background="#151515", fg="orange3")
    respaldo4.pack()
    def DistanciaDosPuntos():
        try:
            x1 = float(a.get())
            y1 = float(b.get())
            x2 = float(c.get())
            y2 = float(d.get())
            resultadoOp = math.sqrt((x2-x1)**2 + (y2-y1)**2)
            resultado.config(text=str(round(resultadoOp, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Distancia, text="Calcular", command=DistanciaDosPuntos, fg="green", background="#151515").pack()
    def destruir():
        Distancia.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        respaldo3.config(text=str(c.get()))
        respaldo4.config(text=str(d.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
        c.delete(0, tkinter.END)
        d.delete(0, tkinter.END)
    tkinter.Button(Distancia, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Distancia, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Formula = tkinter.Label(Distancia, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: d(A,B)=√((x2-x1)^2 + (y2-y1)^2)")
    Distancia.focus()
    Distancia.grab_set()

def VentanaRaices():
    Bhaskara = tkinter.Toplevel()
    Bhaskara.title("Bhaskara")
    Bhaskara.geometry("320x490")
    Bhaskara.resizable(0, 0)  # Para no cambiar el tamaño
    Bhaskara.config(background="#151515")
    tkinter.Label(Bhaskara, text="Ingresa termino cuadratico: ", background="#151515", fg="chocolate2").pack()
    Cuadratico = tkinter.Entry(Bhaskara, width=35)
    Cuadratico.pack()
    tkinter.Label(Bhaskara, text="Ingresa termino lineal: ", background="#151515", fg="chocolate2").pack()
    Lineal = tkinter.Entry(Bhaskara, width=35)
    Lineal.pack()
    tkinter.Label(Bhaskara, text="Ingresa el independiente: ", background="#151515", fg="chocolate2").pack()
    Independiente = tkinter.Entry(Bhaskara, width=35)
    Independiente.pack()
    label = tkinter.Label(Bhaskara, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Bhaskara, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    resultado2 = tkinter.Label(Bhaskara, text="...", background="#151515", fg="orange3")
    resultado2.pack()
    Discriminante = tkinter.Label(Bhaskara, text="Discriminante: ", background="#151515", fg="sandy brown").pack()
    ValorDiscriminante = tkinter.Label(Bhaskara, text="...", background="#151515", fg="orange3")
    ValorDiscriminante.pack()
    tkinter.Label(Bhaskara, text="Termino cuadratico anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Bhaskara, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Bhaskara, text="Termino lineal anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Bhaskara, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    tkinter.Label(Bhaskara, text="Termino independiente anterior: ", background="#151515", fg="orange3").pack()
    respaldo3 = tkinter.Label(Bhaskara, text="...", background="#151515", fg="orange3")
    respaldo3.pack()
    def Raices():
        try:
            a = float(Cuadratico.get())
            b = float(Lineal.get())
            c = float(Independiente.get())
            Discriminante = (b**2) - (4*a*c)
            if (Discriminante > 0):
                ValorDiscriminante.config(text=str(round(Discriminante, 3)))
                resultadoOp1 = ((-b) + math.sqrt(Discriminante)) / (2*a)
                resultadoOp2 = ((-b) - math.sqrt(Discriminante)) / (2*a)
                raiz2 = tkinter.Label(text=str(round(resultadoOp2, 3)))
                raiz1 = tkinter.Label(text=str(round(resultadoOp1, 3)))
                resultado.config(text=str(round(resultadoOp1, 3)))  # Actualiza el label con el resultado
                resultado2.config(text=str(round(resultadoOp2, 3)))
            elif (Discriminante == 0):
                ValorDiscriminante.config(text=str(round(Discriminante, 3)))
                resultadoOp1 = ((-b) + math.sqrt(Discriminante)) / (2*a)
                resultadoOp2 = "..."
                resultado.config(text=str(round(resultadoOp1, 3)))  # Actualiza el label con el resultado
            elif (Discriminante < 0):
                ValorDiscriminante.config(text=f"{Discriminante} < 0, no hay raices")
                resultado.config(text="...")  # Actualiza el label con el resultado
                resultado2.config(text="...")
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Bhaskara, text="Calcular", command=Raices, fg="green", background="#151515").pack()
    def destruir():
        Bhaskara.destroy()
    def limpiar():
        respaldo1.config(text=str(Cuadratico.get()))
        respaldo2.config(text=str(Lineal.get()))
        respaldo3.config(text=str(Independiente.get()))
        Cuadratico.delete(0, tkinter.END)
        Lineal.delete(0, tkinter.END)
        Independiente.delete(0, tkinter.END)
    tkinter.Button(Bhaskara, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Bhaskara, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Formula = tkinter.Label(Bhaskara, fg="pale turquoise", background="#151515")
    Formula.config(text="Formula: d(A,B)=-b ± (√b^2 - 4*a*c)/ 2a")
    Formula.pack()
    Bhaskara.focus()
    Bhaskara.grab_set()

def VentanaDistanciaRectaPunto():
    Distancia = tkinter.Toplevel()
    Distancia.title("Distancia Punto a Recta")
    Distancia.geometry("250x350")
    Distancia.resizable(0, 0)  # Para no cambiar el tamaño
    Distancia.config(background="#151515")
    tkinter.Label(Distancia, text="Ingresa el x1: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Distancia, width=35)
    a.pack()
    tkinter.Label(Distancia, text="Ingresa el y1: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Distancia, width=35)
    b.pack()
    tkinter.Label(Distancia, text="Ingresa el a: ", background="#151515", fg="chocolate2").pack()
    c = tkinter.Entry(Distancia, width=35)
    c.pack()
    tkinter.Label(Distancia, text="Ingresa el b: ", background="#151515", fg="chocolate2").pack()
    d = tkinter.Entry(Distancia, width=35)
    d.pack()
    tkinter.Label(Distancia, text="Ingresa el c: ", background="#151515", fg="chocolate2").pack()
    e = tkinter.Entry(Distancia, width=35)
    e.pack()
    label = tkinter.Label(Distancia, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado = tkinter.Label(Distancia, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado.pack()  # Para que aparezca en la pantalla el resultado
    def DistanciaPuntoRecta():
        try:
            x1 = float(a.get())
            y1 = float(b.get())
            terminoA = float(c.get())
            terminoB = float(d.get())
            terminoC = float(e.get())
            resultadoOp = (abs((terminoA*x1) + (terminoB*y1) + (terminoC))) / math.sqrt((terminoA**2) + (terminoB**2))
            resultado.config(text=str(round(resultadoOp, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Distancia, text="Calcular", command=DistanciaPuntoRecta, fg="green", background="#151515").pack()
    def destruir():
        Distancia.destroy()
    def limpiar():
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
        c.delete(0, tkinter.END)
        d.delete(0, tkinter.END)
        e.delete(0, tkinter.END)
    tkinter.Button(Distancia, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Distancia, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    tkinter.Label(Distancia, fg="pale turquoise", text="Ecuacion recta: Ax + By + C = 0", background="#151515").pack()
    Formula = tkinter.Label(Distancia, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: d(A,r)=(|A*x + B*y + C|)/√(A^2+B^2)")
    Distancia.focus()
    Distancia.grab_set()

#--------- SECCION AREAS ---------
def VentanaCuadrado():
    Cuadrado = tkinter.Toplevel()  # Para una nueva pestaña
    Cuadrado.title("Area cuadrado")
    Cuadrado.geometry("250x250")
    Cuadrado.resizable(0, 0)  # Para no cambiar el tamaño
    Cuadrado.config(background="#151515")
    tkinter.Label(Cuadrado, text="Ingresa el lado del cuadrado: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Cuadrado, width=35)
    a.pack()
    label = tkinter.Label(Cuadrado, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Cuadrado, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Cuadrado, text="Lado anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Cuadrado, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    def areaCuadrado():
        try:
            dg1 = float(a.get())  # Para almacenar el nuevo valor
            resultado = dg1**2 # Área del cuadrado
            resultado_label.config(text=str(round(resultado, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Cuadrado, text="Calcular", command=areaCuadrado, fg="green", background="#151515").pack()
    def destruir():
        Cuadrado.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Cuadrado, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Cuadrado, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Formula = tkinter.Label(Cuadrado, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: lado cuadrado^2")
    Cuadrado.focus() #Para bloquear la ventana principal
    Cuadrado.grab_set()

def VentanaTriangulo():
    Triangulo = tkinter.Toplevel()  # Para una nueva pestaña
    Triangulo.title("Area triangulo")
    Triangulo.geometry("250x350")
    Triangulo.resizable(0, 0)  # Para no cambiar el tamaño
    Triangulo.config(background="#151515")
    tkinter.Label(Triangulo, text="Ingresa base del triangulo: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Triangulo, width=35)
    b.pack()
    tkinter.Label(Triangulo, text="Ingresa altura del triangulo: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Triangulo, width=35)
    a.pack()
    label = tkinter.Label(Triangulo, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Triangulo, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Triangulo, text="base anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Triangulo, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Triangulo, text="altura anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Triangulo, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def areaTriangulo():
        try:
            Altura = float(a.get())  # Para almacenar el nuevo valor
            Base = float(b.get())
            resultado = (Base*Altura)/(2) # Área del cuadrado
            resultado_label.config(text=str(round(resultado, 2)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Triangulo, text="Calcular", command=areaTriangulo, fg="green", background="#151515").pack()
    def destruir():
        Triangulo.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get())) #Para mostrar el dato guardado
        respaldo2.config(text=str(b.get())) #Para mostrar el dato guardado
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
    tkinter.Button(Triangulo, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Triangulo, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Formula = tkinter.Label(Triangulo, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: (base*altura)/2")
    Triangulo.focus() #Para bloquear la ventana principal
    Triangulo.grab_set()

def VentanaCirculo():
    pidioRadio = tkinter.messagebox.askquestion("Datos", "Deseas ingresar solo el radio?")
    Circulo = tkinter.Toplevel()  # Para una nueva pestaña
    Circulo.title("Area circulo")
    Circulo.geometry("250x250")
    Circulo.resizable(0, 0)  # Para no cambiar el tamaño
    Circulo.config(background="#151515")
    if (pidioRadio == "yes"):
        tkinter.Label(Circulo, text="Ingresa radio: ", background="#151515", fg="chocolate2").pack()
        a = tkinter.Entry(Circulo, width=35)
        a.pack()
    else:
        tkinter.Label(Circulo, text="Ingresa diametro: ", background="#151515", fg="chocolate2").pack()
        a = tkinter.Entry(Circulo, width=35)
        a.pack()
    label = tkinter.Label(Circulo, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Circulo, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    if (pidioRadio == 'yes'):
        tkinter.Label(Circulo, text="radio anterior: ", background="#151515", fg="orange3").pack()
        respaldo1 = tkinter.Label(Circulo, text="...", background="#151515", fg="orange3")
        respaldo1.pack()
    else:
        tkinter.Label(Circulo, text="diametro anterior: ", background="#151515", fg="orange3").pack()
        respaldo1 = tkinter.Label(Circulo, text="...", background="#151515", fg="orange3")
        respaldo1.pack()
    def areaCirculo():
        try:
            if (pidioRadio == "yes"):
                radio = float(a.get())  # Para almacenar el nuevo valor
            else:
                diametro = float(a.get())
                radio = diametro/2 #Asi se consigue el radio de la circunferencia
            resultado = math.pi*(radio**2) # Área del cuadrado
            resultado_label.config(text=str(round(resultado, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Circulo, text="Calcular", command=areaCirculo, fg="green", background="#151515").pack()
    def destruir():
        Circulo.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        a.delete(0, tkinter.END)
    tkinter.Button(Circulo, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Circulo, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Formula = tkinter.Label(Circulo, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: π*r²")
    Circulo.focus() #Para bloquear la ventana principal
    Circulo.grab_set()

def VentanaTrapecio():
    Trapecio = tkinter.Toplevel()  # Para una nueva pestaña
    Trapecio.title("Area trapecio")
    Trapecio.geometry("300x400")
    Trapecio.resizable(0, 0)  # Para no cambiar el tamaño
    Trapecio.config(background="#151515")
    tkinter.Label(Trapecio, text="Ingresa base menor: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Trapecio, width=35)
    a.pack()
    tkinter.Label(Trapecio, text="Ingresa base mayor: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Trapecio, width=35)
    b.pack()
    tkinter.Label(Trapecio, text="Ingresa la altura: ", background="#151515", fg="chocolate2").pack()
    c = tkinter.Entry(Trapecio, width=35)
    c.pack()
    label = tkinter.Label(Trapecio, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Trapecio, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    tkinter.Label(Trapecio, text="base menor anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Trapecio, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Trapecio, text="base mayor anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Trapecio, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    tkinter.Label(Trapecio, text="altura anterior: ", background="#151515", fg="orange3").pack()
    respaldo3 = tkinter.Label(Trapecio, text="...", background="#151515", fg="orange3")
    respaldo3.pack()
    def areaTrapecio():
        try:
            baseMenor = float(a.get())
            baseMayor = float(b.get())
            altura = float(c.get())
            resultado = ((baseMayor+baseMenor)*altura)/(2) # Área del cuadrado
            resultado_label.config(text=str(round(resultado, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Trapecio, text="Calcular", command=areaTrapecio, fg="green", background="#151515").pack()
    def destruir():
        Trapecio.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        respaldo3.config(text=str(c.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
        c.delete(0, tkinter.END)
    tkinter.Button(Trapecio, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Trapecio, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    Formula = tkinter.Label(Trapecio, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: ((Área mayor+Área menor)*Altura) / 2")
    Trapecio.focus() #Para bloquear la ventana principal
    Trapecio.grab_set()

def VentanaCilindro():
    pidioRadio = tkinter.messagebox.askquestion("Datos", "Deseas ingresar solo el radio?")
    Cilindro = tkinter.Toplevel()  # Para una nueva pestaña
    Cilindro.title("Area cilindro")
    Cilindro.geometry("300x390")
    Cilindro.resizable(0, 0)  # Para no cambiar el tamaño
    Cilindro.config(background="#151515")
    if (pidioRadio == "yes"):
        tkinter.Label(Cilindro, text="Ingresa radio del cilindro: ", background="#151515", fg="chocolate2").pack()
        a = tkinter.Entry(Cilindro, width=35)
        a.pack()
    else:
        tkinter.Label(Cilindro, text="Ingresa diametro del cilindro: ", background="#151515", fg="chocolate2").pack()
        a = tkinter.Entry(Cilindro, width=35)
        a.pack()
    tkinter.Label(Cilindro, text="Ingresa altura del cilindro: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Cilindro, width=35)
    b.pack() #Para la altura
    label = tkinter.Label(Cilindro, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Cilindro, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    #Mostrar los datos anteriores
    if (pidioRadio == "yes"):
        tkinter.Label(Cilindro, text="El radio anterior: ", background="#151515", fg="orange3").pack()
        respaldo1 = tkinter.Label(Cilindro, text="...", background="#151515", fg="orange3")
        respaldo1.pack()
    else:
        tkinter.Label(Cilindro, text="El diametro anterior: ", background="#151515", fg="orange3").pack()
        respaldo1 = tkinter.Label(Cilindro, text="...", background="#151515", fg="orange3")
        respaldo1.pack()
    tkinter.Label(Cilindro, text="La altura anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Cilindro, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def areaCilindro():
        try:
            if (pidioRadio == "yes"):
                radio = float(a.get())  # Para almacenar el nuevo valor
            else:
                diametro = float(a.get())
                radio = diametro/2 #Asi se consigue el radio de la circunferencia
            Altura = float(b.get())
            AreaCurva = (2*math.pi*radio*Altura) # Área del cuadrado
            AreaBase = math.pi*(radio**2)
            resultado = AreaCurva + AreaBase
            resultado_label.config(text=str(round(resultado, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Cilindro, text="Calcular", command=areaCilindro, fg="green", background="#151515").pack()
    def destruir():
        Cilindro.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
    tkinter.Button(Cilindro, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Cilindro, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    tkinter.Label(Cilindro, text="Area Base = π*r²", fg="pale turquoise", background="#151515").pack()
    tkinter.Label(Cilindro, text="AreaCurva = 2*π*r²*Altura", fg="pale turquoise", background="#151515").pack()
    Formula = tkinter.Label(Cilindro, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: AreaTotal = AreaCurva + AreaBase")
    Cilindro.focus() #Para bloquear la ventana principal
    Cilindro.grab_set()

def VentanaPiramide():
    Piramide = tkinter.Toplevel()  # Para una nueva pestaña
    Piramide.title("Area Piramide")
    Piramide.geometry("340x380")
    Piramide.resizable(0, 0)  # Para no cambiar el tamaño
    Piramide.config(background="#151515")
    tkinter.Label(Piramide, text="Ingresa medida lado de base: ", background="#151515", fg="chocolate2").pack()
    a = tkinter.Entry(Piramide, width=35)
    a.pack()
    tkinter.Label(Piramide, text="Ingresa altura de la piramide: ", background="#151515", fg="chocolate2").pack()
    b = tkinter.Entry(Piramide, width=35)
    b.pack() #Para la altura
    label = tkinter.Label(Piramide, text="El resultado es:", background="#151515", fg="sandy brown")
    label.pack()  # Asegúrate de empaquetar el label
    resultado_label = tkinter.Label(Piramide, text="...", background="#151515", fg="orange3")  # Muestra el resultado obtenido
    resultado_label.pack()  # Para que aparezca en la pantalla el resultado
    #Mostrar datos anteriores
    tkinter.Label(Piramide, text="Medida del lado anterior: ", background="#151515", fg="orange3").pack()
    respaldo1 = tkinter.Label(Piramide, text="...", background="#151515", fg="orange3")
    respaldo1.pack()
    tkinter.Label(Piramide, text="Altura anterior: ", background="#151515", fg="orange3").pack()
    respaldo2 = tkinter.Label(Piramide, text="...", background="#151515", fg="orange3")
    respaldo2.pack()
    def areaPiramide():
        try:
            Base = float(a.get())
            Altura = float(b.get())
            AreaLateral = (Base*Altura)/2 # Área del cuadrado
            AreaBase = (Base**2)
            resultado = AreaLateral + AreaBase
            resultado_label.config(text=str(round(resultado, 3)))  # Actualiza el label con el resultado
        except ValueError:
            resultado_label.config(text="Error: Ingrese números válidos")  # Maneja errores
    tkinter.Button(Piramide, text="Calcular", command=areaPiramide, fg="green", background="#151515").pack()
    def destruir():
        Piramide.destroy()
    def limpiar():
        respaldo1.config(text=str(a.get()))
        respaldo2.config(text=str(b.get()))
        a.delete(0, tkinter.END)
        b.delete(0, tkinter.END)
    tkinter.Button(Piramide, text="Limpiar Entrada", command=limpiar, fg="DarkSeaGreen1", background="#151515").pack()
    tkinter.Button(Piramide, text="Regresar", command=destruir, fg="red", background="#151515").pack()
    tkinter.Label(Piramide, text="Area Base = lado^2", fg="pale turquoise", background="#151515").pack()
    tkinter.Label(Piramide, text="Area Lateral = (base*Altura)/2", fg="pale turquoise", background="#151515").pack()
    Formula = tkinter.Label(Piramide, fg="pale turquoise", background="#151515")
    Formula.pack()
    Formula.config(text="Formula: AreaTotal = AreaBase + AreaLateral")
    Piramide.focus() #Para bloquear la ventana principal
    Piramide.grab_set()

#------- Primera pestaña --------
ventana = tkinter.Tk()
ventana.title("INICIO")
ventana.config(background="#151515")
ventana.geometry("500x500")
ventana.resizable(0,0) #Para que no cambie el tamaño

#-------- Texto ----------
texto = tkinter.Label(ventana, text="BIENVENIDO", font="16")
texto.pack()
texto.config(background="#151515", fg="dodger blue") #Para el color del "BIENVENIDO"

#------- COMIENZA SELECCION DE Operaciones -------
#---- Texto "ELECCION" ----
Label = tkinter.Label(ventana, text="OPERACION A REALIZAR:")
Label.pack()
Label.config(background="#151515", fg="medium sea green")
Label.place(x=175,y=230)

#---- Lista Operaciones ----
combo = ttk.Combobox()
combo = ttk.Combobox(state="readonly") #Para solo elegir las opciones establecidas
combo["values"] = [
    "Sumar", "Restar", "Multiplicar", "Dividir", "Divisores", "Raiz Cuadrada", "Potencia",
    "Logaritmo Neperiano", "Logaritmo Base 10", "Exponencial",
    "Coseno", "Seno", "Tangente", 
    "Factorial", "Distancia Dos Puntos", "Raices", "Distancia Punto-Recta"
    ]
combo.place(x=175, y=250)
combo.current(0) #Para que inicie en el lugar 0, "Python"
combo.bind("<<ComboboxSelected>>", AccionElegida)

#------- COMIENZA SELECCION DE ÁREAS -------
#---- Texto Areas ----
Label2 = tkinter.Label(ventana, text="OPERACION DE ÁREAS:")
Label2.pack()
Label2.config(background="#151515", fg="medium sea green")
Label2.place(x=178,y=300)

#---- Lista de Areas ----
Areas = ttk.Combobox()
Areas = ttk.Combobox(state="readonly") #Para solo elegir las opciones establecidas
Areas["values"] = [
    "Cuadrado", "Triángulo", "Circulo", "Trapecio",
    "Cilindro", "Piramide"
    ]
Areas.place(x=175, y=320)
Areas.current(0) #Para que inicie en el lugar 0, "Python"
Areas.bind("<<ComboboxSelected>>", EleccionAreas)

#--------- Botones ---------
#---- Abandonar ----
Abandonar = tkinter.Button(ventana, text="SALIR", command=salir, fg="red")
Abandonar.pack()
Abandonar.place(x=225, y=379)

ventana.mainloop()