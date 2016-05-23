Drupal Devel
========

Imagem derivada da oficial "drupal", mas pré-configurada para uso em projetos.

A ideia é ter uma imagem mais prática para uso em diversos projetos, com mountpoints e variáveis de ambiente que facilitem seu reuso em diferentes projetos.

## Motivação

A imagem oficial "drupal" é perfeita para uma execução auto-contida do Drupal, sem necessidade de instalação prévia de qualquer outra dependência. Contudo ela resulta um em portal não-inicializado, em que o administrador ainda precisa fornecer uma certa quantidade de informações no primeiro acesso ao site.

Para que o uso em projetos seja mais ágil, é interessante que a imagem já traga um site inicializado (pasta, DB, tema etc.) e declare volumes convenientes.

## Containers em geral

No escopo de produtos como o Drupal, em geral containers servem a propósitos distintos:

* Demonstração fast-food do produto, viável neste caso com um simples "docker run" da imagem oficial (sem precisar configurar ou montar nada previamente);
* Desenvolvimento com o produto, onde um repositório de fontes é montado no container de forma que o desenvolvedor possa visualizar mudanças imediatamente;
* Empacotamento para deployment, onde uma imagem definitiva é criada para estrega em produção.

A imagem oficial "drupal" no Docker Hub se encaixa bem na primeira opção, pois ela fornece um container "all-in-one" pronto para uso imediato.

## Drupal - Imagem oficial

A imagem "drupal" oficial pode ser usada em sua forma mais simples como abaixo:

```
docker run --name mydrupal -d \
    -p 8000:80 \
    drupal
```

Esta imagem já possui um Apache/PHP com o Drupal pré-instalado, porém não inicializado. Se executada desta forma o container irá utilizar um banco de dados SQLite embutido, dispensando o uso de um BD remoto.

A necessidade de inicializar o Drupal na primeira execução é, porém, inconveniente, uma vez que este processo é lento e manual.

## Imagem vertigo/drupal-devel

Esta imagem é baseada na imagem "drupal" oficial, porém com algumas conveniências:

* Drupal já inicializado (site e BD SQLite)
* Drush


