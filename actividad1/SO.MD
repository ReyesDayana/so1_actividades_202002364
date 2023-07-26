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
## Diferencias  
La diferencia principal entre los tipos se centra en la organización y el diseño de las funciones del sistema operativo. El kernel monolítico es una única entidad que maneja todas las funciones del sistema, el microkernel divide las funciones en procesos separados para mejorar la estabilidad y la seguridad, mientras que el kernel híbrido busca combinar lo mejor de ambos enfoques.

# User vs Kernel Mode  
En un sistema operativo, existen dos niveles de acceso y privilegios en los que los programas y procesos pueden operar: el Modo de Usuario y el Modo Kernel. Estos modos representan niveles diferentes de acceso a los recursos del sistema y se utilizan para garantizar la seguridad y la estabilidad del sistema. Las principales diferencias de estos modos son:  

•**Modo de Usuario (User Mode):**  
En el Modo de Usuario, los programas y aplicaciones se ejecutan con restricciones y limitaciones de acceso a los recursos del sistema. Las aplicaciones no tienen permisos para acceder directamente al hardware o interactuar con áreas críticas del sistema, como el espacio de memoria del kernel.
Si un programa intenta realizar una operación privilegiada o acceder a recursos restringidos, el hardware genera una interrupción y el sistema operativo toma el control para manejar la situación adecuadamente.
El Modo de Usuario es el nivel de acceso más bajo y menos privilegiado, lo que garantiza que las aplicaciones normales no puedan dañar o alterar el funcionamiento del núcleo del sistema operativo.
  
•**Modo Kernel**  
Es el nivel de acceso más alto y privilegiado. En este modo, el kernel del sistema operativo tiene acceso completo a los recursos del hardware y puede realizar operaciones privilegiadas sin restricciones.
Las tareas esenciales del sistema, como la gestión de memoria, la planificación de procesos y el manejo de dispositivos, se llevan a cabo en el modo kernel. El Modo Kernel se utiliza para realizar tareas críticas y gestionar los recursos del hardware de manera controlada y segura.  
  
El cambio entre el Modo de Usuario y el Modo Kernel se produce a través de una instrucción de hardware especial que provoca una transición controlada entre los niveles de privilegio. Esto garantiza que el kernel tenga el control sobre las operaciones críticas del sistema y protege el núcleo del sistema operativo de daños causados por aplicaciones maliciosas o errores de programación.
  
![Modos](https://www.studytonight.com/operating-system/images/system-calls.png)