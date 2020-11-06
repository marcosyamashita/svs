/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.17 : Database - svs_4198_2019
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`svs_4198_2019` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `svs_4198_2019`;

/*Table structure for table `tb_auditoria` */

DROP TABLE IF EXISTS `tb_auditoria`;

CREATE TABLE `tb_auditoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_eleitor` varchar(100) NOT NULL,
  `unidade_eleitor` varchar(200) NOT NULL,
  `nome_candidato_voto` varchar(200) NOT NULL,
  `datahora_bsb_voto` datetime NOT NULL,
  `pc_ip_voto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

/*Data for the table `tb_auditoria` */

/*Table structure for table `tb_candidatos` */

DROP TABLE IF EXISTS `tb_candidatos`;

CREATE TABLE `tb_candidatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidato_nome` varchar(400) NOT NULL,
  `candidato_descricao` varchar(420) NOT NULL DEFAULT '(sem descrição)',
  `candidato_unidade` varchar(50) NOT NULL,
  `votos_recebidos` int(11) NOT NULL DEFAULT '0',
  `ativo` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_candidatos` */

insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(1,'<B>Chapa Cooperar:</B> RAFAELA GHISI DA SILVA SALES - DELEGADO<br>RENATA KELLY COSTA SOUZA - SUPLENTE\r\n','Atuo na Secretaria da Chefia Geral, função que me permite ter contato com empregados de diversos setores da UD. Considero ter bom relacionamento interpessoal com todos os colegas, tendo facilidade p/ entender seus anseios, caso necessário, nas questões que envolvam a Cooperativa. Estou na Cooperativa desde 2010 e quero aproximar mais colegas dos benefícios que a Crediembrapa pode proporcionar aos  cooperados.\r\n','1',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(2,'<B>Sem candidatos inscritos neste Grupo Seccional:</B>','Seus dados pessoais foram validados corretamente.<br>Porém, não houve a inscrição de candidatos ao cargo de Delegado no seu grupo seccional. Desta forma, não haverá representantes em sua localidade no mandato de 01/01/2020 a 31/12/2023.<br>Agradecemos o seu interesse.','2',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(3,'<B>Chapa Trabalho e Renovação:</B> ADALBERTO AZEVEDO BARBOSA - DELEGADO<br>LEANDRO FERNANDES DAMASCENO - SUPLENTE\r\n','Me chamo Adalberto Azevedo, advogado, empregado da Embrapa Amapá a 17 anos, ex-delegado da Crediembrapa, atualmente presidente da AEE Embrapa Amapá. Utilizarei meus conhecimentos para defender os direitos dos cooperados, implementar promoções e convênios mais atrativos, tentar a redução dos juros de empréstimos e facilitar de ingresso de novos associados, para uma cooperativa mais solida.\r\n','3',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(4,'<B>Chapa Integração:</B> EVELINNE MARIA BASTOS DE ARAUJO CAVALCANTI FEITOZA - DELEGADO<br>JORDANNA MARIA BASTOS DE ARAUJO CAVALCANTI FEITOZA - SUPLENTE\r\n','Sou a candidata Evelinne Maria Bastos de Araújo Cavalcanti Feitoza, estou a 4 anos servindo voluntariamente para o crescimento da nossa cooperativa, atualmente sou delegada da cooperativa representando os colegas do CNPAT e sou membro do Conselho de Ética da CrediEmbrapa, pretendo continuar servindo aos colegas e contribuindo para o constante crescimento da nossa cooperativa.','4',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(5,'<B>Sem candidatos inscritos neste Grupo Seccional:</B>','Seus dados pessoais foram validados corretamente.<br>Porém, não houve a inscrição de candidatos ao cargo de Delegado no seu grupo seccional. Desta forma, não haverá representantes em sua localidade no mandato de 01/01/2020 a 31/12/2023.<br>Agradecemos o seu interesse.','5',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(6,'<B>Chapa Sempre Atentas:</B> ELIANE MARIA DE OLIVEIRA - DELEGADO<br>QFRANCE DE LIRA BRITO - SUPLENTE\r\n','Sou Eliane, trabalho no CTI, e também coordenadora financeira de Projeto junto a Fundação Eliseu Alves. Já sou delegada, conheço os associados e suas expectativas, e luto sempre pelos nossos direitos e deveres junto a Cooperativa. Ressalto o valor de ser cooperado, criticando construtivamente para que a Cooperativa possa atender nossos anseios, e sirva de parâmetros para nossa saúde financeira.\r\n','6',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(7,'<B>Chapa Cooper_Ação:</B> CARLOS ANTONIO DA SILVA - DELEGADO<br>EDMILSON DE MOURA DANTAS JUNIOR - SUPLENTE\r\n','Sou CARLOS ANTONIO DA SILVA, Assistente A, atuando na Embrapa Semiárido desde 1985, tenho como objetivo e a expectativas de transferir conhecimentos através treinamentos dos portfólio da cooperativa aos associados, representando seus interesses sem nenhuma discriminação sempre na forma democrática. Espero desenvolver ações esclarecimentos e auxiliando na otimização das ferramentas do Sicoob.\r\n','7',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(8,'<B>Chapa Inovar para melhorar:</B> VERA LUCIA MARIA DOS SANTOS - DELEGADO<br>ERISVALDO BISPO CARDOSO - SUPLENTE\r\n','Meu nome é Vera Lúcia Maria dos Santos e com minha experiência no cargo de delegada pretendo cada vez mais incentivar e dar apoio aos associados em suas negociações com a Cooperativa.\r\n','8',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(9,'<B>Chapa Embrapa Rondônia:</B> MARIA MARLUCIA LEMOS - DELEGADO<br>LUZIA FEITOSA DE OLIVEIRA - SUPLENTE\r\n','Maria Marlucia Lemos, Analista, admitida na Embrapa em 01/06/2010.  A Cooperativa é uma instituição  financeira muito importante e poder contar e auxiliar  os empregados, buscando atender suas necessidades e da cooperativa é uma tarefa gratificante.  Realizo junto com a atual Delegada na Unidade –RO, parceria no sentido de multiplicar os valores da cooperativa e contribui com seu crescimento.','9',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(10,'<B>Chapa O associado em primeiro lugar:</B> FRANCISCA LUCIANA DA SILVA LUCENA DOS SANTOS - DELEGADO<br>GILDA MARIA DUTRA LEITE - SUPLENTE\r\n','Ex-delegada da Crediembrapa, cargo que exerci por muitos anos, contribuindo na inclusão de um número expressivo de associados na Unidade. Considero que o Delegado deve exercer atividades que beneficiem os cooperativados e valorize a nossa Cooperativa. Estarei à disposição daqueles que necessitarem dos acessos e serviços da Cooperativa, a fim de auxiliá-los.\r\n','10',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(11,'<B>Chapa Embrapa Clima Temperado:</B> TELMO LUIZ DE ARAUJO - DELEGADO<br>JOSE LUIZ DE PAIVA SILVA - SUPLENTE\r\n','Meu nome é Telmo Luiz de Araújo assistente  A  funcionário da Embrapa a 33 anos .Estou como Delegado a mais de  dez anos, gostaria de seguir meu trabalho orientando e passando informações para nossos associados. Sempre tentando trazer novos Sócios a Cooperativa.\r\n','11',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(12,'<B>Chapa Embrapa Meio Ambiente 1:</B> ULISSES ROGERIO MENDES - DELEGADO<br>ALEXANDRE RITA DA CONCEICAO - SUPLENTE\r\n','Contratado pela Embrapa em 2011 e associado à Crediembrapa desde 2013, atuo no Setor de Logística. Graduado em Logística, sou responsável pelo controle da frota de veículos e pela gestão da qualidade do setor. A decisão por me candidatar a Delegado da Crediembrapa reflete a disposição de fazer um trabalho sério e inovador junto à cooperativa e aos associados.\r\n','12',0,1);
insert  into `tb_candidatos`(`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`) values 
(13,'VOTO NULO','VOTO NULO','0',0,1);

/*Table structure for table `tb_cod_unidade` */

DROP TABLE IF EXISTS `tb_cod_unidade`;

CREATE TABLE `tb_cod_unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_unidade` varchar(100) NOT NULL,
  `codigo_unidade` int(3) NOT NULL,
  `ativo` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_cod_unidade` */

insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(1,'AC - Embrapa Acre',1,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(2,'AM - Embrapa Amazônia Ocidental',2,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(3,'AP - Embrapa Amapá',3,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(4,'CE - Embrapa Agroindústria Tropical',4,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(5,'MG - Embrapa Milho e Sorgo',5,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(6,'PB - Embrapa Algodão',6,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(7,'PE - Embrapa Semiárido',7,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(8,'PI - Embrapa Meio-Norte',8,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(9,'RO - Embrapa Rondônia',9,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(10,'RR - Embrapa Roraima',10,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(11,'RS - Embrapa Clima Temperado',11,1);
insert  into `tb_cod_unidade`(`id`,`nome_unidade`,`codigo_unidade`,`ativo`) values 
(12,'SP - Embrapa Meio Ambiente',12,1);

/*Table structure for table `tb_login` */

DROP TABLE IF EXISTS `tb_login`;

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(18) NOT NULL,
  `valida1` varchar(100) NOT NULL,
  `valida2` varchar(100) NOT NULL,
  `valida3` varchar(100) NOT NULL,
  `unidade` varchar(30) NOT NULL,
  `ativo` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2023 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_login` */

insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1,'ABADIO HERMES VIEIRA','12942570130','23/09/1955','733172','14400','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2,'ABELARDO VAREDA GUIMARAES','07857098272','10/08/1958','75178','9202','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(3,'ABIDAIAS MARIO DE LIMA','12488377465','10/09/1998','9870299','157287','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(4,'ADAIR BARBOSA BASTOS','31817211668','26/07/1952','275905','40630','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(5,'ADALBERTO AZEVEDO BARBOSA','71451390300','06/08/1975','1505989585','10944','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(6,'ADALBERTO DOS SANTOS LIMA','29293731568','08/04/1960','267613512','25445','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(7,'ADANILO LIMA DE ABREU','30891140204','24/07/1967','821868','5479','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(8,'ADAO ALVES DE SOUZA','19076037515','20/02/1957','3831162','10570','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(9,'ADAO VIEIRA DE SA','22666621391','06/07/1964','3396806749','4952','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(10,'ADAUTO CARVALHO DA SILVA','06077161268','07/01/1954','84251','17086','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(11,'ADAUTO MAURICIO TAVARES','25448714900','22/09/1957','118048920','7820','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(12,'ADELARDO JOSE SILVA LIRA','74322745415','21/11/1971','2372','32611','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(13,'ADELINA DO SOCORRO SERRAO BELEM','25258109291','18/02/1965','551286','34894','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(14,'ADELSON BRAGA MARINHO','58086234215','20/06/1967','5516099460','145378','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(15,'ADEMILDE APARECIDA BEZERRA DAMASCENA','17648890968','14/11/1954','1394604','655','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(16,'ADEMILSON SANTANA DA ROCHA','78426634672','10/03/1971','607924835','36137','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(17,'ADEMIR APARECIDO REMAIH FILHO','21887531866','14/06/1980','298339742','701556','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(18,'ADEMIR SUCI','06967196812','14/03/1963','188220835','157600','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(19,'ADILSON DE OLIVEIRA SILVA PINHO','03410157506','23/11/1987','17960593','703192','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(20,'ADILSON LOPES DE LIMA','39678687020','04/01/1965','5030428691','28630','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(21,'ADILSON LOPES LIMA','48546615004','02/10/1966','673355','37060','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(22,'ADILSON LUIS BAMBERG','81955731004','27/11/1980','4057045264','71897','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(23,'ADINOMAR RODRIGUES NUNES','21012776204','07/06/1969','2938702922','1953','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(24,'ADJALMA DOS SANTOS SOUZA','53898095134','18/01/1972','1720486880','69230','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(25,'ADJARD LOUREIRO DIAS','22592016287','11/04/1964','10960','3859','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(26,'ADMAR BEZERRA ALVES','25878433400','04/12/1960','1972317','12467','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(27,'ADNA LUCIANNE GIRAO MODESTO','00396114342','17/05/1982','3526626662','42331','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(28,'ADRAILDE FIGUEIREDO DA SILVA COSTA','22616039249','24644','15858','','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(29,'ADRIANA BARIANI','59129913268','28/11/1976','5815541519','68560','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(30,'ADRIANA DELFINO DOS SANTOS','09143005802','12/05/1967','4118313408','46272','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(31,'ADRIANA FARAH GONZALEZ','08366842819','27/03/1963','156576107','46582','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(32,'ADRIANA MARIA DOS SANTOS','22151157857','26/03/1980','361119458','156485','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(33,'ADRIANO FORCARELLI','40608644803','13/10/1993','241575436','701777','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(34,'ADRIANO SANTOS SILVA','05595291559','03/09/1991','1531385214','702757','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(35,'ADRIANO STEPHAN NASCENTE','39414280120','12/03/1970','1817324','16900','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(36,'AFONSO CARDOSO DE ANDRADE','45035709434','15/11/1962','3988414927','6289','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(37,'AFONSO DE ASSIS CAMPELO','34121676300','06/09/1968','4838447907','17779','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(38,'AFONSO ELIAS LUCIO DE MORAES','21443980200','05/12/1962','230105461','67016','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(39,'AGNALDO NOGUEIRA RAMOS','34787909215','13/11/1970','9601449','42463','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(40,'AGRIPINO FERREIRA DO NASCIMENTO','27401537320','13/05/1942','639304','47686','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(41,'AIDANO MARTINS PIMENTEL','40770559620','26/08/1963','3209892','32492','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(42,'AIRTON FEITOSA DA SILVA','11273321200','30/08/1962','831009200','32581','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(43,'AIRTON NUNES FREIRE','49078801387','08/06/1971','1063143','7099','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(44,'ALAN RENATO DOS ANJOS OSCAR','27351772894','07/12/1978','296812080','707120','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(45,'ALAN RIBEIRO COSTA','26872992867','14/07/1979','2352810138','703249','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(46,'ALBERTO LUIS MACKE FRANCK','47530260006','27/09/1966','701858381','23140','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(47,'ALBERTO WAGNER DE MELO CARLOS','01636735789','24/07/1974','839185145','159000','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(48,'ALCEU DA SILVA JUNIOR','03119894974','14/10/1981','71378616','706523','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(49,'ALCIDES GALVAO DOS SANTOS','22569073253','18/04/1966','60276','62200','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(50,'ALCIONE GARCIA DOS SANTOS','02853869210','01/08/1991','29103681','157589','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(51,'ALDENICE NUNES DA SILVA','27109126862','29/10/1977','6096126003','701610','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(52,'ALDENIR SILVA OLIVEIRA','28658906272','20/04/1967','2849103638','18660','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(53,'ALDOIR GUILHERME LENA','20364377291','10/11/1957','236367','20583','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(54,'ALESSANDRA DE PAULA ZARDI','32244969835','11/09/1983','401338162','157082','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(55,'ALESSANDRA MONTEIRO SALVIANO','75165139468','11/02/1972','8367611','24147','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(56,'ALESSANDRA VILARDI MARTINI','25854594897','15/08/1975','24304831','46396','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(57,'ALESSANDRO DA ROCHA RODRIGUES','32227259850','29/12/1982','2582344862','705713','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(58,'ALEX JANUARIO DA SILVA','10112228410','02/06/1991','3559977','158860','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(59,'ALEX JUNIO ALVES DA SILVA','43243292816','05/07/1993','5514593228','703850','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(60,'ALEX VALDEVINO XAVIER','06858373438','28/12/1987','536513272','158356','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(61,'ALEXANDRA CRUZ SOARES ALMEIDA','27830633878','28/11/1977','259788971','704466','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(62,'ALEXANDRE BATISTA DE OLIVEIRA','21858068827','12/04/1978','1802212231','156760','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(63,'ALEXANDRE KEDLEY FREITAS ARAUJO','87780828387','12/04/1980','20079610190','149675','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(64,'ALEXANDRE LULHIER FRANCO','69146721053','12/04/1974','4007166111','9016','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(65,'ALEXANDRE MAGNO DAS CHAGAS MARINHO','14988518272','12/07/1963','52428','23450','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(66,'ALEXANDRE MAGNO DE OLIVEIRA','02693958490','24/05/1976','1907369','73741','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(67,'ALEXANDRE RITA DA CONCEICAO','00801873746','19/10/1970','87378279','23930','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(68,'ALEXSANDRO AUGUSTO DA SILVA','38876321845','20/10/1989','463852679','701092','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(69,'ALFREDO TRAJANO DE FREITAS','10942475453','26/07/1949','268974','1392','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(70,'ALINE FURTADO SIMOES BARBOSA','76989704268','18/12/1984','722469','38261','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(71,'ALINE LUDMILLA SILVA MORENO','34200449846','21/04/1985','4587582113','707880','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(72,'ALLAN DE CAPRIO RUSSO','25831154807','17/06/1978','292819596','700894','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(73,'ALLAN GONCALVES DA SILVA TEIXEIRA','39749691873','13/12/1991','485964557','158194','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(74,'ALLYSON VERAS BRITO EVANGELISTA','96226099372','06/02/1983','331369940','44148','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(75,'ALMIRO FELIX MARTINS','10061290491','27/12/1946','994001','11088','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(76,'ALOISIO ALCANTARA VILARINHO','78360773653','15/05/1967','2902952013','19119','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(77,'ALONSO ALVES FEITOSA','44588860453','03/06/1966','3086220','26220','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(78,'ALTRAN PEREIRA DE SANTANA','51037501802','25/03/1998','620588329','708259','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(79,'ALUIZIO DA ASSUNCAO LOPES','16377249268','21/07/1961','250195','38253','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(80,'ALUIZIO SOUZA DO NASCIMENTO','05840031291','15/05/1958','60911','15040','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(81,'AMADEU PEREIRA','12232529819','16/11/1971','3457934270','40932','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(82,'AMANDA LEMOS BARROS MARTINS','05737392422','31/01/1985','27812392','39802','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(83,'AMANDA ORTIZ BARROS AQUINO','00423100084','16/12/1983','2407366664','71803','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(84,'AMARILIO DE CASTRO MACIEL','23445246653','01/07/1958','756821','36706','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(85,'AMOS FELIX DO NASCIMENTO','97405442404','23/11/1976','4386679','38890','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(86,'ANA ADELAIDE JARDIM BARCELOS','27004490025','04/01/1954','2009553641','23078','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(87,'ANA ALICE BITENCOURT DA SILVA','67609953253','07/09/1979','601534','27685','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(88,'ANA BEATRIZ COSTA CID','05319431350','18/02/1991','2,00301E+12','67318','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(89,'ANA CAROLINA ALCANTARA VAGO','80516319353','31/01/1979','93002153050','49859','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(90,'ANA CAROLINA GONCALVES MARCELINO','44622257831','26/08/1997','555235130','156949','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(91,'ANA CECILIA LIMA DE BRITO','50734016387','05/04/1973','91002184579','50008','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(92,'ANA CLAUDIA CARVALHO PACHECO RIOS','33751714391','07/05/1967','721119','44270','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(93,'ANA DOROTHEA DE OLIVEIRA VALIM','11924331810','27/04/1969','3331296500','14680','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(94,'ANA ELISA ALVIM DIAS MONTAGNER','77215982068','06/01/1971','6018373925','30163','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(95,'ANA ELIZABETH MEDEIROS FERNANDES','12699888400','24/03/1955','1116722','27030','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(96,'ANA LUCIA BARROS DA COSTA','34985824372','21/02/1967','771595','3549','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(97,'ANA LUCIA CAVALCANTI DA SILVA','78878535400','26/09/1968','1442146','7374','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(98,'ANA LUCIA SILVA MARIGO','14335112823','18/05/1972','223723770','9326','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(99,'ANA LUIZA LINS E SILVA MOURA LUBAMBO DE BRITO','33843449791','02/09/1949','6306394','149993','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(100,'ANA MARIA CAMPOS DA SILVA','03270128460','01/02/1982','344171218','156450','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(101,'ANA MARIA FORNAZIN GUTZLAFF','11610842820','15/04/1963','151386055','46299','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(102,'ANA PAULA AMERICANO ALMADA','15463866880','30/10/1967','18183790','15954','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(103,'ANA PAULA DOS SANTOS SILVA','83228209415','24/10/1970','4259505200','702420','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(104,'ANA PAULA GUIMARAES SANTOS','06565639400','22/01/1987','1266865136','39535','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(105,'ANA PAULA MARIN','43763783806','27/01/1995','41304872','157520','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(106,'ANA RAQUEL DE PAULA','09697658862','11/10/1963','11998351','46124','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(107,'ANA REGINA SIQUEIRA MARTINS','11723211320','22/03/1956','92002214344','41726','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(108,'ANASTACIO DOS SANTOS','17423651249','25/12/1966','671194','19496','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(109,'ANDERSON APARECIDO VALOTA','29101580809','26/11/1979','2541812532','702552','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(110,'ANDERSON CESTARI FRANZE','11459781856','21/01/1969','176774725','703885','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(111,'ANDERSON CLAYTON DA SILVA WOFF','84229683200','28/04/1985','21139997','34266','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(112,'ANDERSON GOMES BATISTA LOPES','10575337427','02/07/1991','8213405','158895','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(113,'ANDERSON JEAN FERRAZZA GROEFF','92091156191','17/08/1982','1783414592','33561','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(114,'ANDERSON JESUS DE ARAUJO','42554368864','08/03/1993','7119588862','160938','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(115,'ANDERSON JESUS DOS ANJOS','28716150805','20/08/1980','3859662140','704954','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(116,'ANDERSON JOSE FERRARI','22432707818','18/01/1979','349760743','704857','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(117,'ANDERSON LUIS PEREIRA PORTELLA','29530535813','18/09/1980','2622749282','701017','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(118,'ANDERSON SILVA ROQUE','02755060611','20/12/1975','1660087475','149870','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(119,'ANDERSON SOARES PEREIRA','14859053893','21/09/1971','216933973','11258','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(120,'ANDERSON TEIXEIRA SILVA','52396649272','07/04/1982','203936','87556','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(121,'ANDRE ANDRES','55063560059','16/07/1966','321110904','71722','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(122,'ANDRE DE BARROS','25019730890','07/12/1966','3422174858','700762','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(123,'ANDRE DE LIMA','00723740984','20/11/1982','1917845234','702676','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(124,'ANDRE DE PAULA LEITE','32528660804','28/12/1983','434638316','704660','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(125,'ANDRE LUIS ALVARES ZAMPIERI','34168259854','16/03/1985','6203439213','700592','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(126,'ANDRE LUIS PLA SCHAUN','57214190087','30/09/1968','216311450','71749','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(127,'ANDRE LUIZ ATROCH','23344253468','28/02/1961','5932','4731','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(128,'ANDRE RODRIGUES DE MENDONCA','27861901858','06/11/1978','2643818714','704261','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(129,'ANDRE ROLIM TAVARES','31751520234','30/11/1968','8671109','11274','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(130,'ANDRE VINICIUS DE SOUZA BORGES','07764801461','28/04/1991','3374875','708712','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(131,'ANDREA ALVES DA SILVA','05433105407','09/01/1986','7031276','149721','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(132,'ANDREA BRAGA RIBEIRO VASCONCELOS','05361775460','09/03/1986','3325689829','37303','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(133,'ANDREA MITTELMANN','70728135000','20/02/1973','9048036694','71765','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(134,'ANDREIA RODRIGUES DA SILVA','19473473818','01/05/1978','2428703972','158313','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(135,'ANE LISYE FIALA GARCIA SILVESTRE','90393287904','25/10/1973','62146010','32220','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(136,'ANGELITA ADRIANA DA CRUZ BUQUINE PAULINO','16065686808','21/09/1974','252106477','159271','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(137,'ANGELO MANSUR MENDES','78161258791','06/03/1962','722487','37982','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(138,'ANGELO MARQUES LEAL','62080555391','12/07/1980','4562198','70440','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(139,'ANGLY CHAVES RIBEIRO','79206751204','05/01/1985','1561256','704393','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(140,'ANIBAL EDUARDO VIEIRA SANTOS','27456847878','20/09/1978','229001361','28894','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(141,'ANILTON NUNES DA SILVA MOTA','99711966549','17/03/1980','472514019','158925','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(142,'ANISIO FERREIRA LIMA NETO','39644073304','11/05/1970','491','41459','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(143,'ANNA LETICIA MONTENEGRO TURTELLI PIGHINELLI','21621540804','11/07/1980','271927057','72176','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(144,'ANNELYESE DE ARAUJO SCHWAMKE','86490087200','27/05/1987','6529134400','83933','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(145,'ANSELMO RICARDO DE OLIVEIRA','05687904808','10/05/1967','4200930690','62154','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(146,'ANTHONY ALISON BRASIL DE SOUZA','06001935351','26/07/1998','6757891363','706612','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(147,'ANTHONY JASSON ZUBIATE AUGUSTIN','78580048249','26/08/1983','14400157','36161','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(148,'ANTONIO ALVARO CORSETTI PURCINO','14862778615','03/09/1950','71779','37052','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(149,'ANTONIO ARGEMIRO BASTOS VARJAO','04654749268','13/06/1957','2191369','876','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(150,'ANTONIO ASSENCIO DE ARAUJO','14585120459','05/07/1955','1531275','26042','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(151,'ANTONIO AUDERLY DE OLIVEIRA','15696863353','12/06/1958','1974801','39837','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(152,'ANTONIO BARBOSA DOS ANJOS','26951401420','15/05/1962','2569531751','26565','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(153,'ANTONIO CALIXTO LIMA','36226211334','20/08/1959','3029085386','44903','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(154,'ANTONIO CARLOS CENTENO CORDEIRO','08111871287','29/06/1957','1505761867','9725','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(155,'ANTONIO CARLOS DA COSTA ARAUJO','10586865349','22/07/1958','2924799969','23841','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(156,'ANTONIO CARLOS DE OLIVEIRA','17280850634','10/08/1951','519712','47236','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(157,'ANTONIO CARLOS MORASCO','83233814887','16/04/1956','2336851574','46620','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(158,'ANTONIO CARLOS PEREIRA GOES','10819100200','28/09/1961','1441281','68284','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(159,'ANTONIO CARLOS SANTANA DE JESUS','47910453272','04/02/1975','462940','22950','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(160,'ANTONIO DE LIMA','10059873434','25/11/1947','1076667','11355','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(161,'ANTONIO DE OLIVEIRA ABREU','19938047300','10/03/1959','419036','3093','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(162,'ANTONIO DE PADUA FREITAS DE ARAUJO','36198757315','20/10/1968','949160','4804','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(163,'ANTONIO DE PAULO PEREIRA DE LACERDA','33093180368','07/12/1961','526215','5096','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(164,'ANTONIO DIONIZIO','06376458807','17/07/1965','181992450','16560','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(165,'ANTONIO DOS REIS VIEIRA DE SOUZA','26701804187','04/06/1960','596050','32514','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(166,'ANTONIO FELIPE RAMALHO','08707570406','09/08/1952','211822','95869','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(167,'ANTONIO FLAVIO DE OLIVEIRA PREZA','14173018053','21/01/1951','5011185062','21881','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(168,'ANTONIO FRANCISCO DA ROCHA SILVA','39784037300','01/05/1965','672174','3506','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(169,'ANTONIO JOAO GOMES CARDOSO','30351863400','10/02/1962','2508193628','75990','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(170,'ANTONIO JOSE DE ASSUNCAO','11211512215','29/05/1955','35643','62103','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(171,'ANTONIO JOSE DE MORAES AGUIAR','14515164368','01/02/1961','418749','4030','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(172,'ANTONIO LAURENTINO DA CUNHA','49137689487','26/04/1960','3127319','19720','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(173,'ANTONIO LIMA DO VALE','36000736304','06/01/1963','49317482','42455','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(174,'ANTONIO MACHADO GOMES','09775676304','22/10/1954','214721','11754','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(175,'ANTONIO MALAN MOREIRA DA SILVA','88220761415','02/12/1973','3384451032','75590','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(176,'ANTONIO MARCOS COELHO','21452970653','30/09/1952','427948','36641','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(177,'ANTONIO PAULINO DOS SANTOS','70898073472','08/06/1960','1342206339','23523','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(178,'ANTONIO PEREIRA DA SILVA','20181787253','17/07/1963','6370136','3174','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(179,'ANTONIO SALOMAO DA CRUZ','07842074291','20/02/1952','3249417','3085','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(180,'ANTONIO SERGIO DE QUEIROZ MOURA','21517240263','08/05/1964','476749927','29823','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(181,'ANTONIO SOARES DE OLIVEIRA FILHO','20089315871','21/06/1971','299071303','706353','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(182,'ANTONIO TEIXEIRA CAVALCANTI JUNIOR','04507622387','02/04/1949','343718','43931','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(183,'ANTONIO TERTO CATARINO','28576608391','06/08/1953','9590137','11690','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(184,'ANTONIO XAVIER DO NASCIMENTO','05174244287','17/08/1952','24811','14427','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(185,'ANYELLE FERNANDA MONTEIRO','41912571889','18/09/1994','5926385042','706280','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(186,'APES ROBERTO FALCAO PERERA','30166748072','31/05/1960','1322865015','18503','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(187,'ARAMIS PEREIRA ALVES','55428274620','24/11/1968','2151393261','703087','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(188,'ARGEMIRO SOARES MOTA','04677048215','10/07/1955','2703165','16250','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(189,'ARIANE CRISTINA DO NASCIMENTO','37707432886','20/05/1987','414506558','149624','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(190,'ARILO NOBRE DE OLIVEIRA','01009818368','18/02/1949','2E+12','60917','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(191,'ARILSON SILVA DE OLIVEIRA','21672067200','18/03/1969','155910','72486','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(192,'ARISTOTELES LACERDA DA NOBREGA','02301961443','20/02/1978','1995518','160571','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(193,'ARLINDO FERREIRA DOS SANTOS','22657100406','18/10/1952','1533064','9687','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(194,'ARNO ALBERTO NEUMANN','38606216020','23/07/1961','9025275547','4456','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(195,'AROLDO MESSIAS DE SOUSA CRUZ','31107988837','14/11/1980','5367282038','703656','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(196,'ARTELMA MACUXI DE OLIVEIRA','07064764253','07/09/1958','36737','1503','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(197,'ARTEMISA KAROLAYNE RODRIGUES SILVA','11628086408','24/04/1999','10322309','156469','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(198,'ARY REIS XIMENDES','35951184053','10/07/1964','5505509','81400','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(199,'ASSIS RODRIGUES DA SILVA','89277414472','13/07/1974','4627856','702730','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(200,'AUGUSTO CESAR MARQUES DIAS','43568125811','03/08/1991','481149351','155241','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(201,'BEATRIZ APARECIDA DE SOUZA MELO','11563829479','12/10/1997','9409982','708720','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(202,'BELMIRO JOSE MONROE','04394097304','27/11/1954','1,35313E+11','4880','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(203,'BENEDITO PONTES SILVA','03738230297','12/11/1954','1240563689','949','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(204,'BERNARDO ALVES DA SILVA','18345140378','05/08/1951','360365','22276','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(205,'BERNARDO MENDES BARBOSA','19943105372','26/09/1953','962765','13021','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(206,'BIANCA FRANCA VASCONCELLOS','09613051694','29/05/1989','15979385','44318','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(207,'BIANCA SALIM DA SILVA','62413562249','05/11/1977','178766702','159026','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(208,'BIANOR JUNIOR ALVES MACHADO','21659966272','25/05/1969','3921287840','27758','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(209,'BIBIANA TEIXEIRA DE ALMEIDA','28557288867','12/07/1980','29632815','46060','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(210,'BOANERGES JOSINERY ALVES GOMES','10381813487','21/03/1954','1219111','13471','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(211,'BRUNA FERNANDA MONTEIRO DE LIMA','40252934806','16/03/1993','490130689','149314','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(212,'BRUNA JAQUELINE TRINDADE BRAILA','43509930886','25/04/1994','403556843','149519','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(213,'BRUNO CARNEIRO DA CUNHA','98429167234','18/09/1988','6143961734','95672','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(214,'BRUNO CESAR ALVES MARCELINO','39395355832','07/07/1992','487503892','700606','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(215,'BRUNO COELHO SOARES','02632895405','27/07/1979','2232362','34576','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(216,'BRUNO MORAES RAMOS DA SILVA','31059253844','06/10/1984','3095952047','705225','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(217,'BRUNO RENAN DE LIMA BELO','11964701465','11/09/1996','8829858','707627','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(218,'CAIO DA SILVA RAVAL','44172584810','26/09/1994','433902875','160474','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(219,'CAIO VINICIUS RAYA','72138998134','20/11/1982','1762608111','37400','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(220,'CARCIANO CESAR DE ARAUJO REGO','70132453304','13/05/1975','94025016995','44776','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(221,'CARLA MOREIRA DE FARIA','41379756634','17/06/1961','2115081','43800','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(222,'CARLIANA ROCHA COSTA','03277893367','29/01/1989','633831736','158178','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(223,'CARLOS ALBERTO BELO BARRETO','12325856291','16/11/1962','49910','7781','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(224,'CARLOS ALBERTO MONTE VERDE PINHEIRO','10618945253','02/02/1960','209821','6815','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(225,'CARLOS ALBERTO MORAES','01694022234','08/05/1951','8119','23175','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(226,'CARLOS ALBERTO SANTOS SOUZA','31541603885','28/06/1981','3404976109','708593','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(227,'CARLOS ANTONIO DA SILVA','43470939420','14/11/1965','2942792','11720','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(228,'CARLOS ANTONIO DE OLIVEIRA','33827052653','04/05/1962','758835','47732','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(229,'CARLOS AUGUSTO DOS SANTOS PEREIRA','43593447835','12/11/1994','6619441067','156396','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(230,'CARLOS BENJAMIM PAZZIANOTTO','86575325815','31/03/1957','95887763','39454','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(231,'CARLOS CESAR RONQUIM','14550856858','22/01/1968','17390200','26212','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(232,'CARLOS DA SILVA PEREIRA','13009710291','20/12/1959','5490766','3255','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(233,'CARLOS EDUARDO DA SILVA MORAES','69003173087','10/08/1974','7052402927','41360','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(234,'CARLOS EDUARDO MESQUITA MAGALHAES','87248026387','18/05/1981','2572550945','23728','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(235,'CARLOS EDUARDO MULLER','30878190856','25/11/1982','2134591224','704423','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(236,'CARLOS HENRIQUE DE OLIVEIRA CAVALCANTE','02493671309','18/09/1984','2210542','30295','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(237,'CARLOS JUAREZ SANT ANA JUNIOR','01945159154','02/06/1986','1434176','37672','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(238,'CARLOS JUAREZ SANTANA','22029290106','10/08/1959','1334','37109','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(239,'CARLOS MARIO HERNANDES DE SOUZA','48530026004','29/02/1964','2096238713','37044','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(240,'CARLOS MELO SILVA','07785978816','19/02/1967','200084148','704555','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(241,'CARLOS WAGNER CASTELAR PINHEIRO MAIA','37074580325','24/10/1970','92013011105','39632','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(242,'CARMEN SILVIA PEREIRA BRAZOLIN','56105045620','30/03/1962','141050603','46051','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(243,'CAROLINA MARIA ZOLA','36953397802','17/07/1987','4476495311','97489','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(244,'CAROLINA SANTANA MATIOLLI','36923381800','03/12/1988','4440174956','95885','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(245,'CAROLINE HAUSCHILD','01367083079','06/01/1988','8100420754','708844','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(246,'CATIA FERNANDA NOGUEIRA KELLERMANN','69065659072','20/01/1970','390238090','71927','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(247,'CELIA REGINA GOMES SILVA','10676155200','21/09/1958','53819','9369','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(248,'CELSO ANTONIO NARDI','09393528004','09/04/1949','4019276908','22780','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(249,'CELSO DA LUZ DIAS','38380862015','07/12/1964','3451685803','30465','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(250,'CELSO EDUARDO NOGUEIRA GREGATTI','32054921882','26/11/1983','402207270','157562','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(251,'CELSO GONCALVES LOURENCO','26055066653','25/02/1957','2077257','32425','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(252,'CELSO HENRIQUE SILVA CELSO','02620916402','16/11/1978','280198164','700460','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(253,'CELSO MACEDO DA FONSECA','67618260710','04/05/1955','16526','31518','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(254,'CELSO RICARDO BASTOS GONCALVES','57842485291','21/09/1975','433918','19135','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(255,'CESAR DOS SANTOS','53744900525','30/09/1970','105464304','38199','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(256,'CESAR ROBERTO SILVA DE ROSSO','34201050025','23/05/1961','1014285249','38628','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(257,'CIBELE DINIZ LIMA','05810688667','09/12/1983','2268969804','45110','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(258,'CICERO BARBOSA FILHO','26948389449','16/12/1961','2175839','11363','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(259,'CICERO BEZERRA DA SILVA','28550501549','12/07/1955','4121085','21083','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(260,'CICERO RAMAO DOS SANTOS','66255856100','02/03/1976','388571561','707058','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(261,'CICERO RIBEIRO DOS SANTOS','44613733472','31/03/1966','3410543526','106119','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(262,'CIDNEY DE SOUZA BARBOSA','57287864215','21/05/1976','11471336','49492','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(263,'CILENE ALVES SOARES','35931338810','12/12/1985','588146353','704792','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(264,'CINDI CRISTINA FERREIRA DE CAMARGO','15501524830','28/08/1978','254183876','26778','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(265,'CLARA MEWS GUERRA PIMENTEL','12548908666','25/02/2006','19677090','131865','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(266,'CLAUDECI FERNANDES DA TRINDADE','38851741204','27/10/1970','61034','18805','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(267,'CLAUDEMIR APARECIDO DONETTI','29483811856','22/08/1980','321271142','29475','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(268,'CLAUDENIR FONSECA','02248261829','07/01/1964','127841842','40266','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(269,'CLAUDIA OLIVEIRA PINTO','04883731669','25/05/1981','11267360','80993','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(270,'CLAUDIO DIOMAR NOLASCO DA LUZ','20438753020','05/11/1957','1012379226','15890','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(271,'CLAUDIO JOSE GOMES','51366819691','02/01/1964','2763316330','43842','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(272,'CLAUDIO ROBERTO DE SA','12493179838','13/10/1970','1816760690','45217','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(273,'CLAUDIO ROGERIO BEZERRA TORRES','35827033120','05/07/1967','4168099729','101842','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(274,'CLAUDIO ROLDAO','03628251818','10/05/1962','20757916','47392','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(275,'CLAUDIO RUAS SCHIMULFENING','38569477015','07/09/1965','1025792274','13951','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(276,'CLAUDIOMAR BARBOSA DO AMARAL','30199077053','18/08/1960','1602700114','5355','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(277,'CLAUDIR CARNOSKI','45691223291','12/04/1972','412464','38822','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(278,'CLEBER ODILON SILVEIRA DUTRA','30138841004','21/12/1961','1012194757','8087','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(279,'CLEBER ROBERTO MIRANDA MATOSO','12575085802','22/07/1973','214221957','701840','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(280,'CLEBERSON DE FREITAS FERNANDES','45627142391','12/02/1974','90003047020','33243','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(281,'CLEIDE MARIA LEMOS DO RIO','25068725404','29/04/1958','680298','4561','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(282,'CLEONICE AMORIM DOS SANTOS','30925323845','06/11/1976','1132583641','708313','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(283,'CLEY DONIZETI MARTINS NUNES','21905797168','02/09/1959','221569658','72460','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(284,'CLODEILDES LIMA NUNES','08885010300','24/10/1960','68563','15679','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(285,'CLOVES SANTIAGO DA SILVA','21615241272','17/11/1963','93968','22349','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(908,'','','','','','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(909,'COSMO CAVALCANTE DE MELO','02175460215','17/08/1951','31915','8516','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(910,'COSMO RIBEIRO LACERDA','38391910334','15/09/1961','15880280','12742','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(911,'CREUZA XAVIER NASCIMENTO PIRES','44279930791','23/03/1958','35564012','46400','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(912,'CRISPIM BISPO SOARES','24153273287','22/01/1962','77361','2569','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(913,'CRISTIAN DEIVI FEIJO ROLDAN','74034758015','24/08/1977','1062638539','42145','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(914,'CRISTIANE DE BRITO SOUSA','30609224387','22/07/1969','805213','7862','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(915,'CRISTIANE DE FARIAS BETEMPS DA SILVA','57229139015','21/09/1969','8015934683','26395','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(916,'CRISTIANE PEREIRA DOS SANTOS','29484645879','27/11/1980','344995240','149420','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(917,'CRISTINA TIEMI SHOYAMA','10203995899','23/07/1970','191120790','40355','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(918,'DAISE PASCOA MARTIM DE MORAES','16848090883','09/04/1974','256503680','44792','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(919,'DALFRAN GONCALVES VALE','14634325420','17/07/1956','1938545171','14303','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(920,'DAMIAO CLEITON DE OLIVEIRA','39213579349','16/11/1967','9602407204','11924','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(921,'DANIEL AUGUSTO SCHURT','00696577933','14/01/1981','3533967','35696','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(922,'DANIEL BRAATZ','03374407943','22/03/1980','534832805','703109','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(923,'DANIEL FAVARO TOVANI','33349344895','24/04/1992','5056427816','707651','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(924,'DANIEL GOMES DE FARIAS','04399427213','10/12/2000','191745','62138','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(925,'DANIEL LOPES DE LIMA','37593234134','17/12/1965','2402580','8672','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(926,'DANIEL MENDES PINTO','70371393191','21/10/1979','2749082','67172','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(927,'DANIEL MONTAGNER','75731584087','24/02/1975','5052699708','38180','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(928,'DANIELA DE LUCENA MONTEIRO','08471645432','02/10/1988','3125913','39713','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(929,'DANIELA FERREIRA GUSMAO','45710953253','02/01/1973','490550','23256','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(930,'DANIELA LOSCHTSCHAGINA GONZAGA','32924892880','29/07/1984','436893228','68578','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(931,'DANIELE VIEIRA SILVA','10410947792','12/04/1984','131636946','156345','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(932,'DANILO FARIA DUTRA','40409863858','14/04/1988','337359969','706159','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(933,'DANILO SANTOS DE SOUZA','37742275864','25/01/1989','215641','701505','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(934,'DANTE AUGUSTO ASSIS RIBEIRO DE FREITAS','32020986833','09/03/1984','42145118','706973','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(935,'DARCY BITENCOURT','01088882072','18/05/1937','7005562728','16020','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(936,'DAVI DE OLIVEIRA CUSTODIO','17391003875','08/06/1972','18074181','46078','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(937,'DAVI JOSE SILVA','43499678691','18/03/1960','1174887152','102180','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(938,'DAVID DE SOUZA COSTA','40471535591','07/11/1966','3268428209','62782','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(939,'DAVILA FERNANDES MENDES','72803169304','22/10/1975','1397924144','37737','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(940,'DAYSE MARY DE LUCENA MONTEIRO','13915363472','28/06/1957','336264','39705','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(941,'DECIO HUGO DE LIMA','71043275410','13/03/1985','3599010','700223','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(942,'DECIO JOSE DETERS','22555560220','20/12/1965','69936','5509','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(943,'DEISE ROCHA MARTINS DOS SANTOS OLIVEIRA','44074751372','07/04/1973','394686457','46434','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(944,'DELSO SANTANA NOBRE','06741428291','14/03/1957','14610','5347','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(945,'DENIS CESAR CARARO','00348071957','08/12/1974','83450070','38474','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(946,'DENIS TOCHIO MATSUOKA','34916488822','03/11/1987','417993031','700142','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(947,'DENISE PASTORI CORRADO','28921910840','06/12/1978','1011966522','702986','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(948,'DENIVAL PAZ DA CRUZ','23908769434','04/01/1958','1754811','36412','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(949,'DEREK BONINI TONUCCI','43583889819','11/11/1992','5625026828','708852','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(950,'DERICK DA SILVA DE OLIVEIRA','37845957828','07/06/1990','326824509','700231','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(951,'DEVANIR SCHIAVON','51339382920','15/09/1963','3667540','24279','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(952,'DIANA SIGNOR DEON','80583474268','07/05/1985','564199722','73091','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(953,'DIEGO AUGUSTO SANTOS DE AGUIAR','53006577272','24/08/1987','3739500683','160202','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(954,'DIEGO LEAL SOUZA','34457365882','13/05/1987','6656684851','158097','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(955,'DIEGO PAIVA MAGALHAES HARTEN DE MOURA','11828105430','11/05/1999','9590927','706663','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(956,'DIEGO RAFAEL DA SILVA FREITAS','35621876881','26/04/1986','3870571002','705535','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(957,'DIEGO VEIGA GENNARI','37185801877','25/03/1989','4325239592','703265','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(958,'DINIZ DA CONCEICAO ALVES','40322300487','12/03/1964','2822298','11444','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(959,'DIONARDO RIBEIRO DOS SANTOS','03111508102','05/04/1991','2814297','159336','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(960,'DJAIR DOS REIS MORAES FIGUEIREDO','02469462886','10/07/1958','8803629','46450','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(961,'DOMINGOS SAVIO GOMES DA SILVA','06079997215','06/07/1956','90494','14567','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(962,'DORANILMO ALVES DOS SANTOS','11996951220','26/06/1961','499599','9539','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(963,'DORIAN DE SOUZA LEITE','41795652268','20/03/1969','4667771420','82090','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(964,'DORILA SILVA DE OLIVEIRA MOTA GONZAGA','05213363253','28/01/1958','3160469861','47406','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(965,'DOUGLAS ALVES VIEIRA','08500834609','06/01/1989','527507301','40819','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(966,'DULCINEA CONCEICAO DE SOUZA','07982399215','21/02/1958','40513','1783','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(967,'DULCIVANIA GOMES DE FREITAS','82645469434','06/03/1971','1494211','24627','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(968,'EDER CANDIDO EDUARDO','31460248880','06/04/1983','1817280600','161853','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(969,'EDGAR DA CRUZ PEREIRA','10581260325','28/09/1957','1211619670','15148','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(970,'EDILALDO SANTANA NUNES','06741592253','08/03/1955','44251','3379','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(971,'EDILSON BEVILAGUA','37391666300','18/01/1969','1018662','8346','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(972,'EDILSON LUIZ SOARES DA SILVA','84413581415','10/02/1972','4172991','38989','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(973,'EDILSON SOUSA DA SILVA','55128416704','18/02/1959','1113679','4839','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(974,'EDIMAR SANTOS','00050200690','01/07/1975','2407220050','702455','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(975,'EDIMILSON BARROS DOS SANTOS','22643230353','05/09/1960','2102249274','4120','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(976,'EDIS DE JESUS SILVA','05036466527','24/06/1989','605522686','708488','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(977,'EDIVALDO FERREIRA RAMOS','83938982187','20/04/1977','3528455','36870','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(978,'EDIVAN GOMES CUSTODIO','06618844495','06/06/1984','4795422985','704040','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(979,'EDIVAN NEVES DOS REIS','14406349200','24/08/1963','3075528455','20567','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(980,'EDJANY DEBORA PEREIRA DA SILVA','24155349272','16/09/1972','104631','1929','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(981,'EDLUZ GABRIEL DA COSTA NEVES DE LIMA','01395024243','10/02/1991','25956957','103640','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(982,'EDMAR NUNES DE SOUSA','47115700478','10/01/1967','3139060','26409','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(983,'EDMAR RODRIGUES MACHADO','18261868320','25/12/1969','2154836','40444','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(984,'EDMILSON DE MOURA DANTAS JUNIOR','04589000440','20/05/1983','4042936131','44717','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(985,'EDNA CALIARI BONI','68828551020','30/07/1972','2051362891','29254','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(986,'EDNA JACINTO VIEIRA','31291973893','26/01/1949','195633519','703702','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(987,'EDSON ALVES BASTOS','42915759391','03/05/1968','668248','41483','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(988,'EDSON LUIZ BATISTA','23798408220','30/04/1964','1006279080','22586','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(989,'EDSON PAIVA AFONSO','13027654268','22/11/1960','4892631','101230','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(990,'EDSON ROBERTO LEITE','09990478848','02/07/1962','11893997','39136','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(991,'EDUARDO APARECIDO CURSI','21687322805','26/10/1981','5083415331','706027','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(992,'EDUARDO ARTHUR DE CASTRO PINHO','30824133234','30/10/1968','143382','19526','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(993,'EDUARDO FERRARI DA SILVA','40952381869','29/11/1991','4869802403','703893','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(994,'EDUARDO SANTOS GALAS','33898057100','30/11/1964','3452289000','34045','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(995,'EDVALDO ALBERTO PIRES FERREIRA','04501844809','08/05/1963','149408432','32212','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(996,'EDVALDO FERREIRA DA SILVA','24821250659','24/07/1958','1081789','36650','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(997,'EDVALDO GOMES PEDREIRA','19887736368','02/12/1960','423839','3590','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(998,'EDVAN ALVES CHAGAS','57678413220','23/11/1977','444839','28517','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(999,'EDY SOUSA DE BRITO','56506155434','06/02/1968','601846','44733','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1000,'EGIDIO DA SILVA RAMALHO NETO','00584313306','25/11/1985','3968734546','61760','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1001,'ELADIO GOMES DE CARVALHO','07891938253','01/04/1951','34442','21245','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1002,'ELAINA CRISTINE MELO LIMA DE ARAUJO','73396702204','28/02/1983','389709','23655','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1003,'ELAINE OLIVEIRA DE SANTANA','27018763894','22/01/1978','256264806','42307','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1004,'ELDER MANOEL DE MOURA ROCHA','24723401415','10/04/1960','1693259','12378','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1005,'ELEN DIANA DE AGUIAR','40771149859','27/03/1992','6124330201','708046','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1006,'ELENICIO GOMES COELHO','49138979420','20/11/1965','2983182','25976','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1007,'ELENILDES MARIA MIRANDA FERREIRA','36198846334','17/07/1969','1026008','48453','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1008,'ELIANA SOUSA XIMENDES','35944870087','30/09/1961','2,00701E+12','42994','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1009,'ELIANE DO NASCIMENTO CUNHA FARIAS','86321005215','29/05/1986','4746142','38202','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1010,'ELIANE MARIA DE OLIVEIRA','12803871491','26/10/1958','617337638','1147','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1011,'ELIAS MELO DE MIRANDA','13865854249','19/01/1963','119894','6157','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1012,'ELIAS RODRIGUES DA SILVA','23036923268','03/05/1962','427107606','75957','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1013,'ELICENIA ALENCAR DOS SANTOS CARDOSO','01951046412','27175','2222793250','','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1014,'ELIEL DE VASCONCELOS BORGES','06433199488','18/03/1988','4061667194','137707','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1015,'ELIENAI SOARES DA SILVA','08810335457','15/01/1989','3586984','704911','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1016,'ELIETE CORREA BAIA','16374266234','27/07/1962','209226','7447','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1017,'ELIEZIO PEREIRA DE SOUZA','27394794334','27/12/1966','97002434540','22977','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1018,'ELIONOR ALVES DE SOUZA','16141091253','22/02/1960','621205','10189','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1019,'ELISA KOHLER OSMARI','99655667049','25/09/1981','3075042907','62421','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1020,'ELISABETE DA SILVA RAMOS','41532309287','08/11/1963','220071','4570','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1021,'ELISANGELA LOPES MENEZES','42254140272','17/10/1973','4478159141','66800','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1022,'ELIZABETH PAIVA DE LIMA','43500030297','27/06/1971','2510210461','33308','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1023,'ELIZEU ALVES DE LIMA','05863660244','14/06/1953','66165','22420','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1024,'ELSON ALVES DA SILVA','02590891253','30/11/1954','47750','12777','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1025,'ELTON HOLANDA LEITE','08586806455','05/07/1985','545566794','704830','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1026,'ELTON TEIXEIRA DOS SANTOS','24295434000','24/08/1957','3003705666','13943','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1027,'EMANUEL SANTINO DO NASCIMENTO NETO','47723106220','23/02/1979','179102256','705144','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1028,'EMANUEL SULPINO MOREIRA COLACO','02997210437','16/09/1980','435418739','62731','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1029,'EMANUELLA CORREA DE BRITO LIRA','05450507402','15/09/1983','2927692','27812','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1030,'EMERSON AMERICO DE SOUZA','25015899807','27/11/1974','3175441071','159760','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1031,'EMERSON JOSE LOURENCO','12346596892','11/06/1969','22296014','9067','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1032,'EMERSON REIS LEAL','06748200539','09/06/1993','598651172','706965','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1033,'EMMANUELLE SAMPAIO ROCHA','78228760310','25/04/1979','285390829','49506','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1034,'ENEAS FONSECA JUNIOR','61301850225','17/06/1976','12578061','48283','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1035,'ENEDIR LOPES FRANCA OLIVEIRA','50105817600','16/10/1963','2994622','40061','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1036,'ENEIDA GIANE INACIO','95263462620','23/03/1973','7536430','47619','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1037,'ENOQUE DA SILVA LIMA','22626964204','08/06/1966','1501703385','13110','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1038,'ERICA DE OLIVEIRA SILVA','25607614832','01/09/1975','265192614','707929','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1039,'ERICO LUIZ BARBOSA DIAS','83251650300','01/05/1981','4564338281','701262','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1040,'ERISVALDO BISPO CARDOSO','22628924315','29/09/1962','501585','5550','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1041,'ERISVAN BARBOSA LIMA','43982450578','21/02/1968','1179651220','162663','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1042,'ERLAN ALENCAR DE MACEDO','03807997318','19/01/1989','6752047319','704890','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1043,'ERLANDIO SANTOS DE RESENDE','42051223300','06/07/1967','1142805912','42064','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1044,'ERNANI FELIX FERREIRA DE ALMEIDA','18046819204','20/11/1962','268037477','16845','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1045,'ERNESTO ENNS PENNER','94295778087','07/03/1977','2062683822','65277','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1046,'ESPEDITO PAULO DOS SANTOS','22059997453','25/10/1960','2933495117','22101','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1047,'ESTEVAO OLIVEIRA DOS SANTOS','09975012272','22/11/1957','3893405','26808','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1048,'EUNICE MACIEL DA CRUZ','42484561415','29/07/1960','602140','1236','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1049,'EUSTAQUIO FRANCISCO  SOUZA DE OLIVEIRA','45688150610','03/08/1963','2420598','32506','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1050,'EVA MARIA DE CARVALHO','02490580302','','','','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1051,'EVANDRO ALVES GONCALVES','08722526471','23/02/1989','4294626967','703630','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1052,'EVANDRO CHARTUNI MANTOVANI','18115888672','28/06/1951','1720270','19291','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1053,'EVELINNE MARIA BASTOS DE ARAUJO CAVALCANTI FEITOZA','00357560396','16/10/1985','99002040548','39969','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1054,'EVERTON DIEL SOUZA','32199546004','30/04/1960','3010022675','28118','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1055,'EZEQUIENE MAXIMO MOREIRA','01459946197','01/11/1987','4550919227','136107','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1056,'FABIANA CORREA','24908040818','24/08/1975','276617976','149730','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1057,'FABIANA REZENDE DA SILVA','36254728800','03/02/1987','4271784877','701670','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1058,'FABIANO LOPES SOLARI','75537508087','21/03/1977','4062642981','30929','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1059,'FABIANO MARCAL ESTANISLAU','04803636923','02/08/1982','3688933519','45918','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1060,'FABIO DONIZETTI RIBEIRO','22607589835','15/11/1982','3136089003','156957','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1061,'FABIO GOMES DE SOUZA','01515779602','29/12/1985','3748386311','75655','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1062,'FABIO KNOPLOCH','28818764802','15/08/1979','2173150338','707236','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1063,'FABIO MARCOLINO SANTOS','01606250760','21/08/1973','218349250','25380','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1064,'FABIO OTONI DO AMARAL JUNIOR','36611908811','25/11/1988','4101183348','159093','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1065,'FABIO SIAN MARTINS','12458782809','19/02/1968','175872764','38172','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1066,'FABRICIO DA SILVA PEREIRA','92448763291','15/09/1993','5457942206','62480','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1067,'FABRICIO FERRARI MESQUITA AMORIM','22120026882','31/10/1980','1236128190','707350','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1068,'FATIMA MARIA DE MARCHI','23428341015','15/12/1960','7014824747','47023','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1069,'FELIPE DE  SOUSA RAMALHO','06426528480','23/03/1986','3063465','31658','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1070,'FELIPE DE MORAIS FERNANDES','37840808808','14/02/1991','5,00156E+13','706434','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1071,'FELIPE DE OLIVEIRA MATEUS','21767157215','12/10/1966','3855036680','22330','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1072,'FELIPE GALDINO MACHADO','02470564484','17/09/1978','185','32328','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1073,'FELIPE MANDAJI DA SILVA','45602651861','28/10/1996','502754916','160164','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1074,'FELIPE PEREIRA DE LIMA','55972080206','06/11/1955','49389','38300','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1075,'FELIPE PROCOPIO SALES','09439678640','16/10/1996','383872534','702447','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1076,'FELISBINO BAPTISTA CALLEGARI','33016305887','04/02/1941','92991051','700410','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1077,'FERNANDA CRISTINA VIEIRA','38445499866','26/02/1989','377002240','96954','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1078,'FERNANDA REGIA DE LIMA LOPES','84302828315','11/11/1979','2,00601E+12','60909','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1079,'FERNANDA STRINGASSI DE OLIVEIRA','22319117873','07/03/1982','1447764406','62936','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1080,'FERNANDO ANTONIO DE PADUA PAIM','36180793620','08/05/1961','1851194393','46140','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1081,'FERNANDO DE MATTOS','36611229833','02/08/1989','4200304117','157368','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1082,'FERNANDO HENRIQUE MONTEIRO DA SILVA','42581602880','23/09/1993','6978040957','149900','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1083,'FERNANDO MARTINS DOS SANTOS','62570663360','23/10/1986','421928797','704709','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1084,'FERNANDO RODRIGUES DE SOUSA FILHO','22063638870','05/09/1980','329152531','705055','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1085,'FERNANDO RODRIGUES DE SOUZA','62889257215','03/01/1979','747290663','29491','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1086,'FERNANDO SINIMBU AGUIAR','07926235334','06/08/1957','205764','9091','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1087,'FERNANDO WAGNER MALAVAZI','04182097904','17/11/1982','2200785929','35246','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1088,'FILIPE OLIVEIRA LIMA','03177061017','09/06/2003','3100324429','30430','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1089,'FIRMINO JOSE DO NASCIMENTO FILHO','82685983872','14/12/1951','600724997','20630','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1090,'FLAVIA MICHELLE FARIAS NEVES','05383271465','10/10/1983','7204543','160075','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1091,'FLAVIO APARECIDO SILVA PINTO','06886679619','05/10/1984','14742494','705438','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1092,'FLAVIO JOSE DE SOUZA','66894069972','17/09/1968','4413740000','16217','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1093,'FLAVIO LUIZ COELHO DA SILVA','45737630072','11/08/1966','1035506268','14281','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1094,'FLAVIO NETO OLIVEIRA','29179933831','11/04/1982','4879899760','706051','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1095,'FLAVIO SCAPOLAN','16512788818','24/10/1977','277583639','31461','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1096,'FLAVIO TAKESHI KOBAYASHI','05355771840','26/01/1969','2675931623','158429','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1097,'FRANCILDO FERREIRA FERNANDES','21975396200','06/08/1966','251338','20575','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1098,'FRANCIMAR ROBERTO DA SILVA','02933129663','26/07/1976','544697759','101478','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1099,'FRANCISCA DAS CHAGAS DA SILVA CRUZ','36198510344','19/05/1967','1000816','5673','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1100,'FRANCISCA LUCIANA DA SILVA LUCENA DOS SANTOS','18287182204','30/06/1964','54661','2763','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1101,'FRANCISCA TANIA DA SILVA MENEZES','71723820210','28/08/1983','2067761915','35130','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1102,'FRANCISCA TATIANE ALVES DOS SANTOS','60524993386','20/03/1994','20074718279','149926','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1103,'FRANCISCO ALEXANDRE DANTAS','70898081491','18/06/1969','3806352','21857','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1104,'FRANCISCO ALOISIO CAVALCANTE','04862791387','29/09/1949','95006029813','26662','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1105,'FRANCISCO ALVARO VIANA FELISBERTO','43387594291','08/10/1972','216827','44784','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1106,'FRANCISCO ALVES DA SILVA','58388362372','23/06/1974','1893798172','17728','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1107,'FRANCISCO ASSIS DE AZEVEDO','18083684287','05/07/1955','63521','18570','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1108,'FRANCISCO CHAGAS NETO','16371895249','04/01/1963','2909503628','2070','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1109,'FRANCISCO COSTA DE AQUINO','43470440468','25/02/1965','3530496003','18970','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1110,'FRANCISCO DA SILVA LIMA','14286912272','16/01/1955','576075','8621','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1111,'FRANCISCO DAS CHAGAS DE ABREU SANTOS','25172581200','04/12/1966','2204772','7587','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1112,'FRANCISCO DAS CHAGAS GARCIA','51476452415','03/03/1967','1158177','21555','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1113,'FRANCISCO DAS CHAGAS LEONIDAS','13253069400','17/12/1952','8029893149','1449','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1114,'FRANCISCO DAS CHAGAS MACHADO','26651637304','22/05/1966','696390','14222','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1115,'FRANCISCO DE ASSIS ALVES','28687922434','07/03/1960','2356569','10260','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1116,'FRANCISCO DE ASSIS CARVALHO','13142372334','08/05/1955','155762','3107','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1117,'FRANCISCO DE ASSIS CORREA SILVA','33889767168','17/09/1965','3749844401','39403','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1118,'FRANCISCO DE ASSIS DA SILVA LIMA','42053285320','07/06/1969','1242396303','3662','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1119,'FRANCISCO DE ASSIS GARCIA PARKER','30146933087','09/08/1960','2013120064','12513','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1120,'FRANCISCO DE ASSIS MARINHO','07225733320','16/01/1956','1603381047','16837','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1121,'FRANCISCO DE ASSIS NUNES SANTANA','15260208404','04/10/1957','1977496822','19151','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1122,'FRANCISCO DE BRITO MELO','09692550397','24/10/1956','194807','44571','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1123,'FRANCISCO DE SALES','77977459868','06/11/1955','8168587','14044','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1124,'FRANCISCO DE SOUZA MORAES','19735901234','12/12/1964','133256','35572','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1125,'FRANCISCO DE SOUZA RIBEIRO','44113449805','22/07/1997','443100019','86738','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1126,'FRANCISCO DO ROSARIO PEREIRA','31002862272','28/12/1942','286995','5169','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1127,'FRANCISCO DUARTE DE LIMA','03912602433','03/10/1977','5160858803','37346','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1128,'FRANCISCO EDINALDO DA SILVA','68936460382','13/12/1974','3796668064','159379','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1129,'FRANCISCO EVANDIR BEZERRA','24621714368','28/08/1964','3067742300','42730','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1130,'FRANCISCO FELISMINO DE AZEVEDO','19619715268','04/07/1964','03376983401','44466','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1131,'FRANCISCO FELIX ALVES FILHO','82493669568','05/06/1980','','705926','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1132,'FRANCISCO FELIX BARAO','18879268287','26/09/1964','142164','45187','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1133,'FRANCISCO FERNANDO OLIVEIRA CIRINO','24550566353','22/10/1965','7323','8923','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1134,'FRANCISCO GOMES FARIAS FILHO','23932627253','24/01/1966','598012','18678','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1135,'FRANCISCO ISMAEL DOS SANTOS SILVA','60596964307','17/03/1998','6844611120','156493','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1136,'FRANCISCO JOSE BEZERRA NETO','72570075272','13/02/1981','4439853667','38318','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1137,'FRANCISCO JOSE DA SILVA SOUSA','10124763839','05/02/1967','1129708394','7749','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1138,'FRANCISCO JUDECY ALVES DA SILVA','00605658374','08/06/1985','4625212713','700541','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1139,'FRANCISCO JUSTINO DE SOUZA','70335621368','04/06/1972','1964559150','41661','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1140,'FRANCISCO LUCIO AGUIAR DA SILVA','02922393356','10/05/1990','4643059705','703214','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1141,'FRANCISCO MARREIROS DE SOUZA FILHO','40657647349','17/01/1973','1502366','26484','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1142,'FRANCISCO MIGUEL DE LUNA','44969511420','20/02/1963','48647382','10251','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1143,'FRANCISCO NAZARE RIBEIRO DE ALMEIDA','12818631220','29/05/1958','','957','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1144,'FRANCISCO OLIVEIRA SILVA','16131568472','13/10/1956','370239','1260','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1145,'FRANCISCO ORLANDO DE OLIVEIRA','38019175334','26/10/1959','1328989','12670','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1146,'FRANCISCO PEREIRA DA SILVA','26904705272','18/07/1968','76491','2860','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1147,'FRANCISCO PEREIRA DE ANDRADE','03645690425','17/02/1944','160747','35106','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1148,'FRANCISCO PEREIRA MUNIZ','21223432491','26/09/1949','1999352','19712','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1149,'FRANCISCO PEREIRA NONATO','74141309591','18/05/1973','3659642503','30236','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1150,'FRANCISCO REIS DE FRANCA','09622730310','16/06/1950','184377','3247','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1151,'FRANCISCO ROBERTO VIEIRA SAMPAIO','21610452291','07/06/1965','140718','17698','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1152,'FRANCISCO TENORIO FALCAO PEREIRA','24683612020','','','','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1153,'FRANCISCO WILLIAMS DE OLIVEIRA','37942450325','08/11/1968','146104588','15857','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1154,'FRANCISCO XAVIER DE SOUZA','15517853404','29/05/1958','20071262428','43001','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1155,'FRANKLIN DA SILVA GOMES','32580533249','20/05/1969','411480','702935','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1156,'GABRIEL GOMES RODRIGUES','43576157808','19/12/1995','6040998199','159387','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1157,'GEDINEI DA SILVA ALMEIDA','89150716204','15/07/1987','4232505490','707864','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1158,'GEDSON HENRIQUE SANTOS MAGALHAES','33766464817','03/08/1984','3281739703','708976','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1159,'GEISIANE ANDRADE DA SILVA','41786380846','15/10/1992','494352334','158151','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1160,'GENILSON BENEDITO DA PAZ','30570819830','23/12/1980','3561429851','705969','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1161,'GENILSON DE SOUSA MENDES','63981688287','','','','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1162,'GENIVAL COIMBRA DA SILVA','59428910287','10/12/1974','126021','29980','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1163,'GEORGE CORREA AMARO','18287409268','21/01/1968','567270584','3581','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1164,'GEORGE DUARTE RIBEIRO','53442253772','26/06/1949','2485430','965','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1165,'GERALDO DANTAS FERNANDES','19962428220','04/09/1963','150136','2445','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1166,'GERALDO MAGELA CORTES CARVALHO','44906676634','16/10/1962','','45551','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1167,'GERALDO MAGELA DA FONSECA','39493512649','26/07/1961','','44130','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1168,'GERALDO MAGELA DO CARMO','20647280663','24/10/1955','885775','36951','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1169,'GERALDO MIGUEL DE PINHO','00786594691','07/04/1938','','40177','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1170,'GERALDO NOGUEIRA VILELA','10366997653','05/06/1949','676664540','41998','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1171,'GERALDO NUNES DOS SANTOS','44663420400','16/08/1965','3051211','9741','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1172,'GERALDO SANTOS DE MORAIS','08453748268','30/10/1959','3472733375','612','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1173,'GERALDO ULISSES FONSECA','42589304668','16/10/1962','3765705','32395','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1174,'GERALDO VICENTE DOS SANTOS','02282437349','25/08/1942','106821','12530','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1175,'GERBE MALAQUIAS DA SILVA','28743830234','12/09/1965','78132','2623','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1176,'GERINO DE CARVALHO TERRA FILHO','15011704220','30/07/1962','2496328740','25119','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1177,'GERONICE DE FATIMA TRINDADE','30745681867','26/06/1973','327281650','158909','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1178,'GERONIMO GOMES DA SILVA','10324441428','30/09/1994','6088029281','705420','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1179,'GERSON RODRIGO TELES DOS SANTOS','47178412801','25/08/1998','380157500','703184','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1180,'GESSE KLEITTON ROMAO GOMES','06379453440','25/11/1987','1172097593','39560','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1181,'GIANCARLO LIMA DOS SANTOS','51610353234','08/07/1978','15219291','160148','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1182,'GILBERTO CESAR AGOSTINHO','10915334828','05/08/1967','1395186164','105945','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1183,'GILBERTO DE CRISTO TRINDADE','17168798847','08/09/1967','','156590','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1184,'GILBERTO KUHN','25929305072','17/01/1955','532242870','42226','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1185,'GILDA MARIA DUTRA LEITE','18390587300','07/04/1961','419676','9881','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1186,'GILMAR BRANDAO DE SOUZA','39460683835','08/05/1989','5328237455','156582','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1187,'GILMAR CHAVES ALVES','41536258091','12/10/1962','2021571449','999709','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1188,'GILMAR VICTORINO','74805118849','07/05/1954','10610378','46485','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1189,'GILMARA DE LUCENA LEITE','05152431408','13/12/1982','2651675','29335','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1190,'GILMARIO CERQUEIRA DE MELO','38600471591','25/06/1966','201047314','23370','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1191,'GILSON DA COSTA FRANCA','19744951249','16/12/1963','2774453219','8966','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1192,'GILSON SANTOS DA ROCHA','22978585072','27/03/1954','7012887993','72494','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1193,'GILVAN AMORIM GOMES','13730835491','26/04/1954','1205234','14796','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1194,'GILVAN COIMBRA MARTINS','15444406268','26/04/1959','406004','22993','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1195,'GILVAN DE OLIVEIRA FERRO','09388907434','23/12/1950','2722018840','8800','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1196,'GILVAN LIMA GUIMARAES','26216221434','14/07/1960','706158','8770','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1197,'GILVAN LUIZ DA SILVA','30503199842','07/04/1983','329285828','708992','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1198,'GILVANDO CHAGAS BATISTA','22435727291','10/03/1968','2135432517','105503','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1199,'GILVANDRO JORGE LINS','07874245440','12/11/1967','3357547','708941','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1200,'GILZELIA DE MELO SOUSA','25088440472','22/01/1960','679159','999792','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1201,'GINOVALDO SILVA PINA','64051161072','04/12/1971','1422517731','32247','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1202,'GIOVANI GOUVEA VIEIRA','54033322000','29/04/1968','9036899681','999806','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1203,'GISELE CRISTINA FERREIRA DE LIMA','33162929857','10/04/1986','441780441','701874','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1204,'GISLAINE DE SOUZA FARIA BASTOS','34225747867','30/08/1987','433361909','708402','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1205,'GIULLIANO CARNEIRO COSTA','53223101187','01/06/1973','2098894','24155','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1206,'GIVALDO DOS SANTOS CANDIDO','10849786878','04/04/1971','230341482','702072','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1207,'GIVALDO MACEDO GOMES','13528220406','08/12/1952','950182260','14800','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1208,'GRACIANO JOSE DE ALMEIDA','27032119883','26/12/1978','3009576455','701300','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1209,'GRACIELA OLIVELLA OLIVEIRA','70690901020','11/12/1968','1029593629','30422','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1210,'GREGOR DALMONICO SANTOS SILVA','35191800818','17/04/1986','3487893139','709042','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1211,'GUARACI URUBATAN MARQUES DA CUNHA','38079267049','02/06/1965','1031547291','15873','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1212,'GUIOMAR ALESSANDRA DE SOUZA TELLES','12081866803','17/09/1970','229398340','46264','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1213,'GUSTAVO BATISTA FREIRE THE','80543197387','02/12/1978','2167497','705845','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1214,'GUSTAVO DANNI TRENTINI','00495847070','17/03/1983','3640271550','703257','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1215,'GUSTAVO DE LIMA BARROS','36208768861','17/10/1986','415711915','704490','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1216,'GUSTAVO RENY BRAGA RIBEIRO','05090284466','10/01/1985','2664073','37311','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1217,'GUSTAVO TEIXEIRA DE PAULA','42607529875','03/02/1995','6528914839','706094','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1218,'HACMONI PAMELLA DA SILVA VITOR','38612125871','03/09/1990','472706238','702196','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1219,'HAILTON FERNANDES DA SILVA','16959607850','29/04/1976','248216636','107743','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1220,'HAILTON MELO DE ARAUJO','79207120844','06/03/1955','46577','19100','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1221,'HAMILTON LOPES','11994479191','06/12/1955','67718410','702145','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1222,'HEBERTON CLAYTON BATISTA ALEXANDRE DA SILVA','07409210451','30/01/1987','4248499069','707155','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1223,'HEBSON CARVALHO DO NASCIMENTO','67646530204','04/04/1979','609572','23914','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1224,'HECTOR SANNY LUIZ DE PAULA','38179212840','21/03/1988','3905725804','701718','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1225,'HEDYHPO DURAES AUGUSTO','35941598840','24/04/1990','5746326083','703567','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1226,'HELDER COSTA ROCHA','24015830334','03/08/1962','536617','34185','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1227,'HELENIRA ELLERY MARINHO VASCONCELOS','05162904368','23/11/1949','464075936','69167','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1228,'HELIABE SOUZA ALVES','28583153884','15/05/1981','325628725','704016','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1229,'HELIO BRASILEIRO BARBOSA','31098738420','09/12/1961','2405859','39578','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1230,'HEMILIA GABRIELLY DE OLIVEIRA CARTAXO','06372116421','17/12/1985','2761138','34843','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1231,'HENRIQUE BARROS VIEIRA','05189732630','11/05/1981','10793638','26310','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1232,'HENRIQUE CESAR NEVES COELHO','40694281867','11/10/1990','473254256','702595','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1233,'HENRIQUE GARCIA PERONIO','00176995099','11/07/1982','1475424890','28495','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1234,'HENRIQUE LEONARDO KRAJEWSKI','28836905889','30/11/1960','1590495407','700150','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1235,'HERSON VIEIRA DOS SANTOS','84195630215','04/10/1983','19915420','42935','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1236,'HIGO RAFFAEL DE OLIVEIRA CRUZ','07267321410','03/08/1989','5096544434','700860','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1237,'HIVALDO BARBOSA DA SILVA','48171352391','14/08/1964','821420','9342','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1238,'HONORIO ONOFRE DE MEDEIROS','05354765315','17/06/1946','104274','30490','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1239,'HOSANA CARVALHO DA SILVA','06077250287','03/10/1956','55574','1457','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1240,'HUGO FONSECA ARAGAO','34969225400','08/05/1963','3961585170','157279','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1241,'HUGO MOREIRA DA COSTA','22507159200','14/10/1961','39688','5843','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1242,'HYANAMEYKA EVANGELISTA DE LIMA PRIMO','72557818291','07/07/1980','3969517','40363','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1243,'IARA MARCELINO SCHEINER','10518561836','30/11/1972','5248437589','703672','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1244,'IDILA MARIA DA SILVA ARAUJO','00047669381','04/09/1982','99029231778','41513','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1245,'ILANA SANAMAIKA QUEIROGA BEZERRA','05310637478','13/03/1984','1170766277','37184','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1246,'ILDA MARIA SOBRAL DE ALMEIDA','41950186091','23/06/1961','1239571845','17337','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1247,'ILMA MARIA RAMOS RIBAS','22040714120','08/12/1958','203754619','36676','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1248,'INACIO LEDUR','24718890004','24/09/1955','241619','12220','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1249,'IRACINO BOMFIM DA SILVEIRA','18857361268','10/11/1961','849609026','3263','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1250,'IRATAN COSTA FONSECA','14747162291','30/12/1962','9360514','107573','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1251,'ISAMARA ROCHA TEIXEIRA','04525188146','04/11/1994','3057046','149292','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1252,'ISIS CAROLINE COELHO COSTA','97028134253','04/08/1995','6011399393','83550','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1253,'ISMAEL BRAS DA SILVA','07376520805','27/06/1965','','46345','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1254,'ISMAEL MILACH DA SILVEIRA','93152108087','12/04/1977','9070897351','26280','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1255,'ITACI DUARTE SILVEIRA','08475539220','22/09/1951','39986','35491','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1256,'ITAMAR DE SA BATISTA','95299653620','16/01/1965','','104841','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1257,'ITAMAR SOARES','13594087204','01/05/1960','121918','3867','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1258,'IVAN DE OLIVEIRA','62999281668','14/08/1968','4428559882','161721','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1259,'IVANILDA CARDOSO DA SILVA','54161410425','30/09/1967','1143237','9792','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1260,'IVANILDO EVODIO MARRIEL','37120638734','06/05/1951','28199','43818','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1261,'IVO ALAN ALVES SARAIVA','15111448829','20/10/1973','2175550152','706256','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1262,'IZABEL CRISTINA TAVARES DE ANDRADE','09219327406','08/03/1989','7397757','159190','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1263,'IZAIAS ADERVAL DA SILVA SOUZA','02256549461','06/07/1976','2460633315','40541','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1264,'IZAIAS TADEU BARBOSA DUARTE','15923274604','07/05/1955','','30686','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1265,'IZAQUE DE NAZARE PINHEIRO','28832108291','31/08/1968','4550071985','38121','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1266,'IZETE BARBOSA DOS SANTOS','06690076253','17/02/1958','662048','2674','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1267,'JACIVALDO BARBOSA DA COSTA','20967101204','28/09/1965','310287','15237','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1268,'JACO ALVES SOBREIRA','05173450215','10/09/1953','28160','27952','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1269,'JACQUELINE BARTOLOMEU DA SILVA BARREIRO','14387898828','29/04/1972','241189901','40207','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1270,'JADIR ROQUE DE OLIVEIRA','62215345268','26/11/1979','173150','27472','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1271,'JAILSON FLORENTINO TEIXEIRA FILHO','30711446873','15/12/1981','3289706504','702765','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1272,'JAIR ANTONIO DA SILVA','20276180828','23/10/1973','3183378778','157651','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1273,'JAIR SANTOS FIAIS','22718011840','11/06/1982','2488760900','708623','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1274,'JAIR SIMOES NETO','13694674780','26/09/1991','5482772910','150878','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1275,'JAIR TIMM PARKER','44737017000','13/09/1967','8031549713','16390','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1276,'JAIRO ARAUJO DA SILVA','13144154415','21/07/1949','272672','9849','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1277,'JAMES DE SOUZA BENTES','84873736234','28/05/1985','19846967','70246','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1278,'JAMMERSON ALLAN SILVA CONCEICAO','01223614239','11/12/1993','3486559','160113','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1279,'JANAINA DE PAULA ARAUJO','12360566474','07/09/1998','39153797','158240','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1280,'JANDERSON QUIRINO','38600067898','18/05/1989','458284117','159620','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1281,'JANDISON DOS SANTOS SILVA','09664951447','28/06/1992','','707988','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1282,'JANILTON RODRIGUES MENEZES','60200243268','06/06/1976','2915713041','83852','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1283,'JANINE TALITA MARQUES DOS SANTOS','08955011989','15/06/1992','6689628091','158763','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1284,'JANIO FLAVIO TEIXEIRA','33335346653','21/11/1959','976522337','701','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1285,'JAQUELINE FERREIRA DA SILVA ALVES','30555053873','24/10/1980','6570049346','159263','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1286,'JASON DE OLIVEIRA DUARTE','14971402187','03/10/1956','115328408','45241','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1287,'JEAN CARLO DOS SANTOS SIMOES','49931075015','26/04/1969','9048350848','43109','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1288,'JEAN CARLOS PEREIRA DA CRUZ','02626308420','12/08/1977','2513848996','157120','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1289,'JEAN ROCHA DE SOUZA','39890118807','07/07/1991','479339909','149608','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1290,'JEFERSON JOEL TAVARES DO NASCIMENTO','72698233249','08/10/1981','6272951','30155','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1291,'JENNIFER NERES DOS SANTOS','41063893801','23/08/1995','5994934219','708240','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1292,'JERONIMO ARAGAO MENDES','23146788349','23/11/1965','2910566915','157236','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1293,'JERRY ADRIANI CORDEIRO DE SOUZA','73524190049','07/07/1974','8052349993','33359','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1294,'JESSICA HEMANN','97826782287','07/12/1990','1005597','707848','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1295,'JOAB LEAL RODRIGUES','02840828480','12/03/1978','5674452','159069','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1296,'JOABE LOIOLA SILVA','02892466440','12/12/1976','2784568339','160121','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1297,'JOANA DARC SOUZA BEZERRA','15426378215','08/08/1964','207182','16870','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1298,'JOANA MARIA LEITE DE SOUZA','23336838215','21/11/1963','121196','22225','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1299,'JOANA MARTINS','07902311820','24/01/1967','','700819','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1300,'JOANNE REGIS DA COSTA','34421963291','02/03/1968','8338949','63320','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1301,'JOAO ANTONIO DOS SANTOS','39727203434','15/09/1954','1844054','11711','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1302,'JOAO ARAUJO LOPES','34219420304','14/02/1961','420065','49522','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1303,'JOAO BARBOSA DO NASCIMENTO','21634190297','22/12/1963','143452','23094','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1304,'JOAO BATISTA BELTRAO MARQUES','26257793068','10/03/1956','1000497238','61506','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1305,'JOAO BATISTA CARDOSO DE SOUZA','14027836200','15/07/1953','1878018','5398','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1306,'JOAO BATISTA PEREIRA','60085495620','20/05/1966','3730807','36617','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1307,'JOAO BOSCO CAVALCANTE ARAUJO','22454381168','09/07/1964','644367','31810','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1308,'JOAO CARLOS CAMPANINI MARTINI','33241499839','04/12/1984','2801045002','700630','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1309,'JOAO CARLOS GARCIA','12008214672','17/01/1951','','45403','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1310,'JOAO CARLOS PICANCO GOES','00701715219','09/01/1990','4332456368','68292','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1311,'JOAO DA SILVA CARVALHO','17419670234','14/01/1962','5451026777','98701','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1312,'JOAO DE DEUS LOBATO DE CASTRO','27405516220','17/06/1965','114033370','47937','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1313,'JOAO DINOR DA SILVA','23745410378','05/11/1963','2045711','7501','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1314,'JOAO FERDINANDO BARRETO','05342201268','27/01/1954','','100846','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1315,'JO?O FL?VIO GUIMAR?ES','22181993866','23/11/1981','1454787422','154393','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1316,'JOAO FRANCISCO DE ALMEIDA SANTOS','03158926253','29/08/1954','2059592','2984','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1317,'JOAO HENRIQUE ZONTA','00482267500','19/09/1982','1115392778','38725','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1318,'JOAO HILARIO DA SILVA','37097067349','24/06/1970','482631884','13048','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1319,'JOAO JOSE DE OLIVEIRA','53737539472','06/06/1958','3256360','28070','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1320,'JOAO RICARDO SCLAFFANI LEONEL','36051232877','12/06/1987','3824235510','702358','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1321,'JOAQUIM VALDOMIRO PINHEIRO SEABRA','13512315291','28/06/1961','5060745','7471','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1322,'JOBISON FELIX DE LIMA','46049504822','09/03/1997','452075075','149799','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1323,'JOEL FERNANDO PIRES BARBOSA','25939483020','16/02/1957','1003684667','12106','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1324,'JOEL GOMES ALVES','66086663220','28/12/1979','1633531047','48224','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1325,'JOEL RAMOS DE SOUZA JUNIOR','07937395605','24/04/1987','5450012943','68276','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1326,'JOELMA FERNANDES DE ANDRADE','14749672807','15/03/1971','','706060','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1327,'JONAS BENTES BLANCO','01526501058','01/09/1986','6341777299','707589','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1328,'JONES ESTEVAO FERREIRA','32152320816','02/11/1984','4004848358','708399','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1329,'JORDANNA MARIA BASTOS DE ARAUJO CAVALCANTI FEITOZA','65817168391','05/12/1981','9573669','101869','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1330,'JORGE AMBROZIO SILVA DA SILVA','27951561053','25/06/1959','1009698059','41092','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1331,'JORGE ARCE DE ALMEIDA','19328192072','06/11/1953','397891011','61425','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1332,'JORGE DUTRA DA SILVA JUNIOR','12104965349','07/05/1955','1302962316','41432','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1333,'JORGE FEDERICO ORELLANA SEGOVIA','06341373287','21/03/1953','','6106','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1334,'JORGE FLORENCIO DA CUNHA','31323944249','23/04/1954','2018896','46752','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1335,'JORGE JOSE GOMES DA SILVA','78880238434','28/06/1970','4523918174','70521','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1336,'JORGE MOREIRA DO NASCIMENTO','73942456591','02/04/1976','37444839','46094','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1337,'JORGE SEVERO DA COSTA','35635282415','23/04/1964','4941297413','9750','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1338,'JORIMA MARQUES FERREIRA','36198889300','22/05/1964','103603930','69132','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1339,'JOSE ADAILTON DE QUEIROZ','71028751427','13/09/1980','3598053','700355','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1340,'JOSE AFONSO LIMA DE ABREU','38656833391','22/02/1965','639098','30457','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1341,'JOSE AILTON DE OLIVEIRA','32007221268','14/03/1969','859958','49450','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1342,'JOSE AIRTON BELO','68551665472','12/12/1970','487522','5177','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1343,'JOSE AIRTON DA COSTA','37162144349','16/02/1965','45436282','12815','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1344,'JOSE ALUCIANO PEREIRA','90643569472','12/09/1973','4136816','158003','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1345,'JOSE ALVES OLIVEIRA','15902471320','01/05/1960','','1880','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1346,'JOSE AUGUSTO BENTES DE FRANCA','13521527204','01/12/1961','3121908677','16373','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1347,'JOSE BARBOSA DA COSTA','12329177291','17/04/1963','384654','1309','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1348,'JOSE BENEDITO NUNES','35233290430','24/07/1963','2632234','16764','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1349,'JOSE CARLOS ARA DE AGUIAR','97996300887','02/10/1956','86333975','23167','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1350,'JOSE CARLOS DA SILVA','26797445604','29/04/1956','2984253','69116','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1351,'JOSE CARLOS DAVILA','25257480000','17/03/1954','5009091728','11550','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1352,'JOSE CARLOS PEREIRA DE SOUSA','05690427470','12/09/1984','4335689962','700673','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1353,'JOSE CARLOS RODRIGUES VIEIRA','19228244291','27/09/1963','6453589','2925','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1354,'JOSE CARLOS SANTANA DE ALMEIDA','09594264420','28/07/1954','1011813','12696','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1355,'JOSE CHRISTOFFER TRINDADE RIBEIRO','39372568813','08/04/1990','4815551249','159433','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1356,'JOSE CICERO DE SOUZA','41993020420','03/07/1964','352406454','23248','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1357,'JOSE CLAUDEMIR SANTOS INACIO','78366933334','10/10/1977','92016022469','704717','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1358,'JOSE CLAUDIO ALVES','35990651449','27/09/1961','2435872','30600','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1359,'JOSE CLAUDIO EVARISTO DE LIMA','37944673372','14/01/1968','96002531300','16934','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1360,'JOSE COSTA DE CASTRO','20293372268','15/05/1960','4868404','3735','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1361,'JOSE DA CONCEICAO','18303900153','14/08/1958','20070029720','41530','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1362,'JOSE DANTAS FERNANDES','34366741415','25/05/1960','80139','2542','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1363,'JOSE DANUBIO GUIDOTTI LOPES','52962580025','25/01/1966','1028826236','40983','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1364,'JOSE DE ANCHIETA MOREIRA DA COSTA','18289223234','06/02/1964','39861','6360','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1365,'JOSE DE RIBAMAR CAVALCANTE RIBEIRO','20632860359','29/01/1960','1603772412','19470','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1366,'JOSE DE SOUZA SILVA','15724514400','05/12/1950','1659342','25330','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1367,'JOSE DIAS VIANNA FILHO','22978380004','18/07/1957','1003707583','71790','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1368,'JOSE DINIZ FERREIRA DE LIMA','23141646368','15/09/1965','3458528216','30139','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1369,'JOSE DO ESPIRITO SANTO SILVA','41502132400','18/05/1964','2822590','13994','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1370,'JOSE ELISSON LIMA DO NASCIMENTO','88266001200','14/05/1986','392564050','705802','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1371,'JOSE FRANCISCO ALBUQUERQUE DE ARAUJO','38714493349','11/12/1970','2157671707','14869','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1372,'JOSE FRANCISCO GARCIA PORTO','25073460006','17/06/1957','1011099643','31186','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1373,'JOSE GILMAR DOS SANTOS LUCAS','40218325053','16/09/1962','3028387227','2658','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1374,'JOSE GOMES DA COSTA','14235234315','06/02/1960','7365833','61620','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1375,'JOSE HEITOR VASCONCELLOS','51346079749','08/01/1955','30768501','44326','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1376,'JOSE INDALECIO DE ARAUJO NEVES','20754558487','10/11/1957','1783953450','73954','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1377,'JOSE JOAQUIM GUIMARAES DE LIMA','62466313715','19/12/1960','1627449227','708267','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1378,'JOSE LEONARDO DE SOUZA MAIA','10064001253','25/10/1954','29132592','9636','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1379,'JOSE LEOPOLDO LANTYER BATISTA','24837431534','02/09/1960','147944465','21423','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1380,'JOSE LIBERALINO FILHO','40322475449','30/12/1964','2818959','24660','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1381,'JOSE LINHARES DA SILVA','01088991360','28/02/1985','2,002E+12','702293','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1382,'JOSE LOPES RIBEIRO','01472070372','09/01/1940','62611','44440','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1383,'JOSE LUIZ DE PAIVA SILVA','41745205004','26/06/1964','5143758688','5797','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1384,'JOSE LUIZ LEAL DIAS','20996896287','06/10/1965','1783112109','2240','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1385,'JOSE MARCELINO DA SILVA','32215550244','19/06/1967','4119348644','42242','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1386,'JOSE MARCONDE DA COSTA E SILVA','24095958200','28/12/1964','351547143','102458','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1387,'JOSE MIGUEL DOS SANTOS','45268908472','14/02/1966','2986845','24945','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1388,'JOSE MIVALDO OLIVEIRA SANTOS','93616058520','28/05/1976','362238662','46280','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1389,'JOSE NECI DA SILVA','26583002809','22/05/1969','333524111','702382','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1390,'JOSE NESTOR DE PAULA LOURENCO','23933046220','10/03/1966','680013','46353','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1391,'JOSE NILTON DANTAS HENRIQUE','32452284491','10/02/1963','474987763','4901','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1392,'JOSE NILTON MEDEIROS COSTA','13079760425','03/07/1956','588292','40118','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1393,'JOSE OSCAR DE SOUSA FARIAS','08084072366','11/06/1999','20089025517','708429','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1394,'JOSE OSCAR LUSTOSA DE OLIVEIRA JUNIOR','56856490453','11/12/1967','1008303','4669','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1395,'JOSE PAGANINI','11403071268','06/02/1961','153479','35025','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1396,'JOSE PAZ DA CRUZ','35597674404','04/06/1956','4494368593','21431','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1397,'JOSE PEREIRA GONCALVES','05725539865','13/06/1958','217014926','40401','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1398,'JOSE REGINALDO VIEIRA DA SILVA','10198741553','04/11/1955','167279','11460','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1399,'JOSE RENATO CORTEZ BEZERRA','10721320449','09/09/1952','134139','7129','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1400,'JOSE RIBAMAR DA SILVA','18397530215','27/07/1957','758169','18856','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1401,'JOSE RIBAMAR LIMA PEREIRA','35017708391','19/03/1967','806561','41289','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1402,'JOSE RIBAMAR RODRIGUES RIBEIRO','20395060206','11/05/1968','213121','16489','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1403,'JOSE ROBERTO DA SILVA JUNIOR','09303411471','23/01/1992','4984952752','149560','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1404,'JOSE ROBERTO DE OLIVEIRA','21373925850','02/07/1977','1427726195','703036','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1405,'JOSE ROBERTO LORENA JUNIOR','34586139862','10/10/1980','307535794','159301','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1406,'JOSE ROBERTO SLANZON JUNIOR','12378490801','28/06/1970','189186689','46361','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1407,'JOSE ROBERTO VIEIRA JUNIOR','07980782780','03/01/1976','511568908','49042','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1408,'JOSE ROGERIO DA SILVA RIBEIRO','06298002863','04/08/1965','5053063218','708224','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1409,'JOSE ROQUE GOMES MOURA','27916065991','16/08/1957','92015000127','22985','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1410,'JOSE TADEU DE SOUZA MARINHO','17668727434','03/06/1956','237431','5886','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1411,'JOSE TAVEIRA DA SILVA NETO','29519255818','14/05/1981','729958960','159654','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1412,'JOSE VALTON MATEUS SANTANA','07555169827','06/12/1965','173990873','708232','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1413,'JOSEILTON CORREIA COSTA','02365929478','29/11/1977','3888868476','161543','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1414,'JOSENILDO DO NASCIMENTO','07882799475','30/06/1988','554156155','702609','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1415,'JOSENILDO SAMOEL TERTO','12621958885','28/05/1972','3349095632','704164','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1416,'JOSIANE LAGE','30611630850','20/07/1981','1880882299','706515','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1417,'JOSIANE PEREIRA DA CONCEICAO','08973450450','22/08/1988','7042952','156574','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1418,'JOSIAS MARQUES VENANCIO','13621653287','10/07/1956','4582683','5274','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1419,'JOSINALDO MOREIRA DA SILVA','03051600440','07/05/1980','5808733','149403','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1420,'JOSUE TERCO DE MENEZES','13585452272','28/12/1961','5510775','11231','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1421,'JOSY SOARES DE ASSUNCAO','66751853220','08/09/1981','352506','88323','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1422,'JOVENIANO SANTIAGO DE OLIVEIRA','34589848449','01/05/1963','2446600','13676','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1423,'JOZELIA VIEIRA SILVA','38556219349','11/11/1968','3473987300','40843','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1424,'JUAN MARCELO PALLARES','15061344839','04/10/1975','30621359931','707597','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1425,'JUAREZ BERTO LUIZ','47487275434','06/08/1965','696509008','28029','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1426,'JUCELIA OLIVEIRA VIDAL','62755005220','09/07/1977','11506','62537','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1427,'JUDIVALDO TAVARES DA SILVA','20449658287','11/04/1965','2279717522','105643','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1428,'JUDSON FERREIRA VALENTIM','08107440234','23/01/1957','2195686198','540','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1429,'JULIANA DOS SANTOS','06699020633','14/03/1981','418577353','156434','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1430,'JULIO LIMA DUTRA','87557142349','18/07/1979','1838933','43621','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1431,'JURACI DOS SANTOS MOREIRA','12787931863','21/05/1967','218707460','704407','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1432,'JUSCELINO DO CARMO','13963945249','29/10/1960','152082','993220','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1433,'JUSSARA ZANOLLA','72095423020','26/08/1976','6061140015','71714','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1434,'JUSSIRLENE MARQUES DIAS','08064031877','16/05/1961','143152907','157198','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1435,'JUSTINO CAMELO ROCHA NETO','11264934149','13/02/1956','399078','4472','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1436,'KAMILA DE OLIVEIRA CRAVO','48102937858','07/04/1998','583871719','89974','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1437,'KARINA KIONE SILVA GOMES E SOUSA ARAUJO','77226909472','02/11/1971','1525927','40100','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1438,'KARINA ROBERTA PAVIOTTI','37621430800','02/04/1990','464597869','157023','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1439,'KARINE SALOMAO SOARES VANDAM','03531339656','10/02/1977','9127824788','702315','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1440,'KARLA PRISCILLA DE SA E DRUMOND','06493941431','06/10/1986','8238604','30783','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1441,'KATIUCHA DEISE DA SILVA','00950762040','10/07/1985','1086570429','704199','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1442,'KELLY MENEZES ROCHA','82504830220','25/07/1985','4571482157','105074','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1443,'KELSON HENRIQUE DOS SANTOS ARAUJO','27434346353','02/10/1963','527059','37990','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1444,'KLEBER LEONARDO DA SILVA GUERRA','77350855400','29/06/1974','564192386','41807','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1445,'LAISE LEAO MACEDO','17423520225','03/05/1963','6749836','1961','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1446,'LAYANA KARITIANA QUEIROGA BEZERRA','05270931494','15/01/1987','1170766005','37192','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1447,'LAYLA GOMES MARINHO','87477351200','14/08/1988','11189240','38237','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1448,'LEANDRO COSTA DE SANTANA','00839497474','27/06/1981','4950468540','156647','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1449,'LEANDRO FERNANDES DAMASCENO','95727191300','12/09/1982','628958','32387','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1450,'LEANDRO HENRIQUE DA SILVA PRATIS','42195851848','08/04/1994','','149349','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1451,'LEANDRO PEDROSA PEREIRA','10233241485','04/11/1993','8360136','157201','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1452,'LEANDRO PEIXOTO ESCRIVANI','26778830824','23/05/1975','19605671','46213','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1453,'LEILA SOUSA SERRAO','51307162215','02/10/1979','953344745','32522','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1454,'LENILDO DIAS DE MORAIS','34512381449','13/11/1963','3126365693','2712','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1455,'LENIZES PIMENTEL CAMPOS BRANDAO','32162502291','02/11/1972','3626628','38792','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1456,'LEONALDO CRISTIANO JOSE','28392227875','26/10/1980','2901556212','704067','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1457,'LEONARDO DE AMORIM LEANDRO','68980981287','26/05/1981','1697508766','81531','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1458,'LEONARDO JOSE MONTEIRO DE MACEDO','02227417838','18/02/1962','2202592146','79421','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1459,'LEONARDO PUJATTI','33396060644','15/06/1961','261170119','39080','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1460,'LEONARDO REGIS DA SILVA SANTOS','06340090443','14/12/1987','37806432','156671','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1461,'LEONARDO VENTURA DE ARAUJO','01223161501','20/12/1983','1126281689','62189','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1462,'LEONICE VIEIRA DOS SANTOS','20079045863','13/04/1970','2097041532','701890','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1463,'LESLIE VALERY THOME BANTIM DA SILVA','44652887272','01/01/1974','87503','35211','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1464,'LETO SARAIVA ROCHA','12303470382','20/09/1956','1975500818','41793','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1465,'LIDIANE CRISTINA FERREIRA DA SILVA','15036850807','14/06/1973','228549073','21997','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1466,'LIGIA MARGARETH CANTARELLI PEGORARO','39481239004','12/09/1962','9011597714','71838','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1467,'LIGIA MARTINS ALVES FELIPE','00398708126','25/10/1982','1128917','28851','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1468,'LILIAN CHAYN ALEXANDRE','95370277320','08/04/1981','5757376348','149071','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1469,'LILIAN LIMA HONORATO','22305574835','29893','254550460','','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1470,'LILIAN SANDRA LIMA DA SILVA','37613934829','13/07/1989','6849729163','708380','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1471,'LILIANE BARBOSA DOS SANTOS GADELHA','60257911200','10/02/1979','131606','28797','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1472,'LINCOLN BELMONTE BENDER','01789269067','13/09/1990','1080082132','39527','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1473,'LINDOMAR JOSE MANDU DE OLIVEIRA','06274689699','01/05/1980','11732907','36609','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1474,'LINO OMAR FONSECA DA LUZ','26949776004','21/10/1958','1004555437','13307','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1475,'LITIERRE CRISTINA PEREIRA WISNIESKI','41723756857','03/01/1994','412564713','158291','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1476,'LOURENCO DE SOUZA CRUZ','00562501932','20/08/1979','173031','36927','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1477,'LOURIVAL RIBEIRO DE SOUZA','31963595572','21/03/1958','2742579','44679','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1478,'LUCAS KENJI DOS SANTOS RYU','33584365864','22/10/1988','4645203270','705284','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1479,'LUCAS LEONARDO DOS SANTOS','11280342471','30/07/1995','','708739','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1480,'LUCELY PATRICIA CARVALHO DOMINGUES','28925019892','01/06/1979','307869234','157538','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1481,'LUCIA HELENA AVELINO ARAUJO','37973959491','17/01/1960','518379','5959','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1482,'LUCIANA GUILHERME SACOMANI ZENERATO','21764105800','19/04/1975','254789080','46132','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1483,'LUCIANE FRANCO PEREIRA DA SILVA','32234687810','28/01/1982','355103084','159468','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1484,'LUCIANO DA ROSA ANGELO','55137768049','02/09/1972','1048661431','40975','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1485,'LUCIANO ELI CEZARIA','36003428864','06/01/1988','457540217','706329','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1486,'LUCIANO FELIX DA CRUZ','25520785830','10/09/1976','322400740','705411','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1487,'LUCIANO RODRIGUES DOS SANTOS','77737563172','25/02/1976','922145678','156817','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1488,'LUCIANO SILVEIRA DA SILVA','29816318881','18/03/1983','1867258099','706124','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1489,'LUCIELIO MANOEL DA SILVA','03074077484','14/01/1980','4799460718','29106','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1490,'LUCIENE COSTA BENTES','24270172215','25/04/1964','221119','1511','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1491,'LUCIMAR SANTIAGO DE ABREU','36475262900','03/02/1957','103231444','24139','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1492,'LUCIMERE DE FATIMA MORELO','41170792049','17/08/1964','8017966188','16993','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1493,'LUCIO FLAVO LOPES VASCONCELOS','18199054387','28/11/1959','274640','61352','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1494,'LUCIVALDO DOS SANTOS FERNANDES','21545219249','08/10/1963','6674623','3999','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1495,'LUIS AUGUSTO FREIRE FARIAS','41989234852','20/01/1994','6296798080','705128','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1496,'LUIS EDUARDO ANDRADES CURBELO','01696694086','29/01/1985','1052843891','708771','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1497,'LUIS FELIPE RIBEIRO DA SILVA','42607318823','17/12/1992','5464750139','158933','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1498,'LUIS FERNANDO COITINHO MONKS','28874447000','22/04/1958','548220471','14249','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1499,'LUIS FERNANDO DE SOUZA','60014038307','17/12/1988','4063997179','76970','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1500,'LUIS FERNANDO FOGGIATO CAFFARO','26142445890','25/06/1978','29438235','704733','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1501,'LUIS FERNANDO ZOCCA','22116482828','27/01/1984','5368699630','708143','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1502,'LUISA MARIA RESENDE GONCALVES','14513501391','04/01/1961','332184','4502','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1503,'LUISA VERAS DE SANDES GUIMARAES','01102239186','18/03/1989','386950246','68861','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1504,'LUIZ ADRIANO APOLINARIO','18237111893','23/01/1976','270555341','159867','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1505,'LUIZ ANTONIO LENA','21058490249','07/12/1944','78653','639','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1506,'LUIZ ARAUJO DE SOUZA','44675950400','15/04/1963','3527381','21954','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1507,'LUIZ CARLOS DA SILVA','30918022134','15/11/1964','3502594259','706744','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1508,'LUIZ CARLOS MATEUS','00743609492','29/04/1973','1469181158','702960','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1509,'LUIZ CLAUDIO DE SOUSA','25688788860','07/09/1976','284534055','705870','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1510,'LUIZ DO NASCIMENTO FERREIRA','04307647408','29/07/1981','2817108231','706914','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1511,'LUIZ EDWILSON FRAZAO','00420689249','28/06/1935','3226700','62049','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1512,'LUIZ ELSON DE ARAUJO FONTENELE','30608813320','27/09/1965','3927384577','14524','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1513,'LUIZ FELIPE MATTOS DOS SANTOS','04853928367','28/10/1993','6231279111','706175','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1514,'LUIZ FERNANDES DA COSTA','20648189600','13/12/1953','897660','43770','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1515,'LUIZ FERNANDO BORGES TIMM','52726193072','08/02/1966','5013629166','26018','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1516,'LUIZ FONTES VIEIRA','15977080204','05/03/1958','577625','7110','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1517,'LUIZ GOMES PEDREIRA','09739130372','04/12/1957','304385','14842','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1518,'LUIZ GUILHERME REBELLO WADT','86952102868','08/03/1952','47820767','46183','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1519,'LUIZ HENRIQUE JOSE DA SILVA','38312524835','04/06/1990','462970413','703133','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1520,'LUIZ MARIO OLIVEIRA DA SILVA','23963450282','11/05/1965','5568808456','10197','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1521,'LUIZ OLIVEIRA CAVALCANTE NETO','90736184872','04/12/1954','853422612','41670','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1522,'LUIZ PAULO NUNES FERREIRA','40750654805','17/07/1996','443977161','159786','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1523,'LUIZ RICARDO SANTOS','35840747890','15/04/1989','4335245872','703761','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1524,'LUIZ ROGERIO LOY','33685169068','17/04/1959','362843511','14265','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1525,'LUIZ TADEU MOREIRA MACHADO','30361044020','16/05/1958','2513860892','30597','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1526,'LUIZ TERTULIANO NETO','26837080415','16/02/1961','1595404','43010','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1527,'LUIZ VICENTE PEREIRA','04958832807','18/04/1964','151960','4650','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1528,'LUIZ WIRTEN SANTOS ARAUJO','34771204349','02/05/1967','630198','46191','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1529,'LUIZINHO CARON','98442651934','19/08/1974','5103318217','41688','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1530,'LURYANN THAIS BARBOSA OLIVEIRA','01705314490','07/08/1993','36719542','708828','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1531,'LUZIA DORACI BARBOSA','00812456882','13/12/1960','13185486','38210','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1532,'LUZIA FEITOSA DE OLIVEIRA','23913711287','13/12/1966','260268','11797','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1533,'LUZIA FELIX DA SILVA','01582285454','13/12/1970','9999518','162078','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1534,'LUZIA MARIA DE SOUZA OLIVEIRA','19676220272','13/04/1955','1219887991','34193','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1535,'LUZIA VIEIRA DE SOUZA NETA','85049131200','25/04/1987','156056','68438','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1536,'MABEL CRISTINA OLIVEIRA SANTOS LIMA DO NASCIMENTO','30162214898','03/02/1983','3476500450','157767','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1537,'MACIO GERALDO RAMOS','58235582600','22/04/1964','1268033','39659','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1538,'MAGNO JOSE DOS SANTOS BENARROZ','06154913249','01/01/1956','2545918','9237','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1539,'MAGNUS DALL IGNA DEON','03641116406','30/11/1980','3060373598','73180','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1540,'MAIARA JIHANE TAVARES BRITO','05843181464','08/08/1985','2790732','29769','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1541,'MAIARA REGIANE VICENTE REIS','38821092895','28/08/1990','472010086','160610','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1542,'MAIARA ZACARIAS FARIA','39900796896','07/03/1991','473351195','702242','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1543,'MAICON GONCALVES DA SILVA','11982844710','30/05/1986','6264497213','706396','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1544,'MANOEL ALVES DA SILVA','20794940315','06/09/1955','470046','5428','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1545,'MANOEL ALVES DE LIMA','37942395391','23/04/1961','2000027017','11991','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1546,'MANOEL BARBOSA NETO','98344595487','10/11/1972','645691607','28720','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1547,'MANOEL CICERO BARBOSA DE ALMEIDA','25827677434','05/11/1960','1947103','27766','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1548,'MANOEL ELIAS DOS SANTOS','35258802353','20/06/1960','920491','101770','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1549,'MANOEL FRANCISCO SERRAO DA SILVA','27292401287','10/10/1966','737233','8664','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1550,'MANOEL GONCALVES DA SILVA','39785424391','11/06/1959','464341','3670','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1551,'MANOEL JONAS DE JESUS VIANA','38863758204','27/05/1971','60832','1031','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1552,'MANOEL MESSIAS PEREIRA DE SOUSA','35017147349','01/03/1964','5710198760','8834','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1553,'MANOEL RENIEL DE SOUZA','15480500406','15/01/1958','319600','574','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1554,'MANOEL RENIO DE SOUZA','31537316400','22/05/1961','444883','5045','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1555,'MANOEL RICARDO DE ALBUQUERQUE FILHO','73945005434','03/12/1972','1483136','47538','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1556,'MANOEL RODRIGUES DE LIMA JUNIOR','44421397253','08/09/1973','10187073','35939','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1557,'MANOEL TAVARES DOS SANTOS','09848436200','24/02/1948','58559','2186','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1558,'MANOEL TIAGO DA SILVA TOTA FILHO','07519612309','15/02/1999','20085272510','703966','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1559,'MANUEL GAMA PEREIRA','13853864287','01/10/1957','4626233403','704881','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1560,'MANUEL MORAIS TAVEIRA','16138937287','16/07/1963','5742315','86150','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1561,'MARA DENISE LUCK MENDES','05125226858','06/02/1963','2701852440','101141','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1562,'MARCEL DOS SANTOS PESSOA','61310174253','23/05/1977','11802847','31780','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1563,'MARCELA DE MELO FARIA ALMEIDA CRO','32476708828','11/07/1983','407387286','159859','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1564,'MARCELINO JOSE DE LIMA','12384321587','14/01/1954','1214715','21903','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1565,'MARCELO APARECIDO GARBIN','21376869888','15/01/1979','2139272648','158623','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1566,'MARCELO DRESSLER','48093700110','20/03/1971','587238957','36560','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1567,'MARCELO FILADELFO','08291109842','16/12/1967','174338144','700185','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1568,'MARCELO LUIZ DE OLIVEIRA','70993610234','20/06/1980','591410','38156','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1569,'MARCELO RUFATTO DA SILVA','88630315253','29/03/1986','927784','62634','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1570,'MARCIA ASSUNCAO PESSOA','57314543291','05/10/1972','397338155','99198','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1571,'MARCIA FERNANDA ALBUQUERQUE BARROS LIMA','72619015200','27/10/1980','3939183080','157619','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1572,'MARCIA MARQUES DE BARROS','22378073887','16/07/1949','65614136','704148','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1573,'MARCIA REGINA GRANDORFF VITAL','14988665810','05/10/1970','547029834','69140','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1574,'MARCIELY MARIA ASSIS DE CAMPOS PACHECO','29601074899','09/03/1980','303663789','705489','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1575,'MARCILIO DA SILVA COSTA','91676541420','12/09/1973','2177320','31577','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1576,'MARCIO ANDRE DE MELO E SILVA','18280773215','20/03/1970','883981828','21792','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1577,'MARCIO DORADOR','25007931845','28/11/1976','278676996','149357','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1578,'MARCIO MUNIZ ALBANO BAYMA','21727821220','03/10/1969','158836','7773','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1579,'MARCIO PROVENCI','64701107034','06/03/1978','1939720805','46108','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1580,'MARCIONILO PEREIRA GOMES','35908726400','03/07/1963','752277111','42595','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1581,'MARCIRENE VALENTE MACHADO','04175778268','29/04/1958','228029','14621','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1582,'MARCO ANTONIO CONTI','08913156830','27/10/1964','2575836289','158976','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1583,'MARCO ANTONIO LOPES DE LIMA','30206090030','14/04/1962','589952737','15016','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1584,'MARCO AURELIO FEITOSA','27215741320','06/12/1966','2260036','34851','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1585,'MARCO AURELIO GUERRA PIMENTEL','04072673609','22/02/1979','8105794','66796','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1586,'MARCOS AERTON FERREIRA','05814217871','18/01/1965','186095739','704091','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1587,'MARCOS ALVES DE SOUSA NETO','24015172353','13/05/1963','520968','8494','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1588,'MARCOS ANTONIO DA SILVA','09062504477','22/03/1990','5938849036','157430','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1589,'MARCOS ANTONIO DE ARAUJO','01872836488','20/05/1975','1241080098','19755','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1590,'MARCOS ANTONIO GOMES DA SILVA','43089712334','05/04/1968','460936330','34827','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1591,'MARCOS DIAS SOARES','12053565845','07/08/1970','20930900','46477','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1592,'MARCOS FERNANDO NINOMIYA','07425307871','24/10/1965','168024524','46086','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1593,'MARCOS GUSTAVO DE SA E DRUMOND','04106612445','18/03/1982','1285232470','22861','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1594,'MARCOS PAULO MARTINS','09256444631','10/01/1991','5065576993','702439','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1595,'MARCOS PITER BARBOSA DE ARAUJO','78185017204','10/10/1985','3217466040','706566','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1596,'MARCUS ALEXANDRE BORGES','09617934493','29/07/1990','5748110502','708291','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1597,'MARCUS VINICIUS ROCHA DE AGUIAR','02439569240','18/03/2011','32012616','105066','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1598,'MARIA AICO WATANABE','76534812800','25/06/1946','43371498','8370','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1599,'MARIA AUXILIADORA LEMOS BARROS','16038479449','23/05/1953','2962192','34142','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1600,'MARIA CECILIA DE SOUSA BARROS','27359808391','09/01/1960','379542','5436','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1601,'MARIA CLEA BRITO DE FIGUEREDO','34911715391','11/04/1970','90002233474','22829','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1602,'MARIA CRISTINA TORDIN','07950338857','23/11/1965','16326601','48194','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1603,'MARIA DA CONCEICAO ARAUJO NUNES','38708442304','01/05/1968','1147855','3620','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1604,'MARIA DA CONCEICAO DE FREITAS COBEL','37832085304','03/08/1969','96246485','63010','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1605,'MARIA DA CONCEICAO SANTANA MARQUES','20648634604','09/02/1956','693719','43753','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1606,'MARIA DALVA DIAS DE LIRA','16054571400','05/09/1954','304463','8168','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1607,'MARIA DAS GRACAS TEIXEIRA DE LIRA','06640095300','03/02/1949','83249','14338','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1608,'MARIA DE FATIMA VIEIRA DOS SANTOS','21622698215','06/04/1962','117805','14460','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1609,'MARIA DO CARMO DE LUCENA LEITE','25109960453','21/07/1961','696478','9784','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1610,'MARIA DO SOCORRO BARBOSA GUEDES','21035229315','24/05/1962','20086639778','41785','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1611,'MARIA ELIZABETE MARQUES BARBOSA','46267450082','29/06/1963','7028097901','33324','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1612,'MARIA ELSA NOA RAMIREZ','07907834287','14/10/1955','77936','12866','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1613,'MARIA GERALDA DE SOUZA','51418401668','20/10/1959','','139220','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1614,'MARIA GIULIA CROCE','15823422881','19/05/1969','2718406187','46388','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1615,'MARIA GLEICE SANTANA DA SILVA','37355837842','24/02/1989','442183161','708615','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1616,'MARIA GORETTE RIBEIRO DOS SANTOS','36130095368','20/07/1966','749679','47589','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1617,'MARIA GUEIBY DE OLIVEIRA','61528587391','23/06/1979','94011000730','41718','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1618,'MARIA IRANILDA ALVES DE ALMEIDA','03687538249','31/10/1947','1588001','2828','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1619,'MARIA JOSE ALMEIDA SILVA','13657033807','08/06/1965','1849444046','703311','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1620,'MARIA JOSE DA COSTA E SILVA','21515255204','08/11/1952','2648482','104361','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1621,'MARIA JOSE DE ANDRADE','05212693349','15/06/1950','317240','7030','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1622,'MARIA JULIANA DE ARAUJO BRAGA','01829496301','30/06/1986','5015631959','157856','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1623,'MARIA LUCIA GOMES MARINHO','30807727253','18/02/1968','136916','38105','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1624,'MARIA LUCILENE DANTAS DE MATOS','18297730204','25/01/1965','224520','1643','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1625,'MARIA LUSIA SIQUEIRA CRUZ','03674975220','12/11/1948','2152487','100838','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1626,'MARIA MARGARIDA OLIVEIRA DE LIMA','21387818368','18520','381303','','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1627,'MARIA MARLUCIA LEMOS','22916288368','06/11/1961','443550','33316','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1628,'MARIA PERPETUA BELEZA PEREIRA','30780306287','27/03/1968','17944791','20761','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1629,'MARIA RAQUEL PAZ GOMES FERREIRA','05480635409','13/05/1986','3209620','156540','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1630,'MARIA REGINA FREITAS DA SILVA','22077847620','08/12/1957','','37087','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1631,'MARIA REGINA GUEDES DO NASCIMENTO','43193048453','07/09/1963','665385','1430','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1632,'MARIA ROSINEIDE FERREIRA DA SILVA','43089178320','02/06/1972','1464000378','41548','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1633,'MARIA SUELY DA ROCHA NEVES','40828751404','17/09/1957','945013','4294','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1634,'MARIA TEREZA DE ARAUJO WAGNER','33704139068','02/09/1957','1009802776','72400','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1635,'MARIANA DO ROSARIO RIBEIRO PRASERES','17850630300','10/10/1958','2045713','14346','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1636,'MARIANA NOVAES','40719509866','08/02/1992','5886197326','703206','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1637,'MARIANO OLIRO DA SILVA','66170338415','25/03/1969','3759711272','84026','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1638,'MARINEZ CEOLIN','33607451087','21/12/1961','1017098193','31887','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1639,'MARIO BRITO DO NASCIMENTO','47847484404','19/06/1964','1085166','48020','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1640,'MARIO CESAR COELHO CABRAL','39591883404','16/04/1964','724265303','18414','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1641,'MARIO JORGE DA COSTA LEMOS','12277770272','26/01/1961','498101','3352','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1642,'MARIO JORGE VIANA DE MELO','13415590259','01/12/1959','1650881942','47716','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1643,'MARISA PEREIRA CARVALHO','15865027867','16/11/1963','186730354','21970','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1644,'MARISA RAQUEL DA SILVA FIGUEREDO','20646020625','22/10/1956','65615890','36854','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1645,'MARISTELA MARTINS VARJAO','27798330259','18/10/1958','3432742','61662','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1646,'MARIVALDO RODRIGUES BATISTA','15021670263','26/09/1960','580162','3131','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1647,'MARLENE APARECIDA DA SILVA NAVES','05241732810','05/06/1964','10376723','9075','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1648,'MARLY DE SOUZA MEDEIROS','08448787234','08/04/1959','2811401358','1678','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1649,'MARNINE LIMA DE AGUIAR','07559470297','18/12/1958','504469302','884','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1650,'MARTA ROBERTA ALVES ROCHA','01646205596','19/01/1981','1119209064','31534','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1651,'MARTHA EMILIA SOARES DE MORAIS ANDRADE','99862662387','28/09/1983','1867266','32174','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1652,'MATHEUS FERNANDO HARTEN DE MOURA SOUZA','11398181471','25/04/1998','9837684','700240','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1653,'MATHEUS ZIDANE DALMAGRO SERAFINI','02845184093','06/07/1998','2112942228','702781','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1654,'MAURICIO EDUARDO NEVES','27571172896','07/12/1978','3290026886','156779','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1655,'MAURICIO PEREIRA','13769713800','25/01/1970','2209098200','707422','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1656,'MAURICIO PEREIRA PAU FERRO','79187315653','02/02/1973','6910399','36498','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1657,'MAURO RODRIGUES DOS SANTOS','21628009268','06/04/1965','628349048','62774','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1658,'MAURO SANTOS NOLASCO','50835459004','14/05/1970','1001945987','16403','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1659,'MAURO TEIXEIRA DANTAS','11517298334','24/11/1959','1115985','41270','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1660,'MAXIMILIANO LELES DOS SANTOS NETO','27484530263','12/03/1964','86651957','8524','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1661,'MAYCON PEREIRA DE OLIVEIRA','22882764871','22/10/1988','4100083368','706167','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1662,'MEIRE CORREIA DA SILVA FERRARI','77463285804','21/04/1952','98589313','48348','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1663,'MELCHIOR NAELSON DA SILVA','02776594429','12/01/1977','1943261','32352','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1664,'MEUDES CARVALHO DO NASCIMENTO','41985672200','13/06/1973','433130','23922','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1665,'MICHELE LUZA','97555797020','31/05/1979','2074882891','703745','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1666,'MICHELE PATRICIA DE SOUZA','37591680862','21/06/1989','5702051391','701858','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1667,'MICHELLE ZANESCO DE ANDRADE','30929319800','16/05/1981','585272384','707384','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1668,'MICHELLY FARAH DE OLIVEIRA ALBUQUERQUE','35373609838','27/06/1987','11031532','157058','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1669,'MIGUEL AMADOR DE MOURA NETO','23156392391','30/10/1959','76950','5495','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1670,'MILCIADES HEITOR DE ABREU PARDO','36071463220','30/01/1971','177939','43222','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1671,'MILZA COSTA BARRETO','38780143415','08/03/1964','2282116','26476','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1672,'MIQUEIAS ALVES DE SOUZA','50856600210','13/05/1969','12785571','9083','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1673,'MIRILETE OLIVEIRA DOS SANTOS','58538615220','13/01/1976','11739860','22080','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1674,'MIRZA CARLA NORMANDO PEREIRA','21518254268','23/03/1965','6338666','46531','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1675,'MOACIR FURTADO RODRIGUES','32207441091','01/05/1959','670287201','35785','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1676,'MONICA IMACULADA RIBEIRO','76524981634','24/12/1968','605904','43737','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1677,'MURILO CAMPOS BON','98892983253','30/07/1990','4506439418','156400','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1678,'MURILO FELICIANO DE LIMA SANTOS','45100429810','35059','6065772859','','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1679,'NADIA CARVALHO CASTILHO','41881087620','04/07/1964','3142459','36765','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1680,'NAGIB JORGE MELEM JUNIOR','14211394215','11/06/1962','2261679245','13382','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1681,'NAIR HELENA CASTRO ARRIEL','17342074268','22/03/1963','2698317','34150','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1682,'NARA ALICE MELO LIMA DE ARAUJO','89301161249','11/07/1987','421979','36811','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1683,'NARA REGINA OLIVEIRA CARDOSO','81399260510','04/06/1982','1248827','41041','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1684,'NARJARA LIZIA MARQUES MARTINS','05696708536','16/10/1990','540094572','149985','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1685,'NATALIA BORTOLETO ATHAYDE MACIEL','33337835848','26/12/1984','293501579','44393','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1686,'NATALIA MOURA DE VASCONCELOS','62006878387','25/02/1982','607226056','41637','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1687,'NATANAEL DOS SANTOS','43702535861','25/01/1996','537109523','704687','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1688,'NATASHA CAROLINE CRISTINA SANTANA DE AGUIAR','84261358204','12/10/1996','28502183','60887','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1689,'NAYARA MATOS FARINHAS','44124638850','22/08/1995','452326813','160261','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1690,'NAZARENO AMARAL DE SA','16145518200','05/01/1957','536063','7803','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1691,'NEDILSON VIEIRA PAZ','39783782304','27/12/1967','770548','6858','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1692,'NEIDE MEDEIROS GOMES LOPES','43210635404','15/05/1966','2883332','35750','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1693,'NEIVAN LIMA DE CARVALHO','58539565234','01/06/1977','148379','9610','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1694,'NELSON LOURENCO DA SILVA','12287750282','23/12/1958','4354044','19224','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1695,'NELSON SANTOS FILHO','55903932568','03/02/1971','347551579','705365','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1696,'NEUSA DOMINGOS','13768944832','08/02/1959','','26387','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1697,'NEUTEMIR DE SOUZA FEITOZA','18319890268','29/09/1963','84719','38270','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1698,'NEWTON DE LUCENA COSTA','19130716420','22/08/1959','283103','1937','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1699,'NEWTON FONSECA BARROSO','10172866391','30/05/1951','8,904E+12','81515','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1700,'NEWTON MARCELO NASCIMENTO DOS SANTOS','41510631291','22/02/1973','2144993','68683','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1701,'NILMA RIBEIRO DA SILVA','33925458808','14/05/1986','485026570','707457','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1702,'NILTON GABRIEL PAIVA GUIMARAES','60806770163','30/10/1988','4040601936','45004','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1703,'NILTON LULHIER FRANCO','54000971034','09/08/1967','3860537714','5142','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1704,'NIZAEL FRANCISLEI ROSA','00582505658','14/09/1978','9092904','49824','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1705,'NOEMI DO PRADO PEREIRA','05579495803','14/10/1963','161232929','27600','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1706,'ODALEA HEITOR DA SILVA','12155489234','28/03/1960','808995376','8788','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1707,'ODILON RENY RIBEIRO FERREIRA DA SILVA','20459041053','06/07/1951','59745','37290','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1708,'ORBELIO MOTA CAMPOS SILVA','66102391268','16/10/1978','13527380','35432','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1709,'ORLANDO VENANCIO SURITA','00576352268','18/05/1948','8082','24287','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1710,'ORLANE DA SILVA MAIA','26945894304','19/08/1962','508599','22152','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1711,'ORMAR FRANCISCO RODRIGUES CACAU','09589619215','15/09/1952','94888','25810','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1712,'OSIEL RIBEIRO DE SOUZA','32347648837','27/07/1985','433842039','149136','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1713,'OSMAR FERNANDO DA SILVA JUNIOR','32532391871','15/11/1985','3712449914','702900','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1714,'OSNI MARQUES DE SOUZA FILHO','39681909801','15/06/1998','499992155','701394','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1715,'OSVALDO FILHO GUERRA','81643470191','14/08/1974','3752571','46540','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1716,'OSVALDO LIMA DE ARRUDA JUNIOR','43859301802','12/02/1993','504562204','145807','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1717,'OZELIO IZIDORIO MESSIAS','22542540225','18/10/1966','59393','4367','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1718,'PABLO BUSATTO FIGUEIREDO','03327498350','25/05/1989','98002038480','38016','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1719,'PAIXAO ASSENCIO DE ARAUJO','25022318415','06/04/1953','1704965','35912','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1720,'PALOMA CLEMENTINO DA CRUZ LUBARINO','05904212470','16/03/1987','3659634946','73083','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1721,'PATRICIA APARECIDA FIRMINO E SILVA','26461694854','10/04/1978','1725782624','702170','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1722,'PATRICIA CARDOSO BEZERRA CABRAL','30010934391','15/04/1966','3944154158','43885','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1723,'PATRICIA DA COSTA','06979631799','03/09/1974','97775910','63070','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1724,'PATRICK NASCIMENTO GOMES','53054539253','05/11/1992','5327617067','158968','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1725,'PATRIK TADEU FERREIRA','34337127860','08/06/1984','3334098508','701548','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1726,'PAULA FERNANDA DA SILVA','30326210890','27/03/1983','5431990661','149705','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1727,'PAULA FRANCISCA APARECIDA DA SILVA BUENO','22250878811','25/12/1981','257424052','701475','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1728,'PAULO ANDRE RODRIGUES DA SILVA','28240871291','19/07/1968','','1325','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1729,'PAULO ANDRE SOUZA SANTOS','09330266410','29/01/1992','6237130731','708348','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1730,'PAULO APARECIDO TEIXEIRA DA SILVA','43683266104','26/08/1967','417295','13714','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1731,'PAULO APOLINARIO DA SILVA','10063498472','06/06/1948','784627','85359','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1732,'PAULO AUGUSTO VIANA BARROSO','69250618620','16/02/1968','2203596','9989','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1733,'PAULO DE TARSO FIRMINO','16168259449','17/06/1957','339860','38601','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1734,'PAULO EVANGELISTA DOS SANTOS','41967216487','15/10/1961','2399346','20796','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1735,'PAULO HUMBERTO MARCANTE','56509618915','17/06/1966','40332820','38679','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1736,'PAULO MOREIRA','18075118634','03/08/1950','','77763','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1737,'PAULO PEREIRA DA SILVA FILHO','28686896472','10/12/1960','1938256','39799','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1738,'PAULO PEREIRA DE LIMA','90032225172','28/04/1979','238414','29670','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1739,'PAULO PEREIRA DE SOUSA','22056696304','22/11/1961','2126096052','12084','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1740,'PAULO RENATO ORLANDI LASSO','04741289893','30/06/1964','4741289893','88234','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1741,'PAULO RICARDO BITTENCOURT MARQUES','40308936000','20/04/1966','7027446348','11673','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1742,'PAULO RICARDO LIMA BEZERRA','02361276593','14/04/1987','','701513','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1743,'PAULO RICARDO REIS FAGUNDES','43166270078','30/05/1960','1012877054','71730','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1744,'PAULO ROBERTO AGUILAR FARIAS','10008245606','02/05/1994','','160725','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1745,'PAULO ROBERTO BORGES TIMM','28486366020','30/08/1956','6008802339','13617','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1746,'PAULO ROBERTO MASCARI','34838440820','22/06/1985','','160300','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1747,'PAULO SARMANHO DA COSTA LIMA','06846424253','20/09/1957','2702558933','1295','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1748,'PAULO SERGIO MONTEIRO','27391140368','03/11/1963','834925805','4081','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1749,'PAULO SILVA NASCIMENTO','20923422234','23/10/1965','3738265579','922','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1750,'PEDRINA DO NASCIMENTO GOMES','10670840297','11/11/1953','29441','1686','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1751,'PEDRO ALEXANDRE NARDELO','19085895820','10/02/1974','2201895935','707481','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1752,'PEDRO BENTO DE MORAIS JUNIOR','24372897391','26/03/1963','1702267964','16730','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1753,'PEDRO HENRIQUE AZEVEDO SILVA','40378287826','26/02/1991','4736484017','157643','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1754,'PEDRO NONATO DA COSTA','18039138272','10/11/1962','7772319','7838','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1755,'PEDRO PAULO CANDIDO DA FONSECA','64280217653','24/12/1971','','39438','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1756,'PEDRO PAULO DA SILVA COLARES','58251707234','12/10/1970','3212218923','8680','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1757,'PEDRO PEREIRA DA SILVA','05231370282','02/06/1956','74888','44911','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1758,'PEDRO RAIMUNDO RODRIGUES DE ARAUJO','21632944200','17/11/1965','2653306946','8281','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1759,'PEDRO ROMILDO DA COSTA','24321117453','29/12/1960','570687688','46159','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1760,'PHILIPPE JOSE SILVA DE SOUZA','08166155435','24/03/1990','6096025934','706485','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1761,'PRISCILA CRISTINA FERNANDES','14696551792','16/07/1988','631518472','160741','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1762,'PRISCILA MIRIAM APARECIDA BATISTA','09622382606','30/01/1991','5135231001','702412','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1763,'PRISCILLA DE FRANCA LOPES','38560932810','01/03/1990','461962123','700622','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1764,'QFRANCE DE LIRA BRITO','63133113453','01/01/1964','1418170','1112','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1765,'RAEMA THALYTA GOMES DA SILVA','09806675428','13/08/1990','3564211','156302','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1766,'RAFAEL AIRTON CAVALCANTE','39425219893','31/05/1993','5501586607','708160','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1767,'RAFAEL ALVES DA ROCHA','00388649755','08/06/1977','45385226','48399','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1768,'RAFAEL HENRIQUE ARAUJO DOURADO','35988219802','21/05/1993','5342733610','704539','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1769,'RAFAEL MINGOTI','22424619824','31/05/1982','29426098','46167','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1770,'RAFAEL ROSENDO','03186079802','20/06/1961','14700615','37095','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1771,'RAFAELA GHISI DA SILVA','00803133960','28/11/1983','2840723594','31569','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1772,'RAFFAEL LEONARDO VALADAO','07547046614','13/05/1986','248019612','158569','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1773,'RAIMUNDA P DE ASSIS DRESSLER','67913857668','04/09/1968','4441514','116912','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1774,'RAIMUNDO ALBERTO CARVALHO NASCIMENTO','23919426215','24/04/1962','5417937','31542','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1775,'RAIMUNDO ARICAIA DE ANDRADE','18275460263','07/07/1962','367462862','41300','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1776,'RAIMUNDO BEZERRA DE ARAUJO NETO','09166084334','10/12/1957','799101','24058','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1777,'RAIMUNDO EFIGENIO DA SILVA FILHO','61664561315','15/05/1963','792040','3743','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1778,'RAIMUNDO FERREIRA DE OLIVEIRA','02616395363','27/05/1964','91004012066','703141','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1779,'RAIMUNDO NONATO MACEDO SOBRINHO','17420512272','07/07/1963','6542212','1627','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1780,'RAIMUNDO NONATO MARTINS DE SOUZA','28933400320','12/09/1966','3933980045','70629','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1781,'RAIMUNDO NONATO RIBEIRO DOS SANTOS','27104154884','30/10/1965','525662613','702838','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1782,'RAIMUNDO NONATO TEIXEIRA MOURA','21023093200','20/06/1966','173920','19674','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1783,'RAIMUNDO PINHEIRO LOPES FILHO','10911685200','04/02/1960','1425745','8478','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1784,'RAIMUNDO RODRIGUES DA ROCHA FILHO','17508266315','26/12/1958','2,00201E+12','22748','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1785,'RAIMUNDO SENA DA SILVA','39853640368','18/11/1957','93094685','13129','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1786,'RAMAYANA MENEZES BRAGA','30658187791','19/08/1952','10096','62260','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1787,'RAQUEL APARECIDA DA SILVA NOGUEIRA','28402822835','17/01/1980','335438210','707961','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1788,'RAQUEL VIEIRA','40724122877','22/01/1991','','97640','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1789,'RAUL CELSO GREHS','15771580082','11/05/1952','3012567388','71820','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1790,'RAYSSA GUIMARAES RIBEIRO CONCEICAO','36271186858','01/01/1991','5951018258','160598','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1791,'REGINA CELIA NOBRE BENICIO','35780649391','08/03/1964','2,00101E+12','41335','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1792,'REGINA LUCIA REIS VASCONCELOS COSTA CAIRO','20290993687','21/01/1953','704928','37036','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1793,'REGINALDO RIBEIRO SOBRINHO','34018794487','03/09/1958','1999350','11053','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1794,'REINALDO DE PAULA FERREIRA','28138546620','26/11/1958','568060489','10871','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1795,'REINALDO NOVAIS PRATES','00415277558','08/11/1980','527821172','707546','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1796,'RENAN ANDRADE DE MOURA','47386785828','12/05/1999','6934955347','149233','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1797,'RENATA BELTRAO TEIXEIRA YOMURA','64317900300','18/02/1981','97002332909','38440','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1798,'RENATA DE ARRUDA','45639979860','10/07/1995','499117128','700584','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1799,'RENATA KELLY COSTA SOUZA','06376636675','23/06/1984','3007861676','44474','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1800,'RENATA PEDROSA DA SILVA','07045448490','25/04/1989','4220954846','156523','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1801,'RENATA REIS DA SILVA','03435456914','12/04/1981','87477010','35297','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1802,'RENATO APARECIDO DOS SANTOS','36109624888','25/05/1986','450737226','708674','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1803,'RENATO BARBOSA SANTOS','01442391596','30/04/1980','3972565','704008','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1804,'RENATO FRANCISCO DA SILVA','36137669734','11/03/1952','2233277070','11819','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1805,'RENATO FRANCISCO XAVIER','00070357641','18/02/1977','699120','33294','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1806,'RENATO MONARI DOS SANTOS TENORIO DE BRITO','07405672418','11/12/1988','7847399','36803','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1807,'RENATO TELES DO NASCIMENTO','18308368204','08/09/1958','96299','26824','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1808,'RENE DE AMORIM CABRAL NETO','03062932422','09/05/1979','434196005','159719','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1809,'RENILDO AILTON GOMES CARDOSO','33048142487','07/08/1958','2275428','26034','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1810,'','','','','','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1811,'RHUAN AMORIM DE LIMA','10272079790','26/04/1985','2927358928','47449','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1812,'RICARDO DE SOUZA BORGES','22430814234','19/09/1963','788363','1899','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1813,'RICARDO FELIPE DE SOUSA NETO','06977806435','16/01/1989','6285088430','701351','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1814,'RICARDO HENRIQUE DOS SANTOS','19757699888','13/08/1974','258177342','705357','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1815,'RICARDO MEDEIROS DOS SANTOS JUNIOR','37194403897','18/10/1988','4084064052','156353','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1816,'RICARDO REINALDO DA SILVA','66289092200','07/03/1979','614668','62626','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1817,'RICARDO SANTOS COSTA','28882806200','19/06/1967','2743569397','2143','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1818,'RICKSON GRACE DE OLIVEIRA','02958413381','10/05/1985','2,00201E+12','700088','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1819,'RITA DE CASSIA COSTA CID','23350806368','04/02/1964','97002469572','43761','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1820,'RITA DE CASSIA POMPEU DE SOUSA','24584878234','31/08/1964','194027','40150','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1821,'RITA DE CASSIA ZUCHETTI TUNUSSI','15924202810','03/12/1972','1299689227','159298','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1822,'RITA LOPES DE ABREU','20647077604','28/10/1952','664467','14389','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1823,'ROBERIO ALEIXO ANSELMO NOBRE','07067542200','17/07/1958','331610','42358','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1824,'ROBERTA HELEN CIRINO SANTOS','36955896806','16/04/1987','469183822','157112','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1825,'ROBERTA MARTINS AMORIM','87856069368','17/12/1980','1655998','32263','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1826,'ROBERTO APARECIDO ALVES PEREIRA','82211132987','01/03/1972','57965673','8567','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1827,'ROBERTO CATARINO DOS SANTOS','81961731800','09/08/1954','9182213','16101','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1828,'ROBERTO CESAR DE OLIVEIRA SOUSA','29453477842','03/08/1981','404958370','702862','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1829,'ROBERTO DE JESUS DAS NEVES','44118090600','21/04/1962','','47090','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1830,'ROBERTO HENRIQUE PAULINO','29504227805','05/08/1982','3451343406','706922','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1831,'ROBERTO MENDES FONSECA','54133505620','12/07/1963','3565352960','39870','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1832,'ROBERTO TORRES PERES','11903252253','17/09/1953','103642','20699','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1833,'ROBERVAL MONTEIRO BEZERRA DE LIMA','11946024287','01/03/1960','91429497','22489','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1834,'ROBSON BENEDITO DA SILVA','08687297440','10/10/1988','7195602','156876','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1835,'ROBSON ESTEVES DA SILVA','30441248837','23/04/1978','92929700','703877','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1836,'ROBSON FERNANDES NOGUEIRA','25091205810','24/04/1979','1139425775','701980','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1837,'ROCHELLE MARTINS ALVORCEM','33473510025','25/10/1960','2008579191','34991','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1838,'RODOLFO SANTOS COSTA','29338662268','30/05/1968','1157778900','38148','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1839,'RODRIGO DA SILVA','11211074862','24/02/1978','3876526142','706213','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1840,'RODRIGO PEREIRA REIS','01234002604','20/10/1982','11118122','43788','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1841,'RODRIGO SILVA LIBORIO','93714793534','18/07/1979','1330562238','35670','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1842,'ROGER LUIZ DOS SANTOS','33196707865','17/02/1986','3502588200','701416','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1843,'ROGERIO CORREA DO NASCIMENTO','94291225172','04/03/1982','1572479305','139050','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1844,'ROGERIO DOS SANTOS AFFONSO','30193664020','07/12/1962','6013967499','40185','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1845,'ROGERIO GROTTI','31576834204','04/03/1972','354217','27782','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1846,'ROGERIO SEBASTIAO CORREA DA COSTA','20735316104','04/10/1958','3160790459','14320','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1847,'ROMARIO DA COSTA MELLO','01895258600','29/06/1993','650114723','149551','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1848,'ROMULO SOLER BRITO DA SILVA','22933330865','04/06/1987','3997954261','706221','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1849,'RONALD RUFINO NEVES LEAL','42978772875','09/08/1994','445708827','700169','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1850,'RONALDO MAIA BARBOSA JUNIOR','83470441200','05/04/1986','3423450001','28967','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1851,'RONALDO QUEIROZ DE OLIVEIRA','04568133220','26/02/1945','31720','6114','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1852,'RONILSON DA COSTA FARIA','03160443264','05/01/1996','1319331','700339','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1853,'ROSA HELENA GOMES DA SILVA','04589513234','08/07/1957','51402','62170','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1854,'ROSA MARIA MENDES FREIRE','10390308404','08/11/1952','468691','13730','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1855,'ROSANGELA COSTA ALVES','32218931087','29/07/1960','26991934','72044','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1856,'ROSANGELA DOS REIS GUIMARAES','24031186215','06/01/1964','59515815','23086','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1857,'ROSANGELA MARIA DA GAMA','62037161468','24432','3412471','','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1858,'ROSEMARY VILACA','77469810625','15/05/1964','','41556','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1859,'ROSILEILIA GOMES DE OLIVEIRA','36164836204','30/11/1974','2133586907','36897','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1860,'ROSILENE SANTOS DE RESENDE CARVALHO','18374450363','24/07/1961','402592','47651','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1861,'ROSIMAR FERNANDES DE SOUZA','18714420287','11/12/1964','6165915','49921','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1862,'ROSINETE BRAZ DA SILVA','50029185491','23/07/1942','1871216','160881','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1863,'ROSIVALDA DUARTE DE CASTRO','20000820253','18/08/1968','62736','1465','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1864,'RUBEM GONCALVES','09531068704','31/12/1942','2474056906','85740','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1865,'RUBENS BERNARDES FILHO','09276500880','20/05/1962','11583979','46302','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1866,'RUY LIMA PEREIRA','12256161234','09/06/1962','83509','4219','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1867,'SABRINA LIVIA TAVARES BRITO','07356451409','16/03/1987','3039702','35319','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1868,'SALY FERNANDES JUNIOR','08575541404','17/02/1953','61486','20559','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1869,'SAMUEL NASARENO ROSA','37410041897','10/03/1988','5188844990','160326','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1870,'SAMUEL PAVANIN TURCI','44849693865','17/10/1994','407805059','703451','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1871,'SAMUEL RODRIGUES FERNANDES','55965938772','03/08/1959','281537','31909','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1872,'SANDRA MARIA LIMA','18519237134','','','','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1873,'SANDRA PATUSSI BRAMMER','57362092091','13/09/1966','1029552716','47015','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1874,'SANDRO FREITAS NUNES','12444210816','25/08/1969','18723882','38490','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1875,'SANTO DENOIR DA COSTA','32248180004','05/05/1960','80267995554','17515','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1876,'SARA ELLIONAI PEREIRA AMARAL SILVA','34549001828','06/07/1984','438039476','156698','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1877,'SAULO LISBOA','05742500696','20/03/1983','12015269','43028','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1878,'SEBASTIANA RODRIGUES DE LIMA','20187939268','14/10/1963','5292980','24180','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1879,'SEBASTIAO DE SALES LOPES','07578997220','02/02/1958','3899373','25135','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1880,'SEBASTIAO MARTINHO DE BRITO','15140210215','20/01/1957','24011274','3158','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1881,'SEBASTIAO PEREIRA','02767074272','28/08/1955','2193965','5380','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1882,'SEBASTIAO RODRIGUES DE OLIVEIRA','33998116249','23/02/1970','195574','18651','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1883,'SERGIO COBEL DA SILVA','67440223420','28/11/1968','1291510','45993','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1884,'SERGIO DIAS DE CAMARGO','06328507879','14/03/1964','3224044799','707872','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1885,'SERGIO ELMAR BENDER','59846747004','18/04/1969','9034396011','29653','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1886,'SERGIO ILMAR VERGARA DOS SANTOS','24974498053','26/11/1954','1009931526','14664','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1887,'SERGIO LUIS GONCALVES AQUINO','33705895087','19/09/1962','1017354034','13439','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1888,'SERGIO NOVITA ESTEVES','92704492891','26/01/1952','5262745','46574','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1889,'SERGIO RENAN SILVA ALVES','30201470004','13/09/1958','8000731326','71854','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1890,'SERGIO RONALDO FURTADO','24401064372','25/07/1965','66310983','41653','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1891,'SHEILA LIRA OLINTO','05816811428','22/12/1986','2655973','29319','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1892,'SHEILA NONATA DA PAZ RIBEIRO','18039456215','11/01/1964','361206050','102466','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1893,'SILMAR SOARES DE BRITO','34011447234','30/09/1970','197866','44920','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1894,'SILVESTRE GOMES DA SILVA','22638822353','31/12/1963','520605','4138','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1895,'SILVEXT DE SOUZA SILVA','39346372800','25/01/1991','480731056','705896','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1896,'SILVIO CRESTANA','93236328800','01/11/1954','68699566','27405','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1897,'SILVIO LEVY FRANCO ARAUJO','61113964200','29/04/1975','2422115','28509','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1898,'SILVIO TOGNETE ALVES','29438215867','12/03/1981','3964134545','708038','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1899,'SIMONE ALVES DE SOUZA','60544856287','07/07/1975','5577641695','24228','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1900,'SIMONE ERY GROSSKOPF','61967610991','04/06/1969','42415430','41017','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1901,'SIMONE MARANHAO','15727667860','07/03/1973','222421344','701955','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1902,'SINVAL RESENDE LOPES','71679006649','11/06/1966','9004207','65145','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1903,'SIRLEY FREIRE NOGUEIRA','89495683300','19/05/1982','2095790291','39977','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1904,'SOELY MELLER TEIXEIRA SOBREIRA','11556854234','07/07/1961','148734','62162','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1905,'SOLANGE COELHO SILVA AMARAL','27587985816','23/10/1978','307821535','158631','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1906,'SOLANGE MARIA DE OLIVEIRA CHAVES MOURA','22603000225','22/04/1970','2023170025','5851','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1907,'SOLONIO MARIO VIEIRA DA SILVA','24015156315','18/03/1962','421470','17175','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1908,'SONIA BORGES DE ALENCAR','08284648806','08/04/1954','1209615270','4588','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1909,'SONIA DAS NEVES PEREIRA','13196121801','06/12/1971','5625267499','707775','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1910,'SONIA SOLEDAD GODOY ROZAS','03723628850','01/09/1954','329759024','30414','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1911,'SORAIA CORREIA DE OLIVEIRA','29930621822','07/01/1979','','700940','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1912,'STANLEY ROBSON DE MEDEIROS OLIVEIRA','50458485420','14/04/1967','4084750772','46370','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1913,'SUELY ALVES DE OLIVEIRA SAMPAIO','26615622300','17/06/1965','94002152418','43877','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1914,'SUZANA SIBELE DOGA DA SILVA','05956461900','28/02/1980','8589447','157066','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1915,'SUZILEI FRANCISCA DE ALMEIDA GOMES CARNEIRO','13761302894','23/10/1969','20777307','46418','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1916,'TAIGUARA DOS SANTOS PEREIRA','00615930107','11/02/1986','20942389','998346','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1917,'TAIRON VINICIUS DOS SANTOS MARTINS','69517070063','24/02/1972','10558733915','27715','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1918,'TAISSA SOMENZARI LIMA','10895579650','15/12/1991','','156264','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1919,'TALITA CELICO DA CONCEICAO','33079335821','17/12/1987','3973266720','706736','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1920,'TAMIRES FERREIRA DO NASCIMENTO','37868781882','01/12/1989','5195885491','149284','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1921,'TATIANA MARIA DA SILVA CAVALCANTE','01037532309','09/10/1985','2E+12','157031','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1922,'TAUAN ALBUQUERQUE RODRIGUES DA SILVA','37072165860','10/07/1989','5237367859','703680','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1923,'TAUANE CRISTINA DA SILVA','38212513874','06/02/1990','466401103','701190','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1924,'TELMA MEDEIROS ALENCAR','73895881368','04/02/1976','94008018217','79332','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1925,'TELMO LUIZ DE ARAUJO','42384281020','07/09/1963','1981458611','9270','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1926,'TEODORO MANCUELO DE SOUZA','31311717153','07/01/1959','53126','18210','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1927,'TERCIO WESLEY DE FREITAS COBEL','70047720476','19/11/1998','3973137','63029','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1928,'TERESINHA COSTA SILVEIRA DE ALBUQUERQUE','20713819049','13/01/1955','324367880','22705','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1929,'TEREZINHA PINTO DE ARRUDA','10298258153','03/10/1957','258342936','14850','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1930,'THAIS DA COSTA CUNHA','01828218200','12/05/1994','23739320','156477','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1931,'THAIS DE OLIVEIRA GEREMIAS','06139714770','15/02/1993','3938378','706191','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1932,'THALES CASSIEL WALTER','03365092005','15/02/1994','5116798553','701963','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1933,'THALITA CAROLINE DA SILVA SIQUEIRA','52878783204','12/11/1986','204215','62014','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1934,'THIAGO BRUNO DE MEDEIROS SILVA','05350744410','05/02/1985','6326859448','704768','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1935,'THIAGO FRANCISCO DA SILVA','32052482873','12/02/1983','3484012614','703826','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1936,'THIAGO LUIZ JULIANI','34717649842','06/09/1986','','708089','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1937,'TIAGO ALEXANDRE DOS SANTOS ANTUNES','35066702806','02/08/1986','4082054145','701041','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1938,'TIAGO DE OLIVEIRA','45345801851','29/09/1996','498498098','701572','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1939,'TIAGO FERNANDO GASPARETTO PEREIRA MACIEL','32753077894','25/07/1984','423991528','702579','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1940,'TIAGO LUIS DA SILVA','09753237413','28/01/1990','5990752170','160369','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1941,'TIAGO NASCIMENTO DA SILVA','05609063400','02/09/1983','4083597242','159808','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1942,'TIEGO DOS SANTOS COSTA','09995893770','12/04/1982','3993310060','30589','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1943,'ULISSES ROGERIO MENDES','28323451826','04/10/1980','836661383','104019','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1944,'URBANO GONCALVES TERCO','20215096215','07/04/1964','7440405','23191','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1945,'URSULA MARIA BARROS DE ARAUJO','35263261349','28/05/1964','751614','3514','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1946,'VAGNER LAZZARI','98818490044','13/10/1981','940594760','707325','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1947,'VALBERT JOSMAN DA SILVA','02476426571','07/06/1985','6302971394','157414','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1948,'VALDEMAR CARVALHO DA SILVA','21057907200','14/07/1966','223195','1023','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1949,'VALDEMAR RODRIGUES DE ANDRADE','40268632472','10/01/1962','2986122','38466','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1950,'VALDEMIR ANDRADE DA SILVA','06927979476','24/08/1986','627886565','707783','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1951,'VALDEMIR DE SOUZA E SILVA','09135286253','25/08/1955','102855','8508','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1952,'VALDEVINO BATISTA','14933233268','19/09/1954','159102','15024','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1953,'VALERIA SALDANHA BEZERRA','79164471772','26/08/1962','57471849','38130','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1954,'VALERIANO MOREIRA DE CARVALHO','45608180615','29/01/1963','3080866','32417','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1955,'VALMIR ALVES DE SOUZA','39422011353','06/01/1950','914249','8443','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1956,'VALMIR DO SOCORRO ALVES COSTA','20946589291','21/12/1964','20073758315','44814','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1957,'VALTERLEI JOSE DE MOURA','65764030200','31/07/1978','300921','45926','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1958,'VANDERLEI DOMINGUES FAGUNDES','00001370065','31/05/1976','2069751127','81671','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1959,'VANDERLUCIA GOMES MARINHO','87457687220','02/08/1985','12731723','39985','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1960,'VANDESNEI DA SILVA ARAUJO','32119020230','26/03/1969','170532276','44431','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1961,'VANDO ALVES DOS SANTOS','30962858889','12/07/1982','421138257','157481','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1962,'VANESSA MARQUES DE LIMA','31937102882','05/11/1984','4684241003','703605','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1963,'VANIA ALENCAR CORDEIRO DE FARIAS','21127786334','27/10/1962','2686953835','80985','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1964,'VANIA PALHARES FERNANDINO FONSECA','21932980687','16/11/1956','862386','43923','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1965,'VANICELIA FABIANA GURJON GOMES','27961379886','12/10/1979','2631323616','705748','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1966,'VERA LUCIA ALVARENGA ROSENDO','48548740078','11/08/1962','241582','3018','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1967,'VERA LUCIA MARIA DOS SANTOS','18277268300','01/04/1957','1232548431','14516','8',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1968,'VICENTE DE PAULA DINIZ BARBOSA','20648502600','20/11/1955','831391','43702','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1969,'VICENTE GABRIEL NETO','12082009840','04/10/1970','228982030','86240','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1970,'VICENTE GIANLUPPI','17732719034','18/12/1945','34003','38954','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1971,'VICTOR FERNANDDO DA SILVA RUFINO','94669465287','04/07/2000','22549765','158780','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1972,'VICTOR HENRIQUE GONCALVES','43926547880','06/02/1995','5845868353','706620','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1973,'VICTOR IZZI FAZZANI','42694913881','02/08/1998','675534858','702803','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1974,'VICTOR LEONARD NASCIMENTO DE SOUZA','58915834291','13/05/1976','1408753150','73911','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1975,'VICTORIA PORTO MONKS','01500432016','25/05/1987','4088252781','44156','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1976,'VILMAR FERREIRA MARTINS','52046168615','26/01/1964','2135530','68063','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1977,'VILSON NUNES GARCIA','44073950010','15/08/1962','2657551067','14206','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1978,'VINICIUS COSMO DA SILVA','02173588451','26/03/1978','20447512','701750','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1979,'VIVIAN CHIES','30258008873','05/11/1982','2262288690','41130','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1980,'VIVIANE DE CASSIA GONCALVES','03406143822','28/11/1962','153602326','39772','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1981,'VIVIANE FALBO GODINHO','24755477824','25/08/1972','243261032','159239','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1982,'VIVIANE PEREIRA DE SOUZA','00884368297','03/07/1987','837877','704695','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1983,'WAGNER DA FONSECA CARIA','31085543870','13/01/1983','2201687756','701734','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1984,'WAGNER TOYAMA CASSIMIRO','29509344800','21/05/1981','278355286','83054','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1985,'WALDIR PEREIRA DE MATOS','07457979204','01/05/1960','35301','5487','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1986,'WALDIVINO PEREIRA DE OLIVEIRA','44714262220','12/11/1973','135945','7706','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1987,'WALDOMIRO BARIONI JUNIOR','04388469823','17/09/1961','13988247','46817','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1988,'WALLA RAFAEL GONCALVES MARCIANO','43857600802','31/10/1994','401650686','160750','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1989,'WALNEY FERREIRA PAES','27291251249','06/08/1967','773639','5002','2',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1990,'WALTEMILTON VIEIRA CARTAXO','20304811491','15/06/1959','495970','34835','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1991,'WANDERLEY CLARETE LANZA MEIRELLES','54140625600','04/01/1968','4283291031','36625','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1992,'WANDICK DA CRUZ PEREIRA','10021545618','01/07/1990','','158232','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1993,'WASHINGTON LUIZ DE BARROS MELO','10179755404','14/02/1956','1647061305','46329','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1994,'WELBER FONSECA BATISTA','18657259869','12/09/1973','2019514769','701645','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1995,'WELINGTON RICHTER DE CALDAS SIMOES','26507845809','07/07/1977','4790526083','704750','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1996,'WELITON PILONI DALLAPICOLA','95429468215','16/02/1987','4721483564','703281','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1997,'WELITON TIMOTEO DOS SANTOS','42553676808','31/05/1996','7058099060','149322','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1998,'WELLINGTON COSTA RODRIGUES DO O','36728241434','05/11/1961','2200615782','1945','10',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(1999,'WELLINGTON ROBERTO SAVEGNAGO','41210431890','21/04/1995','6057052008','159700','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2000,'WENDELL MARCOS WALDEMAR','37602154835','09/08/1989','458889234','706868','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2001,'WESLEI DA SILVA PEREIRA','33470518823','16/11/1989','','700401','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2002,'WESLEY BORGES FERREIRA','41825520836','09/05/1992','482551896','160563','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2003,'WESLEY CARLOS TENORIO','12216242454','02/06/1996','9504747','159158','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2004,'WESLEY FERREIRA DA SILVA','46399042828','09/03/1996','6466748554','704610','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2005,'WILIAN DE SOUZA RODRIGUES','52080749668','20/05/1965','','49000','5',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2006,'WILLIAM APARECIDO BRASSOLATI','15199788809','09/04/1977','245024177','702510','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2007,'WILLIAN APARECIDO FIGUEIRA DOS SANTOS','44102541896','24/05/1993','495857634','703508','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2008,'WILLIAN HENRIQUE PAVANELI','33624146807','17/11/1984','453044304','46906','11',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2009,'WILLIAN VIEIRA DE SOUZA','00910239207','12/05/1992','489267','154245','3',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2010,'WILMA INES DE FRANCA ARAUJO','02638266272','21/04/1953','22577','14940','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2011,'WILMAR AFONSO ALVES','10048286168','16/04/1955','95002208586','41505','4',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2012,'WILSON DOS SANTOS JUNIOR','06196869876','23568','154241076','','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2013,'WILSON JUNIOR VIEIRA DE SOUSA','41761951858','03/10/1994','439392858','704563','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2014,'WILSON TAVEIRA ROCHA','04625536472','31/03/1948','191598','34541','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2015,'WIRAM TADEU DOS SANTOS BARBOSA','45073429885','02/01/1998','7167918682','702668','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2016,'YURI DE OLIVEIRA LOPES','40165700858','03/07/1998','7163031921','159352','12',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2017,'ZEDEQUIAS CARDOSO DE OLIVEIRA','11513446215','18/07/1953','170716','8630','9',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2018,'ZENAIDA KOURI ALBUQUERQUE','09602224215','07/08/1956','88113','38334','1',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2019,'MARILIA CUNHA RODRIGUES','04272584138','30/08/1993','3023814','95834','0',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2020,'JOSE DEUSEMAR ALVES VARJãO','38600463572','03/05/1965','0903104385','9709','7',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2021,'ARNALDO ROCHA DE ALENCAR','21969817453','05/06/1960','1422693872','28037','6',1);
insert  into `tb_login`(`id`,`nome`,`cpf`,`valida1`,`valida2`,`valida3`,`unidade`,`ativo`) values 
(2022,'LUIZ GONZAGA CHITARRA','62280295768','13/12/1960','255991460','35157','6',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
