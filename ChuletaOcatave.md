# Chuleta Octave

## Impresion en la consola

```
>> a = pi
```

Nos imprime a = 3.1416

Otra manera de imprimir es utilizar la funcion **disp**

````
>> disp(sprintf('2 decimals: %0.2f', a))
````

Para hacer que las salidas tengan un formato de mas decimales podemos utilizar

````
format long
````

y para volver al valor por defecto

````
format short
````

## Vectore y Matrices

Vector fila:
````
V = [1 2 3]
````

Vector columna:
````
W = [3; 4; 6]
````

Con Rangos

````
V = 1:0.1:2
````

````
W = 1:6
````

Para generar una matriz que contiene solo valores 1

````
ones(2,3)
````

Y si la deseamos con otro valor

````
2*ones(3,3)
````

O con ceros

````
zeros(5,5)
````

Para genera una matriz de números aleatorios

````
r = rand(1,3)
````

Para generar una distribucion gausiana alrededor de 0

````
randn(1,10)
````

````
    w = -6 + sqrt(10)*randn(1,10000);
````

Y oara visualizar el histograma

````
hist(w)
````

Para mostrar el histograma con un ancho de barra mas pequeño

````
hist(w, 50)
````

Matriz Diagonal

````
eye(5)
````

Para obtener el tamaño de una matriz

````
size(A)
````

Por otra parte la funcion length(A) brinda la logitud de la mayor dimension

## Archivos

````
load archivo.dat
````

````
load('archivo.dat)
````

Para ver las variables

````
who
```` 

O para ver la lista mas detallada

````
whos
````

### Para salvar un archivo

````
save nombre_fichero.dat nombre_variable;
````

Si queremos salvar los datos (sin la metadata que se adiciona al archivo)

````
save file2.txt s -ascii % save as text (ASCII)
````

### Accediendo e elementos de una matriz

Para acceder a un elemento de la matriz, si por ejemplo A es una matriz de 4x4, si escribimos:

````
A(2,3)
````
accedemos al elemento que esta en la fila 2, columna 3.

Para acceder a toda una fila o columna hacemos uso de los ":". Por ejemplo si tenemos la siguiente matriz de numeros aleatorios

````
A = round(abs(randn(5,5)*10));
````

Para acceder por ejemplo a todos los elementos de la 3ra fila hacemos:

````
A(:, 3)
````

O para acceder a todos los elementos de la 4 fila hacemos 

````
A(4,:)
````

También podemos seleccionar mas de una fila o columna, ejemplo:

````
A(:, [1 4])
````
Selecciona todas las filas de las columnas 1 y 4.

Para agregar una fila al final de una matriz:

````
A = [A; [1 1 1 1 1 1 1]]
````

Para agregar una columna al final de una matriz
````
A = [A, [1;2;3;4;5]]
````

## Operaciones con matrices

Si
````
A = [1 2; 3 4; 5 6], 
B = [2 2; 2 2]   
C = [5 3; 3 1; 4 4]
````

#### Producto

````
A*B
````

#### Operaciones elemento a elemento

````
A .* B
````

````
A ./ B
````

#### Transpuesta de una matriz

````
A'
````

#### Obtener maximo y posicion en un array vector
[val, ind] = max(D)

# Obtener true o false en dependencia de condicion

````
A > 3
````
La operación anterior retorna una matriz con las mismas dimensiones que la original 
pero en cada posicion retorna un cero o un 1, en correspondencia de si cumple o no la condicion.

Por otra parte la operacion
````
find(A > 3)
````
Retorna las posiciones en las que se cumple la condicion

#### Sum

Para sumar todos los elementos de cada columna de una matriz:

````
sum(A)
````

#### Maximo por fila o columna
````
max(A,[],1)
````
````
max(A,[],2)
````

Si queremos obtener el maximo de toda la matriz:
````
max(max(A))
````
o
````
max(A(:))
````

#### Obtener la inversa de una matriz

````
pinv(A)
````

### Graficando en Octave

Creamos un rango de valores de absisas
````
t=[0:0.01:0.9];
y1=sin(2*pi*4*t);
plot(t,y1);
````
Esto nos muestra el gráfico de la función. Si ahora creamos 
````
y2=cos(2*pi*4*t);
plot(t,y2);
````
El primer grafico será reemplazado. Para poder ver ambos, después de graficar el primero debemos ejecutar el comando "hold on"
````
plot(t,y1);
hold on;
plot(t,y2);
````
Para colocar labels en el grafico
````
xlabel('time');
ylabel('value');
````
Para colocar leyenda
````
legend('sin','cos');
````
Para colocar un título:
````
title('my plot');
````
#### Para exportar el grafico en un PNG

Nos movemos a una carpeta que queramos
````
cd 'C:\Developer\MachineLearning\Coursera\plots';
````

Y exportamos el grafico.
````
print -dpng 'myplot.png'
````

