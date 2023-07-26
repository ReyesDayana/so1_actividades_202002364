*Sistemas Operativos 1*  
*Seccion N*  
*Dayana Alejandra Reyes Rodríguez*  
*202002364*  
# Kernel
Es la parte central del software que actúa como intermediario entre las aplicaciones y el hardware de una computadora Es responsable de administrar y acceder a los recursos del sistema, como la memoria, el procesador, los dispositivos de entrada y salida, y otros componentes.
![Kernel](https://acortar.link/hj6bcE)

## Tipos  
1. **Kernel monolítico:**  
En este tipo de kernel, todas las funciones del sistema operativo están integradas en un solo bloque de código.Tiene acceso directo a todas las funciones del hardware y del sistema, lo que lo hace rápido y eficiente en términos de rendimiento. Sin embargo, cualquier error o falla en una parte del kernel puede afectar a todo el sistema. 
2. **Microkernel:**  
Este tipo de kernel se mantiene pequeño y solo contiene las funciones más fundamentales, como la gestión de memoria y la planificación de procesos. Otras funciones, que no son esenciales para el funcionamiento básico del sistema, se ejecutan como procesos fuera del kernel, en modo de usuario. Esto aumenta la estabilidad y la seguridad del sistema, ya que las fallas en los servicios externos no afectarán al núcleo.
3. **Kernel híbrido:**  
El kernel híbrido combina características del kernel monolítico y del microkernel. Parte del código es ejecutado en modo kernel (modo privilegiado) para obtener acceso directo al hardware y garantizar un rendimiento óptimo, mientras que otras partes se ejecutan en modo de usuario para mejorar la modularidad y la estabilidad del sistema. 