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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2021-01-14 09:03:55','2021-01-14 11:23:32','자바) Switch 구문','# SWITCH\r\n```java\r\nswitch (변수명) {\r\n          case 조건1:\r\n          실행코드1;\r\n\r\n          case 조건2:\r\n          실행코드2;\r\n\r\n          default:\r\n          실행코드3;\r\n}\r\n```\r\n\r\n변수가 \r\n조건1에 참이라면 실행코드1부터 실행코드3까지 순차적으로 실행\r\n조건2에 참이라면 실행코드2부터 실행코드3까지 순차적으로 실행\r\n조건 1과 조건2에 모두 맞지 않으면 실행코드3만 실행\r\n\r\n\r\n조건에 맞는 실행코드만 실행하고 싶다면 break; 를 넣어준다.\r\n# 예시\r\n```java\r\nint value = 1;\r\n\r\nswitch (value) {\r\n          case 1 :\r\n          System.out.println(\"1\");\r\n          break;\r\n\r\n          case 2 :\r\n          System.out.println(\"2\");\r\n          break;\r\n\r\n          case 3 :\r\n          System.out.println(\"3\");\r\n          break;\r\n\r\n         default :\r\n         System.out.println(\"그 외의 숫자\");\r\n}\r\n```',1,2,5,0,1),(2,'2021-01-14 09:04:38','2021-01-14 11:23:33','자바) 배열 정렬하는 식','```java\r\nint[] arr = new int[N];\r\n\r\n  for (int i = 0 ; i < arr.length ; i++) {\r\n    for (int j = 0 ; j < arr.length-i-1 ; j++) {\r\n      if(arr[j] < arr[j+1]){\r\n          int temp = arr[j+1];\r\n          arr[j+1] = arr[j];\r\n          arr[j] = temp;\r\n      }  \r\n    }\r\n  }\r\n```\r\n\r\n배열의 앞 뒤 값을  비교해서 작은 값을 뒤로 보내고, 다시 앞 뒤로 비교한다.\r\n이 과정을 반복해서 제일 작은 값은 마지막 위치로 가게 되고 제일 마지막 값은 이미 제일 작은 값이므로 또다시 비교할 필요가 없다.\r\n이 과정을 다시 반복하면 배열은 내림차순으로 정렬된다.',1,2,5,0,0),(3,'2021-01-14 09:05:35','2021-01-14 11:23:34','MySQL) 문자열 합치기 CONCAT','# CONCAT\r\n```MySql\r\nCONCAT(\'문\',\'자\',\'열\')\r\n```\r\n-> \'문자열\'',1,2,3,0,0),(4,'2021-01-14 09:06:30','2021-01-14 11:23:37','MySQL) INNER JOIN','# INNER JOIN\r\n```mysql\r\nSELECT * FROM 테이블명1\r\nINNER JOIN 테이블명2\r\nON 테이블명1.컬럼명 = 테이블명2.컬럼명;\r\n```\r\n테이블명1.컬럼과 테이블명2.컬럼의 값이 같은 것들만 합쳐져 나온다.',1,2,2,0,0),(5,'2021-01-14 09:07:12','2021-01-14 11:23:37','자바) 폴더와 하위파일 삭제하는 메소드','# 폴더와 하위파일 삭제하는 메소드\r\n```java\r\npublic static void deleteDir(String filePath) { \r\n\r\n          File deleteFolder = new File(filePath); \r\n\r\n               if(deleteFolder.exists()) { \r\n                   File[] deleteFolderList = deleteFolder.listFiles();\r\n                           for(int i = 0 ; i < deleteFolderList.length; i++) {\r\n                                   if(deleteFolderList[i].isFile()) { \r\n                                        deleteFolderList[i].delete();\r\n                                    } else {\r\n                                     deleteDir(deleteFolderList[i].getPath()); \r\n                                    } \r\n                                    deleteFolderList[i].delete();\r\n                               } deleteFolder.delete(); \r\n                       } \r\n              }\r\n```',1,2,3,0,0),(6,'2021-01-14 09:07:48','2021-01-14 11:23:37','HTML,CSS) box-sizing 속성','content-box 는 기본으로 적용되는 키워드.\r\n\r\nwidth속성과 height속성이 글자가 들어가는 영역의 크기를 지정하게 만든다.\r\n\r\n(width:100px , height:100px 인 영역에 border,margin,padding등의 요소가 추가되어도 width와 height는 100px로 고정)\r\n\r\n(따라서 태그의 전체 영역은 width,height의 크기에서 border,margin,padding만큼 커지게 된다.)\r\n\r\n \r\n\r\nborder-box 는 width속성과 height속성이 테두리를 포함한 영역의 크기를 지정하게 만든다.\r\n\r\n(width:100px , height:100px 인 영역에 border,margin,padding등의 요소가 추가되면 border와 padding의 크기만큼 width와 height가 줄어든다. margin은 영역의 바깥에 여백을 주는것이기 때문에 상관이 없다.)\r\n',1,2,2,0,0),(7,'2021-01-14 09:08:31','2021-01-14 11:23:38','JAVASCRIPT) replace를 replaceAll처럼 사용하기','자바스크립트에는 replaceAll 이 없다.\r\nreplaceAll처럼 쓰려면 정규식표현을 사용.\r\n```javascript\r\nstring.replace(\"#\" , \"\"); \r\nstring.replace9(/#/gi , \"\");\r\n```\r\n\r\nREPLACE 함수에서와 같이 사용하되, 따옴표를 / 슬래시로 대체하고, 뒤에 gi 를 붙이면 replaceAll() 과 같은 기능을 한다.\r\n\r\n* g : 발생할 모든 패턴에 대한 전역 검색\r\n\r\n* i : 대/소문자 구분 안함\r\n\r\n* m : 여러 줄 검색',1,2,3,0,0),(8,'2021-01-14 09:14:34','2021-01-14 11:23:38','공지사항입니다. 😀','앞으로 풀스택 개발 관련 글이 올라옵니다.\r\n😀😀',1,1,2,0,0),(9,'2021-01-14 09:15:06','2021-01-14 11:23:39','게시판 이용 수칙','각 게시판에 맞는 글을 작성해 주세요.',1,1,1,0,0),(10,'2021-01-14 09:15:37','2021-01-14 11:23:39','Vue) Array.prototype.map()','map() 메소드는 배열 내의 모든 요소 각각에 대하여 주어진 함수를 호출한 결과를 모아 새로운 배열을 반환합니다.\r\n\r\n```javascript\r\narray.map(function(row,index){ \r\n  return row * 2;\r\n});\r\n// row 는 처리할 요소 , index 는 처리할 현재 요소의 인덱스\r\n\r\n// map() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.map((row,index) = > {\r\n   return row * 2;\r\n});\r\n```',1,2,3,0,0),(11,'2021-01-14 09:16:11','2021-01-14 11:23:39','Vue) Array.prototype.filter()','FILTER() 메소드는 주어진 함수의 테스트를 통과하는 모든 요소를 모아 새로운 배열로 반환합니다.\r\n\r\n```javascript\r\narray.filter(function(row,index) {\r\n  return row > 10;\r\n});\r\n// row 는 처리할 요소, index 는 현재 처리할 요소의 인덱스\r\n\r\n// filter() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.filter((row,index) => {\r\n  return row > 10;\r\n});\r\n```',1,2,5,0,0),(12,'2021-01-14 09:16:45','2021-01-14 11:23:40','Vue) Array.prototype.some()','SOME() 메서드는 배열 안의 어떤 요소라도 주어진 판별 함수를 통과하는지 테스트합니다.\r\n```javascript\r\narray.some((row, i) => {\r\n  return row == 15;\r\n});\r\n// row 는 처리할 요소, index 는 현재 처리할 요소의 인덱스\r\n\r\n// some() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.some((row,index) => {\r\n  return row > 10;\r\n});\r\n```',1,2,2,0,0),(13,'2021-01-14 09:17:17','2021-01-14 11:23:40','Vue) Array.prototype.forEach()','forEach() 메서드는 주어진 함수를 배열 요소 각각에 대해 실행합니다.\r\n```javascript\r\narray.forEach((row, i) => {\r\n  console.log(i);\r\n});\r\n// row 는 처리할 요소, index 는 현재 처리할 요소의 인덱스\r\n\r\n// forEach() 메소드는 다음과 같이 사용할 수도 있다.\r\narray.forEach((row,index) => {\r\n  return row > 10;\r\n});\r\n```',1,2,1,0,0),(14,'2021-01-14 17:34:42','2021-01-14 17:34:42','JAVASCRIPT) 페이지 이름 찾기','```javescript\r\nvar pageName = \"\"; \r\nvar tempPageName = window.location.href;\r\nvar strPageName = tempPageName.split(\"/\");\r\npageName = strPageName[strPageName.length-1].split(\"?\")[0];\r\n```\r\n',1,2,0,0,0),(15,'2021-01-14 17:37:47','2021-01-14 17:37:47','MySQL) 1부터 n까지 나타내는 쿼리','```mysql\r\nWITH RECURSIVE rgen(n) AS (\r\n    SELECT 1\r\n    UNION ALL\r\n    SELECT n + 1\r\n    FROM rgen\r\n    WHERE n < @hashsCount\r\n)\r\nSELECT n\r\nFROM rgen;\r\n```\r\n',1,2,0,0,0);
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
-- Table structure for table `articleTag`
--

DROP TABLE IF EXISTS `articleTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleTag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `body` char(100) NOT NULL,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleTag`
--

LOCK TABLES `articleTag` WRITE;
/*!40000 ALTER TABLE `articleTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `articleTag` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14314 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (13437,'2021-01-09 20:21:11','2021-01-09 20:21:11','/',54),(13438,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-list-1.html',18),(13439,'2021-01-09 20:21:11','2021-01-09 20:21:11','/profile.html',13),(13440,'2021-01-09 20:21:11','2021-01-09 20:21:11','/statindex.html',13),(13441,'2021-01-09 20:21:11','2021-01-09 20:21:11','/guestbook-list-1.html',10),(13442,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html',10),(13443,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-7.html',8),(13444,'2021-01-09 20:21:11','2021-01-09 20:21:11','/notice-list-1.html',8),(13445,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-6.html',6),(13446,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html',5),(13447,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-4.html',5),(13448,'2021-01-09 20:21:11','2021-01-09 20:21:11','/notice-12.html',5),(13449,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-2.html',4),(13450,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-5.html',4),(13451,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-17.html',4),(13452,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-3.html',3),(13453,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-5.html',3),(13454,'2021-01-09 20:21:11','2021-01-09 20:21:11','/test-list-1.html',3),(13455,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-1.html',2),(13456,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-14.html',2),(13457,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-15.html',2),(13458,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-16.html',2),(13459,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-2.html',2),(13460,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-3.html',2),(13461,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-4.html',2),(13462,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-6.html',2),(13463,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-detail-7.html',2),(13464,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-list-2.html',2),(13465,'2021-01-09 20:21:11','2021-01-09 20:21:11','/notice-detail-12.html',2),(13466,'2021-01-09 20:21:11','2021-01-09 20:21:11','/?dummy=12313',1),(13467,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123213213213231',1),(13468,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=12321321421421214124124',1),(13469,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123781294781712894',1),(13470,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=1237821947218947128947',1),(13471,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123891203812471027459721957120957219057091251',1),(13472,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=123902138921471274812741289471',1),(13473,'2021-01-09 20:21:11','2021-01-09 20:21:11','/index.html?dummy=1239021839120489021',1),(13474,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1233323123123123213123',1),(13475,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=123332312312312321312312312312312312321',1),(13476,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=123890123891283091238901',1),(13477,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=12389128030148051058129051',1),(13478,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1238913891023890128390123890123',1),(13479,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1289301283913',1),(13480,'2021-01-09 20:21:11','2021-01-09 20:21:11','/it-1.html?dummy=1290312471892047189047129047',1),(13481,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-1.html?dummy=12903193029301293094028581390',1),(13482,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-7.html?dummy=12389128391278389748127941278591',1),(13483,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-7.html?dummy=12390128391289120457821907529107592017590127590125',1),(13484,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-1.html?dummy=128391238912381293812938129389123891238129381',1),(13485,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-1.html?dummy=1283912389123812938129381293891238923123213131231238129381',1),(13486,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-14.html?dummy=123136045',1),(13487,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-15.html?dummy=123213213213123123321',1),(13488,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-15.html?dummy=123892183912084109',1),(13489,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-2.html?dummy=12313',1),(13490,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-2.html?dummy=123213213213123123123123487258945670264896789367243603467346736',1),(13491,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-detail-3.html?dummy=1233333213133313',1),(13492,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-list-1.html?dummy=12313',1),(13493,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-list-1.html?dummy=128932183912132132849124891240124819024',1),(13494,'2021-01-09 20:21:12','2021-01-09 20:21:12','/it-list-1.html?dummy=128932183912849124891240124819024',1),(13495,'2021-01-09 20:21:12','2021-01-09 20:21:12','/notice-detail-13.html',1),(13496,'2021-01-09 20:21:12','2021-01-09 20:21:12','/statindex.html?dummy=1230892130921849082109489048012840291480912841094814',1),(13497,'2021-01-09 20:21:12','2021-01-09 20:21:12','/statindex.html?dummy=12321321472108125',1),(13498,'2021-01-09 20:21:12','2021-01-09 20:21:12','/statindex.html?dummy=12389012478912849120489012489021840948',1),(14223,'2021-01-14 11:23:44','2021-01-14 11:23:44','',64),(14228,'2021-01-14 11:23:44','2021-01-14 11:23:44','guestbook-list-1.html',10),(14229,'2021-01-14 11:23:44','2021-01-14 11:23:44','notice-list-1.html',9),(14230,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-7.html',8),(14231,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-6.html',6),(14232,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html',5),(14233,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-4.html',5),(14234,'2021-01-14 11:23:44','2021-01-14 11:23:44','notice-12.html',5),(14236,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-2.html',4),(14237,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-5.html',4),(14240,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-3.html',3),(14241,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-1.html',3),(14242,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-15.html',3),(14243,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-2.html',3),(14244,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-5.html',3),(14245,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-7.html',3),(14247,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-14.html',2),(14248,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-3.html',2),(14249,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-4.html',2),(14250,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-6.html',2),(14251,'2021-01-14 11:23:44','2021-01-14 11:23:44','notice-detail-12.html',2),(14252,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-list-5.html',2),(14255,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html',1),(14258,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1207.html',1),(14261,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-16.html',1),(14262,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-17.html',1),(14263,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html',1),(14264,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-2.html',1),(14265,'2021-01-14 11:23:44','2021-01-14 11:23:44','profile.html',1),(14267,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html',1),(14268,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-list-1.html',1),(14269,'2021-01-14 11:23:44','2021-01-14 11:23:44','?dummy=12313',1),(14270,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123213213213231',1),(14271,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=12321321421421214124124',1),(14272,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123781294781712894',1),(14273,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=1237821947218947128947',1),(14274,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123891203812471027459721957120957219057091251',1),(14275,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=123902138921471274812741289471',1),(14276,'2021-01-14 11:23:44','2021-01-14 11:23:44','index.html?dummy=1239021839120489021',1),(14277,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1233323123123123213123',1),(14278,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=123332312312312321312312312312312312321',1),(14279,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=123890123891283091238901',1),(14280,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=12389128030148051058129051',1),(14281,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1238913891023890128390123890123',1),(14282,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1289301283913',1),(14283,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=1290312471892047189047129047',1),(14284,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-1.html?dummy=12903193029301293094028581390',1),(14285,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-7.html?dummy=12389128391278389748127941278591',1),(14286,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-7.html?dummy=12390128391289120457821907529107592017590127590125',1),(14287,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-1.html?dummy=128391238912381293812938129389123891238129381',1),(14288,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-1.html?dummy=1283912389123812938129381293891238923123213131231238129381',1),(14289,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-14.html?dummy=123136045',1),(14290,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-15.html?dummy=123213213213123123321',1),(14291,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-15.html?dummy=123892183912084109',1),(14292,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-2.html?dummy=12313',1),(14293,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-2.html?dummy=123213213213123123123123487258945670264896789367243603467346736',1),(14294,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-detail-3.html?dummy=1233333213133313',1),(14295,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=123128492814921849',1),(14296,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=12312849281492184912412412412412412412423654676458346',1),(14297,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=12313',1),(14298,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=1231313130128949085050',1),(14299,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=128932183912132132849124891240124819024',1),(14300,'2021-01-14 11:23:44','2021-01-14 11:23:44','it-list-1.html?dummy=128932183912849124891240124819024',1),(14301,'2021-01-14 11:23:44','2021-01-14 11:23:44','notice-detail-13.html',1),(14302,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=1230892130921849082109489048012840291480912841094814',1),(14303,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=12321321472108125',1),(14304,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=12389012478912849120489012489021840948',1),(14305,'2021-01-14 11:23:44','2021-01-14 11:23:44','statindex.html?dummy=123891248194',1),(14306,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1194.html',1),(14307,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1208.html',1),(14308,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1222.html',1),(14309,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1223.html',1),(14310,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1229.html',1),(14311,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1230.html',1),(14312,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1231.html',1),(14313,'2021-01-14 11:23:44','2021-01-14 11:23:44','test-detail-1232.html',1);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 17:49:22
