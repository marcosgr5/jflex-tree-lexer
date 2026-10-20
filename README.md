# Analizador léxico en JFlex

**ES** · [EN](#english)

Analizador léxico escrito con **JFlex** para un lenguaje de descripción de árboles (estilo Graphviz). Laboratorio de la asignatura de Teoría de Autómatas (UCLM).

## Qué reconoce

Definiciones de árboles (`arbol nombre { ... }`) con nodos y aristas, y sus atributos: forma, etiqueta, color, color de fuente y estilo.

## Uso

Con JFlex y Java instalados:

```
jflex AnalizadorLEA.flex
javac AnalizadorLEA.java
java AnalizadorLEA prueba.txt
```

`prueba.txt` contiene una entrada de ejemplo.

## Créditos

Autor: **Marcos Galán Rodríguez**. El enunciado del laboratorio pertenece a los profesores y no se incluye.

---

## English

Lexical analyser written with **JFlex** for a tree-description language (Graphviz-like). Lab exercise for the Automata Theory course (UCLM, Spain).

### What it recognises

Tree definitions (`arbol name { ... }`) with nodes and edges, and their attributes: shape, label, colour, font colour and style.

### Usage

With JFlex and Java installed:

```
jflex AnalizadorLEA.flex
javac AnalizadorLEA.java
java AnalizadorLEA prueba.txt
```

`prueba.txt` is a sample input.

### Credits

Author: **Marcos Galán Rodríguez**. The lab statement belongs to the instructors and is not included.
