drop table if exists clientes;
drop table if exists facturas;
drop table if exists facturas_items;
drop table if exists productos;
drop table if exists roles;
drop table if exists usuarios;
drop table if exists usuarios_roles;
create table clientes (id bigint not null auto_increment, apellido varchar(255), create_at date not null, email varchar(255) not null, foto varchar(255), nombre varchar(12) not null, primary key (id));
create table facturas (id bigint not null auto_increment, create_at date, descripcion varchar(255), observacion varchar(255), cliente_id bigint, primary key (id));
create table facturas_items (id bigint not null auto_increment, cantidad integer, producto_id bigint, factura_id bigint, primary key (id));
create table productos (id bigint not null auto_increment, create_at date, nombre varchar(255), precio double precision, primary key (id));
create table roles (id bigint not null auto_increment, nombre varchar(20), primary key (id));
create table usuarios (id bigint not null auto_increment, apellido varchar(255), email varchar(255), enabled bit, nombre varchar(255), password varchar(60), username varchar(20), primary key (id));
create table usuarios_roles (usuario_id bigint not null, role_id bigint not null);
alter table clientes add constraint UK_1c96wv36rk2hwui7qhjks3mvg unique (email);
alter table roles add constraint UK_ldv0v52e0udsh2h1rs0r0gw1n unique (nombre);
alter table usuarios add constraint UK_kfsp0s1tflm1cwlj8idhqsad0 unique (email);
alter table usuarios add constraint UK_m2dvbwfge291euvmk6vkkocao unique (username);
alter table usuarios_roles add constraint UKqjaspm7473pnu9y4jxhrds8r2 unique (usuario_id, role_id);
alter table facturas add constraint FK1qiuk10rfkovhlfpsk7oic0v8 foreign key (cliente_id) references clientes (id);
alter table facturas_items add constraint FKdumnm9x14hjfp9fufn7q8389r foreign key (producto_id) references productos (id);
alter table facturas_items add constraint FKnv8ijya20df661b0p6drqcx7u foreign key (factura_id) references facturas (id);
alter table usuarios_roles add constraint FKihom0uklpkfpffipxpoyf7b74 foreign key (role_id) references roles (id);
alter table usuarios_roles add constraint FKqcxu02bqipxpr7cjyj9dmhwec foreign key (usuario_id) references usuarios (id);


