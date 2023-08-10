*Sistemas Operativos 1*  
*Seccion N*  
*Dayana Alejandra Reyes Rodríguez*  
*202002364*
# Parte 1: Gestión de Usuarios
## 1.Creación de Usuarios:
### Comando
sudo useradd usuario1  
sudo useradd usuario2  
sudo useradd usuario3  
### Resultado
Despues de ejecutar el comando por primera vez fue pedida la contraseña de mi usuario y despues de ingresar la contraseña continuo sin problema.

## 2.Asignación de Contraseñas:
### Comando
sudo passwd usuario1  
sudo passwd usuario2  
sudo passwd usuario3  
### Resultado
Al ejecutar el comando requeria la contraseña para el usuario, volver a escribir la contraseña para confirmar y por ultimo aparecia este mensaje:
passwd: contraseña actualizada correctamente
## 3.Información de Usuarios:
### Comando  
id usuario1  
id usuario2  
id usuario3  
### Resultado
Para el usuario1:  
uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)  
Para el usuario2:  
uid=1002(usuario2) gid=1002(usuario2) grupos=1002(usuario2)  
Para el usuario3:  
uid=1003(usuario3) gid=1003(usuario3) grupos=1003(usuario3)  
## 4.Eliminación de Usuarios
### Comando
sudo userdel usuario3
### Resultado
EL comando no regresó nada 
# Parte 2: Gestión de Grupos
## 1. Creación de Archivos y Directorios:
### Comando
sudo groupadd grupo1  
sudo groupadd grupo2  
### Resultado
EL comando no devolvió nada
## 2. Agregar Usuarios a Grupos: 
### Comando
sudo usermod -aG grupo1 usuario1  
sudo usermod -aG grupo2 usuario2  
### Resultado
EL comando no devolvió nada
## 3. Verificar Membresía: 
### Comando
groups usuario1  
groups usuario2  
### Resultado
Para usuario1:  
usuario1 : usuario1 grupo1  
para usuario2:  
usuario2 : usuario2 grupo2  
## 4. Eliminar Grupo:
### Comando
sudo groupdel grupo2
### Resultado
No devolvió nada
# Parte 3: Gestión de Permisos
## 1.Creación de Archivos y Directorios:
### Comando  
echo "SO1 Actividad 3" > ~/archivo1.txt
mkdir ~/directorio1  
echo "Actividad 3 SO1" > ~/directorio1/archivo2.txt
### Resultado
No devolvio nada
## 2.Verificar Permisos:
### Comando  
sudo chown usuario1:usuario1 ~/archivo1.txt  
ls -l ~/archivo1.txt  
ls -ld ~/directorio1  
### Resultado
-rw-rw-r-- 1 usuario1 grupo1 16 ago  9 18:45 /home/dayana/archivo1.txt  
drwxrwxr-x 2 usuario1 usuario1 4096 ago  9 18:45 /home/dayana/directorio1  
## 3.Modificar Permisos usando `chmod` con Modo Numérico:  
### Comando  
sudo chmod 640 ~/archivo1.txt
### Resultado
No devolvió nada
## 4.Modificar Permisos usando `chmod` con Modo Simbólico:
### Comando  
chmod u+x ~/directorio1/archivo2.txt
### Resultado
No devolvió nada
## 5.Cambiar el Grupo Propietario: 
### Comando  
sudo chown :grupo1 ~/directorio1/archivo2.txt
### Resultado
No devolvió nada
## 6.Configurar Permisos de Directorio: 
### Comando  
echo "SO1 Actividad 3" > ~/archivo1.txt
mkdir ~/directorio1  
echo "Actividad 3 SO1" > ~/directorio1/archivo2.txt  
### Resultado
No devolvió nada
## 7. Comprobación de Acceso:
### Comando  
cat /home/usuario1/archivo1.txt  

## 8.Verificación Final: 
### Comando  
ls -l ~/archivo1.txt  
ls -ld ~/directorio1  
# Reflexión:
## ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?
La gestión de usuarios y permisos es importante para garantizar la seguridad y eficiencia del sistema. Al asignar roles y privilegios adecuados a los usuarios, se limita el acceso no autorizado a datos,previniendo posibles brechas de seguridad.

## ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?

Solamente el comando sudo que otorga a los usuarios permisos temporales para ejecutar comandos como superusuario o como otros usuarios.