# Nivel 1: Primeros pasos

# ¿Qué es la nube?
La _nube_ ya no es algo tan nuevo a como uno pensaría, sin embargo, es una herramienta muy relevante en cualquier producto tecnológico que se pueda imaginar. Su uso se encuentra básicamente en toda industria, pública y privada. Por ello, ya sea que te quieras dedicar directamente a la nube o no, es importante entender qué es y cómo puede usarse para resolver los problemas que puedas tener.

La nube puede describirse como aquellos servicios de infraestructura o cómputo que no existen en servidores físicos sino que son utilizados vía internet y  que generalmente provee un tercero.

Es decir, la empresa Magic Pets podría hostear su sitio web en un servidor dentro de sus oficinas o en un servidor que AWS le provee desde _algún_ lugar del mundo, a través de internet. Magic Pets, entonces, puede olvidarse de cualquier tema relacionado al matenimiento y disponibilidad de sus servidores en sí y en su lugar puede concentrarse en construir un gran producto. AWS tomará cargo de que su servidor esté siempre disponible.

## Nube pública o privada
Existe más de un proveedor de nube, en este curso se hablará específicamente sobre AWS. AWS es uno de los principals proveedores de nube públicos actualmente.

¿Nube pública? Sí, existen nubes públicas y privadas. En este contexto, público se refiere al hecho de que múltiples clientes comparten la infraestructura de la nube, esto no signifia que la información de cada uno sea pública. Podemos pensar en cómo todos los usuarios de un proveedor de red celular comparten la infraestructura más no puedes escuchar las llamadas de otros, mucho menos saber qué llamadas hacen. Las nubes privadas, es básicamente lo opuesto, infraestructura disponible para solamente un usuario u organización.

Respecto a proveedores de nube pública, los principales a la fecha podrían ser:
- [AWS Cloud](https://aws.amazon.com/)
- [MS Azure](https://azure.microsoft.com/en-us)
- [GCP](https://cloud.google.com/)

Existen otros proveedores de servicios de nube relativamente más pequeños pero que igualmente pueden ser de gran interés dependiendo de las necesidades de cada producto, por ejemplo, [Digital Ocean](https://www.digitalocean.com/).

## AWS, primeros pasos
Es hora de trabajar, a continuación el material para estudio personal :)

- [ ] [AWS Cloud Practicioner Essentials](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-cloud-practitioner-essentials)
- [ ] ...


## Laboratorio 1: EC2 y Networking en AWS
Magic Pets requiere de los siguientes servidores para su infraestructura en la nube, _web-server-1_, _web-server-2_ y _bastion-server-1_.
<!-- TODO: Definir qué AMI utilizar para estandarizar comandos y herramientas de Linux -->
Todo a continuación deberá crearse en la región de Oregon. Subneteo podrá hacerse a dicresión del estudiante. Tomar como red principal, 203.0.113.0/24.

El primer servidor, _web-server-1_, requiere estar en una subnet pública, con acceso a internet a través de un NAT Gateway. Dicho servidor solo debe exponer el puerto 443, cualquier otro puerto debe estar bloqueado desde la internet.

 _web-server-2_ se debe encontrar en una subnet privada, con posibilidad de comunicarse con  _bastion-server-1_ a través del puerto 22 (SSH). Cualquier otro puerto no debe ser permitido.

_bastion-server-1_ debe estar en una subnet pública, dicha subnet solo puede permitir conexiones a través de SSH originadas en tu IP Pública. Este servidor debe poder acceder ambos servidores web, _web-server-2_ solo a través de la red interna y no a través de internet.

<!-- TODO: Agregar diagrama de producto esperado -->

Recuerda eliminar tus recursos al final del laboratorio para evitar cargos en tu cuenta de AWS.

## Material relacionado
- [How to setup SSH Keys on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-20-04)