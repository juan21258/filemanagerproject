Aplicación para el manejo de archivos

Instrucciones:

Clonar el repositorio: $ git clone https://github.com/juan21258/filemanagerproject.git
Ir a la carpeta principal del proyecto e instalar las gemas: $ bundle install
Crear las siguientes bases de datos en postgresql: archivosdb_development, archivosdb, archivosdb_test
esto se hace mediante el comando: rake db:setup
Migrar las bases de datos: $ rake db:migrate
Para realizar pruebas de la app (default http://localhost:3000/): $ rails server

Requisitos:

Rails => 5.1.2 Ruby => 2.4.0 PostgreSQL => 9.6.3

Informacion de la aplicacion

Metodos REST

Archivos

archivos     GET    /archivos(.:format)          archivos#index
             POST   /archivos(.:format)          archivos#create
new_archivo  GET    /archivos/new(.:format)      archivos#new
edit_archivo GET    /archivos/:id/edit(.:format) archivos#edit
     archivo GET    /archivos/:id(.:format)      archivos#show
             PATCH  /archivos/:id(.:format)      archivos#update
             PUT    /archivos/:id(.:format)      archivos#update
             DELETE /archivos/:id(.:format)      archivos#destroy

Usuarios

usuarios GET    /usuarios(.:format)          usuarios#index
             POST   /usuarios(.:format)          usuarios#create
 new_usuario GET    /usuarios/new(.:format)      usuarios#new
edit_usuario GET    /usuarios/:id/edit(.:format) usuarios#edit
     usuario GET    /usuarios/:id(.:format)      usuarios#show
             PATCH  /usuarios/:id(.:format)      usuarios#update
             PUT    /usuarios/:id(.:format)      usuarios#update
             DELETE /usuarios/:id(.:format)      usuarios#destroy

Sesiones

sessions_new GET    /sessions/new(.:format)      sessions#new