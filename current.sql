-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `textBoard`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `hitCount` int(10) unsigned NOT NULL,
  `likesCount` int(10) unsigned NOT NULL,
  `commentsCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2021-01-14 09:03:55','2021-01-22 13:43:00','자바) Switch 구문','# SWITCH\r\n```java\r\nswitch (변수명) {\r\n          case 조건1:\r\n          실행코드1;\r\n\r\n          case 조건2:\r\n          실행코드2;\r\n\r\n          default:\r\n          실행코드3;\r\n}\r\n```\r\n\r\n변수가 \r\n조건1에 참이라면 실행코드1부터 실행코드3까지 순차적으로 실행\r\n조건2에 참이라면 실행코드2부터 실행코드3까지 순차적으로 실행\r\n조건 1과 조건2에 모두 맞지 않으면 실행코드3만 실행\r\n\r\n\r\n조건에 맞는 실행코드만 실행하고 싶다면 break; 를 넣어준다.\r\n# 예시\r\n```java\r\nint value = 1;\r\n\r\nswitch (value) {\r\n          case 1 :\r\n          System.out.println(\"1\");\r\n          break;\r\n\r\n          case 2 :\r\n          System.out.println(\"2\");\r\n          break;\r\n\r\n          case 3 :\r\n          System.out.println(\"3\");\r\n          break;\r\n\r\n         default :\r\n         System.out.println(\"그 외의 숫자\");\r\n}\r\n```',1,2,6,1,1),(2,'2021-01-14 09:04:38','2021-01-22 13:43:00','자바) 배열 정렬하는 식','```java\r\nint[] arr = new int[N];\r\n\r\n  for (int i = 0 ; i < arr.length ; i++) {\r\n    for (int j = 0 ; j < arr.length-i-1 ; j++) {\r\n      if(arr[j] < arr[j+1]){\r\n          int temp = arr[j+1];\r\n          arr[j+1] = arr[j];\r\n          arr[j] = temp;\r\n      }  \r\n    }\r\n  }\r\n```\r\n\r\n배열의 앞 뒤 값을  비교해서 작은 값을 뒤로 보내고, 다시 앞 뒤로 비교한다.\r\n이 과정을 반복해서 제일 작은 값은 마지막 위치로 가게 되고 제일 마지막 값은 이미 제일 작은 값이므로 또다시 비교할 필요가 없다.\r\n이 과정을 다시 반복하면 배열은 내림차순으로 정렬된다.',1,2,5,0,0),(3,'2021-01-14 09:05:35','2021-01-22 13:43:00','MySQL) 문자열 합치기 CONCAT','# CONCAT\r\n```MySql\r\nCONCAT(\'문\',\'자\',\'열\')\r\n```\r\n-> \'문자열\'',1,2,5,0,0),(4,'2021-01-14 09:06:30','2021-01-22 13:43:01','MySQL) INNER JOIN','# INNER JOIN\r\n```mysql\r\nSELECT * FROM 테이블명1\r\nINNER JOIN 테이블명2\r\nON 테이블명1.컬럼명 = 테이블명2.컬럼명;\r\n```\r\n테이블명1.컬럼과 테이블명2.컬럼의 값이 같은 것들만 합쳐져 나온다.',1,2,2,0,0),(5,'2021-01-14 09:07:12','2021-01-22 13:43:01','자바) 폴더와 하위파일 삭제하는 메소드','# 폴더와 하위파일 삭제하는 메소드\r\n```java\r\npublic static void deleteDir(String filePath) { \r\n\r\n          File deleteFolder = new File(filePath); \r\n\r\n               if(deleteFolder.exists()) { \r\n                   File[] deleteFolderList = deleteFolder.listFiles();\r\n                           for(int i = 0 ; i < deleteFolderList.length; i++) {\r\n                                   if(deleteFolderList[i].isFile()) { \r\n                                        deleteFolderList[i].delete();\r\n                                    } else {\r\n                                     deleteDir(deleteFolderList[i].getPath()); \r\n                                    } \r\n                                    deleteFolderList[i].delete();\r\n                               } deleteFolder.delete(); \r\n                       } \r\n              }\r\n```',1,2,4,0,0),(6,'2021-01-14 09:07:48','2021-01-22 13:43:01','HTML,CSS) box-sizing 속성','content-box 는 기본으로 적용되는 키워드.\r\n\r\nwidth속성과 height속성이 글자가 들어가는 영역의 크기를 지정하게 만든다.\r\n\r\n(width:100px , height:100px 인 영역에 border,margin,padding등의 요소가 추가되어도 width와 height는 100px로 고정)\r\n\r\n(따라서 태그의 전체 영역은 width,height의 크기에서 border,margin,padding만큼 커지게 된다.)\r\n\r\n \r\n\r\nborder-box 는 width속성과 height속성이 테두리를 포함한 영역의 크기를 지정하게 만든다.\r\n\r\n(width:100px , height:100px 인 영역에 border,margin,padding등의 요소가 추가되면 border와 padding의 크기만큼 width와 height가 줄어든다. margin은 영역의 바깥에 여백을 주는것이기 때문에 상관이 없다.)\r\n',1,2,2,0,0),(7,'2021-01-14 09:08:31','2021-01-22 13:43:01','JAVASCRIPT) replace를 replaceAll처럼 사용하기','자바스크립트에는 replaceAll 이 없다.\r\nreplaceAll처럼 쓰려면 정규식표현을 사용.\r\n```javascript\r\nstring.replace(\"#\" , \"\"); \r\nstring.replace9(/#/gi , \"\");\r\n```\r\n\r\nREPLACE 함수에서와 같이 사용하되, 따옴표를 / 슬래시로 대체하고, 뒤에 gi 를 붙이면 replaceAll() 과 같은 기능을 한다.\r\n\r\n* g : 발생할 모든 패턴에 대한 전역 검색\r\n\r\n* i : 대/소문자 구분 안함\r\n\r\n* m : 여러 줄 검색',1,2,3,0,0),(8,'2021-01-14 09:14:34','2021-01-22 13:43:02','공지사항입니다. 😀','앞으로 풀스택 개발 관련 글이 올라옵니다.\r\n😀😀',1,1,1,0,0),(9,'2021-01-14 09:15:06','2021-01-22 13:43:02','게시판 이용 수칙','각 게시판에 맞는 글을 작성해 주세요.',1,1,3,0,0),(10,'2021-01-14 09:15:37','2021-01-22 13:43:02','Vue) Array.prototype.map()','map() 메소드는 배열 내의 모든 요소 각각에 대하여 주어진 함수를 호출한 결과를 모아 새로운 배열을 반환합니다.\r\n\r\n```javascript\r\narray.map(function(row,index){ \r\n  return row * 2;\r\n});\r\n// row 는 처리할 요소 , index 는 처리할 현재 요소의 인덱스\r\n\r\n// map() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.map((row,index) = > {\r\n   return row * 2;\r\n});\r\n```',1,2,3,0,0),(11,'2021-01-14 09:16:11','2021-01-22 13:43:02','Vue) Array.prototype.filter()','FILTER() 메소드는 주어진 함수의 테스트를 통과하는 모든 요소를 모아 새로운 배열로 반환합니다.\r\n\r\n```javascript\r\narray.filter(function(row,index) {\r\n  return row > 10;\r\n});\r\n// row 는 처리할 요소, index 는 현재 처리할 요소의 인덱스\r\n\r\n// filter() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.filter((row,index) => {\r\n  return row > 10;\r\n});\r\n```',1,2,4,0,0),(12,'2021-01-14 09:16:45','2021-01-22 13:43:03','Vue) Array.prototype.some()','SOME() 메서드는 배열 안의 어떤 요소라도 주어진 판별 함수를 통과하는지 테스트합니다.\r\n```javascript\r\narray.some(function(row, i) {\r\n  return row == 15;\r\n});\r\n// row 는 처리할 요소, index 는 현재 처리할 요소의 인덱스\r\n\r\n// some() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.some((row,index) => {\r\n  return row > 10;\r\n});\r\n```',1,2,2,0,0),(13,'2021-01-14 09:17:17','2021-01-22 13:43:03','Vue) Array.prototype.forEach()','forEach() 메서드는 주어진 함수를 배열 요소 각각에 대해 실행합니다.\r\n```javascript\r\narray.forEach(function(row, i) {\r\n  console.log(i);\r\n});\r\n// row 는 처리할 요소, index 는 현재 처리할 요소의 인덱스\r\n\r\n// forEach() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.forEach((row,index) => {\r\n  return row > 10;\r\n});\r\n```',1,2,1,0,0),(14,'2021-01-14 17:34:42','2021-01-22 13:43:03','JAVASCRIPT) 페이지 이름 찾기','```javescript\r\nvar pageName = \"\"; \r\nvar tempPageName = window.location.href;\r\nvar strPageName = tempPageName.split(\"/\");\r\npageName = strPageName[strPageName.length-1].split(\"?\")[0];\r\n```\r\n',1,2,3,0,0),(15,'2021-01-14 17:37:47','2021-01-22 13:43:03','MySQL) 1부터 n까지 나타내는 쿼리','```mysql\r\nWITH RECURSIVE rgen(n) AS (\r\n    SELECT 1\r\n    UNION ALL\r\n    SELECT n + 1\r\n    FROM rgen\r\n    WHERE n < 10\r\n)\r\nSELECT n\r\nFROM rgen;\r\n```\r\n',1,2,7,0,0),(16,'2021-01-20 08:43:51','2021-01-22 13:43:04','MySQL) 날짜 조건에 맞춰서 정해진 형식대로 SELECT','```MYSQL\r\nSELECT \r\nIF (\r\nDATE_FORMAT(regDate,\'%d\') = DATE_FORMAT(NOW(),\'%d\') ,\r\nDATE_FORMAT(regDate , \'%H:%i:%S\') , regDate)\r\nFROM article\r\n);\r\n```',1,2,1,0,0),(17,'2021-01-20 13:03:59','2021-01-22 13:43:04','JSP 개발일지) 1. 다중게시판 CRUD , 회원가입/로그인/로그아웃 , 게시판 사용시 권한체크','- 완료\r\n다중게시판 글 CRUD\r\n회원가입/로그인/로그아웃\r\n게시판 이용시 권한체크\r\n반응형 디자인\r\n\r\n```youtube\r\nFE0zbp5i1us\r\n```\r\n\r\n- 미구현\r\n로그인 중복체크',1,2,1,0,0),(18,'2021-01-22 13:06:24','2021-01-22 13:43:04','JAVA) MySQL에서 SELECT한 값이 number형일 때','# MySQL에서 number형태인 값을 SELECT해서 JAVA에서 다루기\r\n\r\nMySQL에서 SELECT한 값이 number형태일 때 (int)로 형변환할 수 없다.\r\n이때는 String.valueOf()를 거친 후 다시 Integer.parseInt() 해준다.\r\n```java\r\nint value = Integer.parseInt(String.valueOf(map.get(\"value\")));\r\n```',1,2,0,0,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleRecommend`
--

DROP TABLE IF EXISTS `articleRecommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleRecommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleRecommend`
--

LOCK TABLES `articleRecommend` WRITE;
/*!40000 ALTER TABLE `articleRecommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `articleRecommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleReply`
--

DROP TABLE IF EXISTS `articleReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleReply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `body` text NOT NULL,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleReply`
--

LOCK TABLES `articleReply` WRITE;
/*!40000 ALTER TABLE `articleReply` DISABLE KEYS */;
/*!40000 ALTER TABLE `articleReply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(20) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'2020-12-18 10:17:45','2020-12-18 10:17:45','공지사항','notice'),(2,'2020-12-29 09:31:10','2020-12-29 09:31:13','IT','it');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPagePath`
--

DROP TABLE IF EXISTS `ga4DataPagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=18777 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (13466,'2021-01-09 20:21:11','2021-01-09 20:21:11','/?dummy=12313',1),(13467,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123213213213231',1),(13468,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=12321321421421214124124',1),(13469,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123781294781712894',1),(13470,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=1237821947218947128947',1),(13471,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123891203812471027459721957120957219057091251',1),(13472,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123902138921471274812741289471',1),(13473,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=1239021839120489021',1),(13474,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1233323123123123213123',1),(13475,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=123332312312312321312312312312312312321',1),(13476,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=123890123891283091238901',1),(13477,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=12389128030148051058129051',1),(13478,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1238913891023890128390123890123',1),(13479,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1289301283913',1),(13480,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1290312471892047189047129047',1),(13481,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-1.html?dummy=12903193029301293094028581390',1),(13482,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-7.html?dummy=12389128391278389748127941278591',1),(13483,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-7.html?dummy=12390128391289120457821907529107592017590127590125',1),(13484,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-1.html?dummy=128391238912381293812938129389123891238129381',1),(13485,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-1.html?dummy=1283912389123812938129381293891238923123213131231238129381',1),(13486,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-14.html?dummy=123136045',1),(13487,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-15.html?dummy=123213213213123123321',1),(13488,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-15.html?dummy=123892183912084109',1),(13489,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-2.html?dummy=12313',1),(13490,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-2.html?dummy=123213213213123123123123487258945670264896789367243603467346736',1),(13491,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-3.html?dummy=1233333213133313',1),(13492,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-list-1.html?dummy=12313',1),(13493,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-list-1.html?dummy=128932183912132132849124891240124819024',1),(13494,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-list-1.html?dummy=128932183912849124891240124819024',1),(13496,'2021-01-09 20:21:12','2021-01-09 20:21:12','/statindex.html?dummy=1230892130921849082109489048012840291480912841094814',1),(13497,'2021-01-09 20:21:12','2021-01-09 20:21:12','/statindex.html?dummy=12321321472108125',1),(13498,'2021-01-09 20:21:12','2021-01-09 20:21:12','/statindex.html?dummy=12389012478912849120489012489021840948',1),(14270,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123213213213231',1),(14271,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=12321321421421214124124',1),(14272,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123781294781712894',1),(14273,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=1237821947218947128947',1),(14274,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123891203812471027459721957120957219057091251',1),(14275,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123902138921471274812741289471',1),(14276,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=1239021839120489021',1),(14277,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1233323123123123213123',1),(14278,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=123332312312312321312312312312312312321',1),(14279,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=123890123891283091238901',1),(14280,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=12389128030148051058129051',1),(14281,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1238913891023890128390123890123',1),(14282,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1289301283913',1),(14283,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1290312471892047189047129047',1),(14284,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=12903193029301293094028581390',1),(14285,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-7.html?dummy=12389128391278389748127941278591',1),(14286,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-7.html?dummy=12390128391289120457821907529107592017590127590125',1),(14287,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-1.html?dummy=128391238912381293812938129389123891238129381',1),(14288,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-1.html?dummy=1283912389123812938129381293891238923123213131231238129381',1),(14289,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-14.html?dummy=123136045',1),(14290,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-15.html?dummy=123213213213123123321',1),(14291,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-15.html?dummy=123892183912084109',1),(14292,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-2.html?dummy=12313',1),(14293,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-2.html?dummy=123213213213123123123123487258945670264896789367243603467346736',1),(14294,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-3.html?dummy=1233333213133313',1),(14295,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=123128492814921849',1),(14296,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=12312849281492184912412412412412412412423654676458346',1),(14297,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=12313',1),(14298,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=1231313130128949085050',1),(14299,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=128932183912132132849124891240124819024',1),(14300,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=128932183912849124891240124819024',1),(14301,'2021-01-14 11:23:44','2021-01-14 11:23:44','notice-detail-13.html',1),(14302,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=1230892130921849082109489048012840291480912841094814',1),(14303,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=12321321472108125',1),(14304,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=12389012478912849120489012489021840948',1),(14305,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=123891248194',1),(14306,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1194.html',1),(14307,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1208.html',1),(14308,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1222.html',1),(14309,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1223.html',1),(14310,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1229.html',1),(14311,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1230.html',1),(14313,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1232.html',1),(14319,'2021-01-22 07:52:13','2021-01-22 07:52:13','notice-list.html?board=notice',13),(14324,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-17.html?board=it&id=17',7),(14326,'2021-01-22 07:52:13','2021-01-22 07:52:13','article_tag.html?tag=MYSQL',5),(14334,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=it&id=14',4),(14336,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-15.html?board=it&id=15',4),(14337,'2021-01-22 07:52:13','2021-01-22 07:52:13','article_tag.html?tag=JAVA',4),(14338,'2021-01-22 07:52:13','2021-01-22 07:52:13','article_tag.html?tag=JAVASCRIPT',4),(14351,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-9.html?board=notice&id=9',3),(14360,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-11.html?board=it&id=11',2),(14361,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-12.html?board=it&id=12',2),(14362,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-13.html?board=it&id=13',2),(14367,'2021-01-22 07:52:13','2021-01-22 07:52:13','article_tag.html?tag=VUE',2),(14386,'2021-01-22 07:52:13','2021-01-22 07:52:13','article_tag.html?tag=JSP%EA%B0%9C%EB%B0%9C%EC%9D%BC%EC%A7%80',1),(14393,'2021-01-22 07:52:13','2021-01-22 07:52:13','it-list.html?board=it',1),(14400,'2021-01-22 07:52:13','2021-01-22 07:52:13','?dummy=12313',1),(14401,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-1.html?board=it&id=1',1),(14402,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-10.html?board=&it&id=10',1),(14403,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-10.html?board=it&id=10',1),(14404,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-12.html?page=2',1),(14405,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-13.html?board=it',1),(14406,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1',1),(14407,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1?board=1',1),(14408,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1?board=1?board=1?board=1',1),(14409,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1?board=1?board=1?board=1?board=1?board=1',1),(14410,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1?board=1?board=1?board=1?board=1?board=1?board=1',1),(14411,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1?board=1?board=1?board=1?board=1?board=1?board=1?board=1',1),(14412,'2021-01-22 07:52:13','2021-01-22 07:52:13','article-detail-14.html?board=1?board=1?board=1?board=1?board=1?board=1?board=1?board=1?board=1',1),(14676,'2021-01-22 08:01:40','2021-01-22 08:01:40','notice-list.htm',13),(14679,'2021-01-22 08:01:40','2021-01-22 08:01:40','notice-list-1.html',9),(14680,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-7.html',8),(14681,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-17.htm',7),(14682,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-6.html',6),(14684,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-1.html',5),(14685,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-4.html',5),(14686,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-15.html',5),(14687,'2021-01-22 08:01:40','2021-01-22 08:01:40','notice-12.html',5),(14689,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-1.html',4),(14691,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-14.htm',4),(14692,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-15.html',4),(14693,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-15.htm',4),(14697,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-2.html',4),(14698,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-5.html',4),(14699,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-1.html',4),(14702,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-3.html',4),(14703,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-5.html',4),(14704,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-12.html',3),(14705,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-3.html',3),(14706,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-4.html',3),(14707,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-7.html',3),(14708,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-9.htm',3),(14709,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-3.html',3),(14710,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-10.html',3),(14711,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-2.html',3),(14712,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-7.html',3),(14714,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-list-1.html',2),(14715,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-10.html',2),(14716,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-11.html',2),(14717,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-11.htm',2),(14718,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-12.htm',2),(14719,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-13.htm',2),(14720,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-14.html',2),(14721,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-2.html',2),(14722,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-5.html',2),(14723,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-6.html',2),(14725,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-12.html',2),(14726,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-14.html',2),(14727,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-4.html',2),(14728,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-6.html',2),(14729,'2021-01-22 08:01:40','2021-01-22 08:01:40','notice-detail-12.html',2),(14730,'2021-01-22 08:01:40','2021-01-22 08:01:40','test-list-5.html',2),(14738,'2021-01-22 08:01:40','2021-01-22 08:01:40','test-detail-1207.html',1),(14739,'2021-01-22 08:01:40','2021-01-22 08:01:40','test-detail-1231.html',1),(14741,'2021-01-22 08:01:40','2021-01-22 08:01:40','article-detail-13.html',1),(14743,'2021-01-22 08:01:40','2021-01-22 08:01:40','article_tag.htm',1),(14744,'2021-01-22 08:01:40','2021-01-22 08:01:40','guestbook-list-1.html',1),(14746,'2021-01-22 08:01:40','2021-01-22 08:01:40','index.html',1),(14747,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-16.html',1),(14748,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-detail-17.html',1),(14749,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-list-2.html',1),(14750,'2021-01-22 08:01:40','2021-01-22 08:01:40','it-list.htm',1),(14752,'2021-01-22 08:01:40','2021-01-22 08:01:40','profile.html',1),(14754,'2021-01-22 08:01:40','2021-01-22 08:01:40','statindex.html',1),(14755,'2021-01-22 08:01:40','2021-01-22 08:01:40','test-list-1.html',1),(14756,'2021-01-22 08:01:40','2021-01-22 08:01:40','test-list-85.html',1),(14762,'2021-01-22 08:03:15','2021-01-22 08:03:15','/notice-list.htm',13),(14767,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-17.htm',7),(14779,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-15.htm',4),(14803,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-11.htm',2),(14843,'2021-01-22 08:03:16','2021-01-22 08:03:16','',1),(14844,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-1.htm',1),(14846,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-10.htm',1),(14847,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-12.htm',1),(14848,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-13.htm',1),(14872,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-14.htm',1),(14873,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-16.htm',1),(14874,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-21.htm',1),(14875,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-3.htm',1),(14876,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-4.htm',1),(14877,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-457.htm',1),(14878,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-5.htm',1),(14879,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-6.htm',1),(14882,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-7.htm',1),(14885,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-8.htm',1),(14886,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-843.htm',1),(14887,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-850.htm',1),(14889,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article-detail-9.htm',1),(14899,'2021-01-22 08:03:16','2021-01-22 08:03:16','/article_tag.htm',1),(14915,'2021-01-22 08:03:16','2021-01-22 08:03:16','/index.htm',1),(14923,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-1.htm',1),(14925,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-7.htm',1),(14927,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-detail-1.htm',1),(14930,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-detail-14.htm',1),(14932,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-detail-15.htm',1),(14934,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-detail-2.htm',1),(14935,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-detail-3.htm',1),(14941,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-list-1.htm',1),(14987,'2021-01-22 08:03:16','2021-01-22 08:03:16','/it-list.htm',1),(15000,'2021-01-22 08:03:16','2021-01-22 08:03:16','/statindex.htm',1),(15024,'2021-01-22 08:03:16','2021-01-22 08:03:16','/test-list.htm',1),(18517,'2021-01-22 13:43:06','2021-01-22 13:43:06','/notice-list-1.html',9),(18519,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-17.html',7),(18520,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-6.html',6),(18525,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-4.html',5),(18527,'2021-01-22 13:43:06','2021-01-22 13:43:06','/notice-12.html',5),(18532,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-15.html',4),(18535,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-2.html',4),(18536,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-5.html',4),(18541,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-5.html',4),(18547,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-3.html',3),(18548,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-10.html',3),(18550,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-7.html',3),(18555,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-11.html',2),(18559,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-2.html',2),(18564,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-12.html',2),(18566,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-4.html',2),(18567,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-6.html',2),(18568,'2021-01-22 13:43:06','2021-01-22 13:43:06','/notice-detail-12.html',2),(18569,'2021-01-22 13:43:06','2021-01-22 13:43:06','/test-list-5.html',2),(18577,'2021-01-22 13:43:06','2021-01-22 13:43:06','/test-detail-1207.html',1),(18583,'2021-01-22 13:43:06','2021-01-22 13:43:06','/guestbook-list-1.html',1),(18586,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-16.html',1),(18587,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-detail-17.html',1),(18588,'2021-01-22 13:43:06','2021-01-22 13:43:06','/it-list-2.html',1),(18591,'2021-01-22 13:43:06','2021-01-22 13:43:06','/profile.html',1),(18594,'2021-01-22 13:43:06','2021-01-22 13:43:06','/test-list-1.html',1),(18596,'2021-01-22 13:43:06','2021-01-22 13:43:06','/',1),(18597,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-1.html',1),(18599,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-10.html',1),(18600,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-12.html',1),(18601,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-13.html',1),(18625,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-14.html',1),(18626,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-16.html',1),(18627,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-21.html',1),(18628,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-3.html',1),(18629,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-4.html',1),(18630,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-457.html',1),(18631,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-5.html',1),(18632,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-6.html',1),(18635,'2021-01-22 13:43:06','2021-01-22 13:43:06','/article-detail-7.html',1),(18638,'2021-01-22 13:43:07','2021-01-22 13:43:07','/article-detail-8.html',1),(18639,'2021-01-22 13:43:07','2021-01-22 13:43:07','/article-detail-843.html',1),(18640,'2021-01-22 13:43:07','2021-01-22 13:43:07','/article-detail-850.html',1),(18642,'2021-01-22 13:43:07','2021-01-22 13:43:07','/article-detail-9.html',1),(18651,'2021-01-22 13:43:07','2021-01-22 13:43:07','/article_tag.html',1),(18667,'2021-01-22 13:43:07','2021-01-22 13:43:07','/index.html',1),(18675,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-1.html',1),(18677,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-7.html',1),(18679,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-1.html',1),(18680,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-11.html',1),(18681,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-13.html',1),(18682,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-14.html',1),(18684,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-15.html',1),(18686,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-2.html',1),(18687,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-detail-3.html',1),(18693,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-list-1.html',1),(18739,'2021-01-22 13:43:07','2021-01-22 13:43:07','/it-list.html',1),(18740,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-detail-13.html',1),(18741,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-detail-8.html',1),(18742,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-detail-9.html',1),(18743,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-list-11.html',1),(18744,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-list-21.html',1),(18745,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-list-31.html',1),(18746,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-list-41.html',1),(18747,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-list-51.html',1),(18748,'2021-01-22 13:43:07','2021-01-22 13:43:07','/notice-list.html',1),(18752,'2021-01-22 13:43:07','2021-01-22 13:43:07','/statindex.html',1),(18753,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1194.html',1),(18754,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1208.html',1),(18755,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1222.html',1),(18756,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1223.html',1),(18757,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1229.html',1),(18758,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1230.html',1),(18759,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1231.html',1),(18760,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-1232.html',1),(18761,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-244.html',1),(18762,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-768.html',1),(18763,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-771.html',1),(18764,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-791.html',1),(18765,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-798.html',1),(18766,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-828.html',1),(18767,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-838.html',1),(18768,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-841.html',1),(18769,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-845.html',1),(18770,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-847.html',1),(18771,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-detail-848.html',1),(18772,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-list-11.html',1),(18773,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-list-21.html',1),(18774,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-list-71.html',1),(18775,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-list-85.html',1),(18776,'2021-01-22 13:43:07','2021-01-22 13:43:07','/test-list.html',1);
/*!40000 ALTER TABLE `ga4DataPagePath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestBook`
--

DROP TABLE IF EXISTS `guestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestBook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` text NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestBook`
--

LOCK TABLES `guestBook` WRITE;
/*!40000 ALTER TABLE `guestBook` DISABLE KEYS */;
INSERT INTO `guestBook` VALUES (1,'2020-12-22 13:56:37','2020-12-22 13:56:40','“좋은 프로그래머 대부분은 돈이나 대중에게 받을 찬사를 기대하고 프로그래밍을 하지 않고 프로그래밍이 재미 있어서 한다.”\r\n\r\n- 리누스 베네딕트 토르발스(Linus Benedict Torvalds)',1),(2,'2020-12-22 13:58:06','2020-12-22 13:58:08','\"손으로 10초면 충분히 할 수 있는 일을\r\n컴퓨터로 하루 종일 프로그래밍해서 자동으로 수행할 때,\r\n나는 더할 나위 없이 큰 행복을 느낀다.\"\r\n\r\n- 더글러스 노엘 애덤스(Douglas Noel Adams)',1),(3,'2020-12-22 13:59:14','2020-12-22 13:59:16','\"만약 당신이 코딩을 할 수 있게 된다면, 앉은 자리에서 무언가를 만들어 낼 수 있고, 아무도 당신을 막을 수 없을 것이다.\"\r\n\r\n- 마크 저커버그(Mark Zuckerberg)',1);
/*!40000 ALTER TABLE `guestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(30) NOT NULL,
  `loginPw` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2020-12-17 13:27:07','2020-12-17 13:27:07','admin','admin','이명학');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2021-01-14 09:29:52','2021-01-14 09:29:52','article',2,'JAVA'),(2,'2021-01-14 09:29:52','2021-01-14 09:29:52','article',3,'MYSQL'),(3,'2021-01-14 09:29:52','2021-01-14 09:29:52','article',1,'JAVA'),(4,'2021-01-15 09:39:21','2021-01-15 09:39:21','article',4,'MYSQL'),(5,'2021-01-15 12:06:52','2021-01-15 12:06:54','article',5,'JAVA'),(6,'2021-01-15 12:37:45','2021-01-15 12:37:46','article',6,'HTML'),(7,'2021-01-15 12:38:22','2021-01-15 12:38:24','article',6,'CSS'),(8,'2021-01-15 12:38:32','2021-01-15 12:38:33','article',7,'JAVASCRIPT'),(9,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',10,'JAVASCRIPT'),(10,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',10,'VUE'),(11,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',11,'JAVASCRIPT'),(12,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',11,'VUE'),(13,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',12,'JAVASCRIPT'),(14,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',12,'VUE'),(18,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',13,'JAVASCRIPT'),(19,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',13,'VUE'),(20,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',14,'JAVASCRIPT'),(21,'2021-01-15 12:38:47','2021-01-15 12:38:48','article',15,'MYSQL'),(22,'2021-01-20 13:07:05','2021-01-20 13:07:06','article',16,'MYSQL'),(23,'2021-01-20 13:07:33','2021-01-20 13:07:35','article',17,'JSP'),(24,'2021-01-20 13:07:45','2021-01-20 13:07:46','article',17,'JSP개발일지'),(25,'2021-01-22 13:09:16','2021-01-22 13:09:18','article',18,'JAVA'),(26,'2021-01-22 13:09:27','2021-01-22 13:09:28','article',18,'MYSQL');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22 14:04:19
