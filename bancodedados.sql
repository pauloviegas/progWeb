-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.17 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para progweb
CREATE DATABASE IF NOT EXISTS `progweb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `progweb`;


-- Copiando estrutura para tabela progweb.ci_sessions
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela progweb.ci_sessions: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT IGNORE INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('35cfda43852137ae6c40ab7b29ed8337', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1433616468, 'a:2:{s:9:"user_data";s:0:"";s:10:"permissoes";a:18:{i:0;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:16:"admin/home/index";s:16:"alias_controller";s:4:"Home";s:12:"alias_action";s:17:"Página Principal";s:5:"ativo";s:1:"0";}i:1;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/index";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:50:"Visualizar Lista com Todas as Funções do Sistema";s:5:"ativo";s:1:"1";}i:2;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/criar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:37:"Cadastrar Uma Nova Página no Sistema";s:5:"ativo";s:1:"1";}i:3;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/pagina/editar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:34:"Alterar Informações das Páginas";s:5:"ativo";s:1:"1";}i:4;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/pagina/deletar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:30:"Excluir as Páginas do Sistema";s:5:"ativo";s:1:"1";}i:5;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/index";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:39:"Visualizar Lista com todos os Usuários";s:5:"ativo";s:1:"1";}i:6;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/ativo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:30:"Ativar e Inativar os Usuários";s:5:"ativo";s:1:"1";}i:7;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/criar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:26:"Cadastrar Um Novo Usuário";s:5:"ativo";s:1:"1";}i:8;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/detalhe";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:48:"Visualizar Informações Completas dos Usuários";s:5:"ativo";s:1:"1";}i:9;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/usuario/editar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:35:"Alterar Informações dos Usuários";s:5:"ativo";s:1:"1";}i:10;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/deletar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:20:"Excluir os Usuários";s:5:"ativo";s:1:"1";}i:11;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:25:"admin/usuario/trocargrupo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:25:"Trocar Usuários de Grupo";s:5:"ativo";s:1:"1";}i:12;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:32:"admin/usuario/trocarsenhausuario";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:33:"Anterar Senha de Outros Usuários";s:5:"ativo";s:1:"1";}i:13;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/index";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:47:"Visualizar Lista com Todos os Gupos de Usuário";s:5:"ativo";s:1:"1";}i:14;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/criar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:35:"Cadastrar Um Novo Grupo de Usuário";s:5:"ativo";s:1:"1";}i:15;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/grupo/editar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:44:"Alterar Informações dos Grupos de Usuário";s:5:"ativo";s:1:"1";}i:16;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/grupo/deletar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:30:"Excluir os Grupos de Usuários";s:5:"ativo";s:1:"1";}i:17;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/grupo/permitir";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:51:"Liberar ou Bloquear Acessos dos Grupos de Usuários";s:5:"ativo";s:1:"1";}}}'),
	('93a8eb22593e64adea643a9c4cf7fa46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425954204, 'a:4:{s:9:"user_data";s:0:"";s:10:"permissoes";a:18:{i:0;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:16:"admin/home/index";s:16:"alias_controller";s:4:"Home";s:12:"alias_action";s:17:"Página Principal";s:5:"ativo";s:1:"0";}i:1;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/index";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:50:"Visualizar Lista com Todas as Funções do Sistema";s:5:"ativo";s:1:"1";}i:2;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/criar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:37:"Cadastrar Uma Nova Página no Sistema";s:5:"ativo";s:1:"1";}i:3;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/pagina/editar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:34:"Alterar Informações das Páginas";s:5:"ativo";s:1:"1";}i:4;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/pagina/deletar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:30:"Excluir as Páginas do Sistema";s:5:"ativo";s:1:"1";}i:5;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/index";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:39:"Visualizar Lista com todos os Usuários";s:5:"ativo";s:1:"1";}i:6;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/ativo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:30:"Ativar e Inativar os Usuários";s:5:"ativo";s:1:"1";}i:7;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/criar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:26:"Cadastrar Um Novo Usuário";s:5:"ativo";s:1:"1";}i:8;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/detalhe";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:48:"Visualizar Informações Completas dos Usuários";s:5:"ativo";s:1:"1";}i:9;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/usuario/editar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:35:"Alterar Informações dos Usuários";s:5:"ativo";s:1:"1";}i:10;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/deletar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:20:"Excluir os Usuários";s:5:"ativo";s:1:"1";}i:11;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:25:"admin/usuario/trocargrupo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:25:"Trocar Usuários de Grupo";s:5:"ativo";s:1:"1";}i:12;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:32:"admin/usuario/trocarsenhausuario";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:33:"Anterar Senha de Outros Usuários";s:5:"ativo";s:1:"1";}i:13;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/index";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:47:"Visualizar Lista com Todos os Gupos de Usuário";s:5:"ativo";s:1:"1";}i:14;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/criar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:35:"Cadastrar Um Novo Grupo de Usuário";s:5:"ativo";s:1:"1";}i:15;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/grupo/editar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:44:"Alterar Informações dos Grupos de Usuário";s:5:"ativo";s:1:"1";}i:16;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/grupo/deletar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:30:"Excluir os Grupos de Usuários";s:5:"ativo";s:1:"1";}i:17;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/grupo/permitir";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:51:"Liberar ou Bloquear Acessos dos Grupos de Usuários";s:5:"ativo";s:1:"1";}}s:7:"usuario";O:8:"stdClass":6:{s:2:"id";s:1:"1";s:8:"id_grupo";s:1:"1";s:4:"nome";s:12:"Paulo Viegas";s:5:"senha";s:40:"d033e22ae348aeb5660fc2140aec35850c4da997";s:5:"email";s:23:"pauloviegas93@gmail.com";s:5:"ativo";s:1:"1";}s:17:"flash:old:sucesso";s:31:"Você foi logado com sucesso!!!";}'),
	('b1d7cd82a16ad5650f19b9c32b821123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425223720, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";O:8:"stdClass":6:{s:2:"id";s:1:"1";s:8:"id_grupo";s:1:"1";s:4:"nome";s:12:"Paulo Viegas";s:5:"senha";s:40:"d033e22ae348aeb5660fc2140aec35850c4da997";s:5:"email";s:23:"pauloviegas93@gmail.com";s:5:"ativo";s:1:"1";}s:10:"permissoes";a:18:{i:0;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:16:"admin/home/index";s:16:"alias_controller";s:4:"Home";s:12:"alias_action";s:17:"Página Principal";s:5:"ativo";s:1:"0";}i:1;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/index";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:50:"Visualizar Lista com Todas as Funções do Sistema";s:5:"ativo";s:1:"1";}i:2;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/criar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:37:"Cadastrar Uma Nova Página no Sistema";s:5:"ativo";s:1:"1";}i:3;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/pagina/editar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:34:"Alterar Informações das Páginas";s:5:"ativo";s:1:"1";}i:4;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/pagina/deletar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:30:"Excluir as Páginas do Sistema";s:5:"ativo";s:1:"1";}i:5;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/index";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:39:"Visualizar Lista com todos os Usuários";s:5:"ativo";s:1:"1";}i:6;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/ativo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:30:"Ativar e Inativar os Usuários";s:5:"ativo";s:1:"1";}i:7;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/criar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:26:"Cadastrar Um Novo Usuário";s:5:"ativo";s:1:"1";}i:8;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/detalhe";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:48:"Visualizar Informações Completas dos Usuários";s:5:"ativo";s:1:"1";}i:9;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/usuario/editar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:35:"Alterar Informações dos Usuários";s:5:"ativo";s:1:"1";}i:10;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/deletar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:20:"Excluir os Usuários";s:5:"ativo";s:1:"1";}i:11;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:25:"admin/usuario/trocargrupo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:25:"Trocar Usuários de Grupo";s:5:"ativo";s:1:"1";}i:12;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:32:"admin/usuario/trocarsenhausuario";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:33:"Anterar Senha de Outros Usuários";s:5:"ativo";s:1:"1";}i:13;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/index";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:47:"Visualizar Lista com Todos os Gupos de Usuário";s:5:"ativo";s:1:"1";}i:14;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/criar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:35:"Cadastrar Um Novo Grupo de Usuário";s:5:"ativo";s:1:"1";}i:15;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/grupo/editar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:44:"Alterar Informações dos Grupos de Usuário";s:5:"ativo";s:1:"1";}i:16;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/grupo/deletar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:30:"Excluir os Grupos de Usuários";s:5:"ativo";s:1:"1";}i:17;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/grupo/permitir";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:51:"Liberar ou Bloquear Acessos dos Grupos de Usuários";s:5:"ativo";s:1:"1";}}}'),
	('b818041c5536dddee3a816814ad81845', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425180882, 'a:3:{s:9:"user_data";s:0:"";s:10:"permissoes";a:18:{i:0;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:16:"admin/home/index";s:16:"alias_controller";s:4:"Home";s:12:"alias_action";s:17:"Página Principal";s:5:"ativo";s:1:"0";}i:1;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/index";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:50:"Visualizar Lista com Todas as Funções do Sistema";s:5:"ativo";s:1:"1";}i:2;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/criar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:37:"Cadastrar Uma Nova Página no Sistema";s:5:"ativo";s:1:"1";}i:3;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/pagina/editar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:34:"Alterar Informações das Páginas";s:5:"ativo";s:1:"1";}i:4;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/pagina/deletar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:30:"Excluir as Páginas do Sistema";s:5:"ativo";s:1:"1";}i:5;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/index";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:39:"Visualizar Lista com todos os Usuários";s:5:"ativo";s:1:"1";}i:6;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/ativo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:30:"Ativar e Inativar os Usuários";s:5:"ativo";s:1:"1";}i:7;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/criar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:26:"Cadastrar Um Novo Usuário";s:5:"ativo";s:1:"1";}i:8;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/detalhe";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:48:"Visualizar Informações Completas dos Usuários";s:5:"ativo";s:1:"1";}i:9;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/usuario/editar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:35:"Alterar Informações dos Usuários";s:5:"ativo";s:1:"1";}i:10;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/deletar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:20:"Excluir os Usuários";s:5:"ativo";s:1:"1";}i:11;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:25:"admin/usuario/trocargrupo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:25:"Trocar Usuários de Grupo";s:5:"ativo";s:1:"1";}i:12;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:32:"admin/usuario/trocarsenhausuario";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:33:"Anterar Senha de Outros Usuários";s:5:"ativo";s:1:"1";}i:13;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/index";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:47:"Visualizar Lista com Todos os Gupos de Usuário";s:5:"ativo";s:1:"1";}i:14;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/criar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:35:"Cadastrar Um Novo Grupo de Usuário";s:5:"ativo";s:1:"1";}i:15;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/grupo/editar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:44:"Alterar Informações dos Grupos de Usuário";s:5:"ativo";s:1:"1";}i:16;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/grupo/deletar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:30:"Excluir os Grupos de Usuários";s:5:"ativo";s:1:"1";}i:17;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/grupo/permitir";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:51:"Liberar ou Bloquear Acessos dos Grupos de Usuários";s:5:"ativo";s:1:"1";}}s:7:"usuario";O:8:"stdClass":6:{s:2:"id";s:2:"12";s:8:"id_grupo";s:1:"3";s:4:"nome";s:5:"Adasd";s:5:"senha";s:40:"8cb2237d0679ca88db6464eac60da96345513964";s:5:"email";s:18:"teste@teste.com.br";s:5:"ativo";s:1:"1";}}'),
	('c0d83b94a504c84727a55b58bb0b2e02', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 1378932459, 'a:3:{s:9:"user_data";s:0:"";s:10:"permissoes";a:17:{i:0;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:16:"admin/home/index";s:16:"alias_controller";s:4:"Home";s:12:"alias_action";s:17:"Página Principal";s:5:"ativo";s:1:"0";}i:1;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/index";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:50:"Visualizar Lista com Todas as Funções do Sistema";s:5:"ativo";s:1:"1";}i:2;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/pagina/criar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:37:"Cadastrar Uma Nova Página no Sistema";s:5:"ativo";s:1:"1";}i:3;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/pagina/editar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:34:"Alterar Informações das Páginas";s:5:"ativo";s:1:"1";}i:4;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/pagina/deletar";s:16:"alias_controller";s:19:"Páginas do Sistema";s:12:"alias_action";s:30:"Excluir as Páginas do Sistema";s:5:"ativo";s:1:"1";}i:5;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/index";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:39:"Visualizar Lista com todos os Usuários";s:5:"ativo";s:1:"1";}i:6;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/ativo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:30:"Ativar e Inativar os Usuários";s:5:"ativo";s:1:"1";}i:7;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/criar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:26:"Cadastrar Um Novo Usuário";s:5:"ativo";s:1:"1";}i:8;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/detalhe";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:48:"Visualizar Informações Completas dos Usuários";s:5:"ativo";s:1:"1";}i:9;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/usuario/editar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:35:"Alterar Informações dos Usuários";s:5:"ativo";s:1:"1";}i:10;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/deletar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:20:"Excluir os Usuários";s:5:"ativo";s:1:"1";}i:11;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:25:"admin/usuario/trocargrupo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:25:"Trocar Usuários de Grupo";s:5:"ativo";s:1:"1";}i:12;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/index";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:47:"Visualizar Lista com Todos os Gupos de Usuário";s:5:"ativo";s:1:"1";}i:13;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/criar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:35:"Cadastrar Um Novo Grupo de Usuário";s:5:"ativo";s:1:"1";}i:14;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/grupo/editar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:44:"Alterar Informações dos Grupos de Usuário";s:5:"ativo";s:1:"1";}i:15;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/grupo/deletar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:30:"Excluir os Grupos de Usuários";s:5:"ativo";s:1:"1";}i:16;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/grupo/permitir";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:51:"Liberar ou Bloquear Acessos dos Grupos de Usuários";s:5:"ativo";s:1:"1";}}s:7:"usuario";O:8:"stdClass":6:{s:2:"id";s:1:"1";s:8:"id_grupo";s:1:"1";s:4:"nome";s:7:"PadaWeb";s:5:"senha";s:40:"8cb2237d0679ca88db6464eac60da96345513964";s:5:"email";s:19:"contato@padaweb.net";s:5:"ativo";s:1:"1";}}'),
	('fe0536b4f38e7c2a7b0c572c9b4be0ba', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 1378930907, 'a:2:{s:10:"permissoes";a:13:{i:0;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:16:"admin/home/index";s:16:"alias_controller";s:4:"Home";s:12:"alias_action";s:17:"Página Principal";s:5:"ativo";s:1:"0";}i:1;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/index";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:39:"Visualizar Lista com todos os Usuários";s:5:"ativo";s:1:"1";}i:2;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/criar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:26:"Cadastrar Um Novo Usuário";s:5:"ativo";s:1:"1";}i:3;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/usuario/editar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:35:"Alterar Informações dos Usuários";s:5:"ativo";s:1:"1";}i:4;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/deletar";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:20:"Excluir os Usuários";s:5:"ativo";s:1:"1";}i:5;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:25:"admin/usuario/trocargrupo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:25:"Trocar Usuários de Grupo";s:5:"ativo";s:1:"1";}i:6;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/index";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:47:"Visualizar Lista com Todos os Gupos de Usuário";s:5:"ativo";s:1:"1";}i:7;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:17:"admin/grupo/criar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:35:"Cadastrar Um Novo Grupo de Usuário";s:5:"ativo";s:1:"1";}i:8;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:18:"admin/grupo/editar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:44:"Alterar Informações dos Grupos de Usuário";s:5:"ativo";s:1:"1";}i:9;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/grupo/deletar";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:30:"Excluir os Grupos de Usuários";s:5:"ativo";s:1:"1";}i:10;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:20:"admin/grupo/permitir";s:16:"alias_controller";s:18:"Grupos de Usuário";s:12:"alias_action";s:51:"Liberar ou Bloquear Acessos dos Grupos de Usuários";s:5:"ativo";s:1:"1";}i:11;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:21:"admin/usuario/detalhe";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:48:"Visualizar Informações Completas dos Usuários";s:5:"ativo";s:1:"1";}i:12;O:8:"stdClass":5:{s:8:"id_grupo";s:1:"1";s:6:"pagina";s:19:"admin/usuario/ativo";s:16:"alias_controller";s:8:"Usuário";s:12:"alias_action";s:30:"Ativar e Inativar os Usuários";s:5:"ativo";s:1:"1";}}s:7:"usuario";O:8:"stdClass":6:{s:2:"id";s:1:"1";s:8:"id_grupo";s:1:"1";s:4:"nome";s:7:"PadaWeb";s:5:"senha";s:40:"8cb2237d0679ca88db6464eac60da96345513964";s:5:"email";s:19:"contato@padaweb.net";s:5:"ativo";s:1:"1";}}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;


-- Copiando estrutura para tabela progweb.usu_grupo
CREATE TABLE IF NOT EXISTS `usu_grupo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grupo` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela progweb.usu_grupo: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usu_grupo` DISABLE KEYS */;
INSERT IGNORE INTO `usu_grupo` (`id`, `grupo`) VALUES
	(1, 'Administrador'),
	(2, 'Teste Permissões');
/*!40000 ALTER TABLE `usu_grupo` ENABLE KEYS */;


-- Copiando estrutura para tabela progweb.usu_paginas
CREATE TABLE IF NOT EXISTS `usu_paginas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modulo` varchar(100) NOT NULL DEFAULT 'admin',
  `controller` varchar(100) NOT NULL DEFAULT '',
  `action` varchar(100) NOT NULL DEFAULT '',
  `alias_controller` varchar(100) NOT NULL,
  `alias_action` varchar(100) NOT NULL DEFAULT '',
  `ativo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela progweb.usu_paginas: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `usu_paginas` DISABLE KEYS */;
INSERT IGNORE INTO `usu_paginas` (`id`, `modulo`, `controller`, `action`, `alias_controller`, `alias_action`, `ativo`) VALUES
	(1, 'admin', 'home', 'index', 'Home', 'Página Principal', 0),
	(2, 'admin', 'pagina', 'index', 'Páginas do Sistema', 'Visualizar Lista com Todas as Funções do Sistema', 1),
	(3, 'admin', 'pagina', 'criar', 'Páginas do Sistema', 'Cadastrar Uma Nova Página no Sistema', 1),
	(4, 'admin', 'pagina', 'editar', 'Páginas do Sistema', 'Alterar Informações das Páginas', 1),
	(5, 'admin', 'pagina', 'deletar', 'Páginas do Sistema', 'Excluir as Páginas do Sistema', 1),
	(6, 'admin', 'usuario', 'index', 'Usuário', 'Visualizar Lista com todos os Usuários', 1),
	(7, 'admin', 'usuario', 'ativo', 'Usuário', 'Ativar e Inativar os Usuários', 1),
	(8, 'admin', 'usuario', 'criar', 'Usuário', 'Cadastrar Um Novo Usuário', 1),
	(9, 'admin', 'usuario', 'detalhe', 'Usuário', 'Visualizar Informações Completas dos Usuários', 1),
	(10, 'admin', 'usuario', 'editar', 'Usuário', 'Alterar Informações dos Usuários', 1),
	(11, 'admin', 'usuario', 'deletar', 'Usuário', 'Excluir os Usuários', 1),
	(12, 'admin', 'usuario', 'trocargrupo', 'Usuário', 'Trocar Usuários de Grupo', 1),
	(13, 'admin', 'usuario', 'trocarsenhausuario', 'Usuário', 'Anterar Senha de Outros Usuários', 1),
	(14, 'admin', 'grupo', 'index', 'Grupos de Usuário', 'Visualizar Lista com Todos os Gupos de Usuário', 1),
	(15, 'admin', 'grupo', 'criar', 'Grupos de Usuário', 'Cadastrar Um Novo Grupo de Usuário', 1),
	(16, 'admin', 'grupo', 'editar', 'Grupos de Usuário', 'Alterar Informações dos Grupos de Usuário', 1),
	(17, 'admin', 'grupo', 'deletar', 'Grupos de Usuário', 'Excluir os Grupos de Usuários', 1),
	(18, 'admin', 'grupo', 'permitir', 'Grupos de Usuário', 'Liberar ou Bloquear Acessos dos Grupos de Usuários', 1),
	(19, 'admin', 'serviceauth', 'inserirUsuario', 'Usuário', 'Cadastrar Um Novo Usuário Externo', 0);
/*!40000 ALTER TABLE `usu_paginas` ENABLE KEYS */;


-- Copiando estrutura para tabela progweb.usu_permissao
CREATE TABLE IF NOT EXISTS `usu_permissao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) unsigned NOT NULL,
  `id_pagina` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usu_permissao_grupo` (`id_grupo`),
  KEY `id_permissao_pagina` (`id_pagina`),
  CONSTRAINT `id_permissao_pagina` FOREIGN KEY (`id_pagina`) REFERENCES `usu_paginas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usu_permissao_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `usu_grupo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela progweb.usu_permissao: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `usu_permissao` DISABLE KEYS */;
INSERT IGNORE INTO `usu_permissao` (`id`, `id_grupo`, `id_pagina`) VALUES
	(1, 1, 1),
	(2, 1, 6),
	(9, 1, 14),
	(10, 1, 15),
	(11, 1, 16),
	(12, 1, 17),
	(13, 1, 18),
	(17, 1, 7),
	(19, 1, 9),
	(20, 1, 10),
	(21, 1, 11),
	(23, 1, 2),
	(24, 1, 3),
	(25, 1, 4),
	(26, 1, 5),
	(28, 1, 12),
	(29, 1, 8),
	(31, 1, 13),
	(32, 2, 1),
	(35, 2, 2),
	(37, 2, 3),
	(38, 2, 4),
	(40, 2, 6),
	(41, 2, 7),
	(42, 2, 8),
	(43, 2, 9),
	(45, 2, 10),
	(46, 2, 11),
	(47, 2, 12),
	(49, 2, 14),
	(50, 2, 15),
	(51, 2, 16),
	(52, 2, 17),
	(53, 2, 18),
	(82, 2, 13),
	(86, 2, 5);
/*!40000 ALTER TABLE `usu_permissao` ENABLE KEYS */;


-- Copiando estrutura para tabela progweb.usu_usuario
CREATE TABLE IF NOT EXISTS `usu_usuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) unsigned NOT NULL,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(200) NOT NULL DEFAULT '',
  `sexo` tinyint(4) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela progweb.usu_usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usu_usuario` DISABLE KEYS */;
INSERT IGNORE INTO `usu_usuario` (`id`, `id_grupo`, `nome`, `senha`, `email`, `sexo`, `ativo`) VALUES
	(1, 1, 'Paulo Viegas', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'pauloviegas93@gmail.com', 1, 1);
/*!40000 ALTER TABLE `usu_usuario` ENABLE KEYS */;


-- Copiando estrutura para view progweb.view_grupo_pagina
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_grupo_pagina` (
	`id_grupo` INT(11) UNSIGNED NOT NULL,
	`pagina` VARCHAR(302) NOT NULL COLLATE 'utf8_general_ci',
	`alias_controller` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`alias_action` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`ativo` TINYINT(1) NULL
) ENGINE=MyISAM;


-- Copiando estrutura para view progweb.view_grupo_pagina
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_grupo_pagina`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `view_grupo_pagina` AS SELECT
   `permissao`.`id_grupo` AS `id_grupo`,concat_ws('/',`pagina`.`modulo`,
   `pagina`.`controller`,
   `pagina`.`action`) AS `pagina`,
   `pagina`.`alias_controller` AS `alias_controller`,
   `pagina`.`alias_action` AS `alias_action`,
   `pagina`.`ativo` AS `ativo`
FROM (`usu_permissao` `permissao` join `usu_paginas` `pagina` on((`permissao`.`id_pagina` = `pagina`.`id`))) ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
