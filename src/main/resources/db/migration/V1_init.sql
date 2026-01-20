-- =========================
-- TABELAS
-- =========================

create table artist (
  id bigserial primary key,
  name varchar(200) not null,
  artist_type varchar(20) not null, -- SINGER ou BAND
  created_at timestamp not null default now()
);

create table album (
  id bigserial primary key,
  title varchar(200) not null,
  created_at timestamp not null default now()
);

-- Relacionamento N:N Artista <-> Álbum
create table artist_album (
  artist_id bigint not null references artist(id) on delete cascade,
  album_id bigint not null references album(id) on delete cascade,
  primary key (artist_id, album_id)
);

-- Capas (uma ou mais imagens por álbum)
create table album_cover (
  id bigserial primary key,
  album_id bigint not null references album(id) on delete cascade,
  object_key varchar(400) not null,
  created_at timestamp not null default now()
);

-- Regionais (requisito Sênior)
create table regional (
  id integer primary key,
  nome varchar(200) not null,
  ativo boolean not null default true
);

-- =========================
-- CARGA INICIAL (EXEMPLOS DO EDITAL)
-- =========================

insert into artist(name, artist_type) values
('Serj Tankian', 'SINGER'),
('Mike Shinoda', 'SINGER'),
('Michel Teló', 'SINGER'),
('Guns N’ Roses', 'BAND');

insert into album(title) values
('Harakiri'),
('Black Blooms'),
('The Rough Dog'),
('The Rising Tied'),
('Post Traumatic'),
('Post Traumatic EP'),
('Where’d You Go'),
('Bem Sertanejo'),
('Bem Sertanejo - O Show (Ao Vivo)'),
('Bem Sertanejo - (1ª Temporada) - EP'),
('Use Your Illusion I'),
('Use Your Illusion II'),
('Greatest Hits');

-- Relacionamentos (exemplos)
insert into artist_album(artist_id, album_id)
select a.id, b.id from artist a, album b
where a.name='Serj Tankian' and b.title in ('Harakiri','Black Blooms','The Rough Dog');

insert into artist_album(artist_id, album_id)
select a.id, b.id from artist a, album b
where a.name='Mike Shinoda' and b.title in ('The Rising Tied','Post Traumatic','Post Traumatic EP','Where’d You Go');

insert into artist_album(artist_id, album_id)
select a.id, b.id from artist a, album b
where a.name='Michel Teló' and b.title in ('Bem Sertanejo','Bem Sertanejo - O Show (Ao Vivo)','Bem Sertanejo - (1ª Temporada) - EP');

insert into artist_album(artist_id, album_id)
select a.id, b.id from artist a, album b
where a.name='Guns N’ Roses' and b.title in ('Use Your Illusion I','Use Your Illusion II','Greatest Hits');