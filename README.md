# Projeto Profissional – Back-End (Java)

Projeto Profissional desenvolvido para a **Etapa 02 – Avaliação Técnica** do Processo Seletivo Simplificado
para o cargo de **Analista de Tecnologia da Informação – Back-End (Sênior)**.

## Candidato
- Nome: Erick de Assunção Barbosa

## Modalidade do Projeto
- Back-End

## Tecnologia Base
- Linguagem: **Java**
- Framework: **Spring Boot**
- Banco de Dados: PostgreSQL
- Autenticação: JWT
- Armazenamento de Objetos: MinIO (API compatível com S3)
- Migrações de Banco: Flyway
- Containerização: Docker e Docker Compose

## Descrição Geral
O projeto consiste na implementação de uma **API REST** para gerenciamento de **artistas e álbuns**, conforme
especificações do **Anexo II – Projeto Desenvolvedor Back End Sênior** do edital.

A aplicação será desenvolvida seguindo boas práticas de engenharia de software, organização em camadas,
versionamento de endpoints, segurança, testes automatizados e documentação técnica.

## Funcionalidades Previstas
- API REST versionada (`/api/v1`);
- Relacionamento **Artista–Álbum (N:N)**;
- Autenticação JWT com expiração e renovação;
- Operações POST, PUT e GET;
- Paginação e consultas parametrizadas;
- Upload de imagens de capa de álbuns;
- Armazenamento de imagens no MinIO;
- Geração de links pré-assinados com expiração;
- Health Checks (liveness/readiness);
- Testes unitários;
- Rate limit por usuário;
- Notificação via WebSocket para novos álbuns cadastrados;
- Sincronização de dados de regionais conforme endpoint externo informado no edital.

## Execução do Projeto
As instruções detalhadas de execução, testes e configuração do ambiente serão disponibilizadas
neste arquivo conforme a evolução do desenvolvimento.

## Observações
O projeto encontra-se em desenvolvimento e será evoluído até o prazo final permitido pelo edital.
Caso algum requisito não seja implementado integralmente, as decisões técnicas e priorizações
serão devidamente justificadas neste documento.
