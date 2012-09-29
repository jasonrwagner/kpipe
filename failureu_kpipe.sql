-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: kpipe_development
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kpipe_service_packages`
--

DROP TABLE IF EXISTS `kpipe_service_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpipe_service_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpipe_service_packages`
--

LOCK TABLES `kpipe_service_packages` WRITE;
/*!40000 ALTER TABLE `kpipe_service_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpipe_service_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120806223139'),('20120807194551'),('20120808003214'),('20120908161755'),('20120908162512'),('20120908191737'),('20120908192724');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,0) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `outcome` text,
  `solution_associate` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Brainstorming session for your business idea','Got a great idea.  Need someone to talk to about it to get feedback and think through a go forward strategy?  This is a one hour opportunity to talk with another entrepreneur about your idea (confidentially).   The first decisions you make in pursuing your idea can be the most critical.  They set the trajectory for the future.  And the decisions can have far reaching impacts including spending far more than what was needed or even pursuing an idea that maybe not well thought out.  This service is not limited geographically.  The purchaser needs to have access to a Skype account with video for the discussion.  This is a one hour meeting.',150,'brainstorming.png','2012-09-14 12:10:28','2012-09-14 12:10:28','  This brainstorming session will probably be free wheeling.  It is not legal advice but simply having another person to talk it through and you can make your own decisions from there.   The conversation can even take “non-business” areas into account including how this might impact your family or finances, etc.','Phil Lund'),(2,'Social Media One Month OnRamp for your Small Business','Facebook, LinkedIn, Twitter– all social platforms you are not involved with but think your business should be. This is a one month trial to get you jumpstarted in digital marketing.  This is a cost effective way to establish a strategic social media plan for your business and discover the benefits through an acutal experience.\r\n\r\nThis is not limited by geography. The interview, weekly communication and exit review can be done over Skype video.\r\n\r\nTake the dive in a controlled manner to get your business started with social media. A month from now you will have a month’s experience and a plan for moving forward.',850,'socialmedia.png','2012-09-14 12:13:55','2012-09-14 12:13:55','It will include 12 hours of time by a social media strategist. The first hour to 1.5 hours will be visiting with you to discuss your target audience, who they are and how they interact with your business. A strategy will be determined and outlined. Then for the next 4 weeks that strategy will be implemented which will consist of setting up your company in one of the major social media platforms, and staying active with posts, comments, etc. At the end of the four weeks an hour to 1.5 hours will be set aside to visit again with the social media strategist about the results. You will have a full month of information to look back on and see if the strategy is working, has promise, needs tweaking or has provided little benefit and was a simple trial.','Katie Smith'),(3,'Expert Proof Reading','Crisp, clear copy is essential to getting your message across in written documents and online content. Your spell checker cannot save you from misused or unnecessary words, grammatical mistakes and inconsistencies that can derail your work. Another set of eyes, a professional proofreader, is what you need. We can help, with up to five hours to review your text, suggest changes and discuss content.',300,'proofreading.png','2012-09-14 12:15:43','2012-09-14 12:15:43','Five hours of proof reading including content discussion. Suggested Changes Documented','Gary Schroder'),(4,'Big Decision Consultant Conversation','Its a big one.  You have a significant decision to make.  And you are having trouble getting to a decision point.  Would it not be great to have a confidential conversation with a person with a great deal of experience and wisdom?  A person who could help you explore the decision with perspective and potential outcomes?   This service module allows you to do exactly that.  You can have that confidential conversation with someone that can help you explore the possibilities with perspective.   And maybe some old fashioned wisdom.  So whether business, job, relationship… whatever that momenteous decision is focused on.. get some perspective.   This is a one hour Skype video conversation',199,'bigdecisions.png','2012-09-14 12:17:40','2012-09-14 12:17:40','1.  Perspective from discussing the challenging issue and decision with someone.  2.  1 hour Skype video conversation.  3.  Advice but mostly helping you work through it.','Phil Lund'),(5,'Doing Business in Mexico – what are the Cultural Issues you might encounter?','If you are thinking about doing business in Mexico,  this one hour conversation over Sykpe video will be very useful to you.  You will be speaking with a person in Mexico who also had to learn the cultural issues when she married a Mexican National.  She now teaches at a Mexican University and teaches English to Mexican Nationals in many U.S. owned companies in her metropolitan area.  This will be very helpful on some of the cultural and language issues you might run into and how to deal with them.  Learn before you go.  Or if you are already having challenges, get some input and advice.  This will be conversational and thus tailored to your individual circumstances.\r\n\r\nYou also may be moving to Mexico for other reasons then business.  This could be a very useful conversation for moving to this beautiful land.',179,'mexicobusiness.png','2012-09-14 12:21:05','2012-09-14 12:21:05','A one hour Skype video conversation about cultural issues in Mexico and how it might impact your business dealings.','Marilyn Jane De La Pena and/or Ernesto De La Pena'),(6,'Internet Research – 5 hours','Need some research done?  You can purchase five hours of a skilled researchers time.   What is it that you want to find out?  Do you need to compare it to other data?  These types of questions and more will be considered.   So if you need answers,  and they can be found on the Internet, were ready to make it happen – quickly – for you!\r\n\r\nThere is no geographic limit to this service.  Purchaser should have access to video Skype for the initial discussion and the feedback at the end.',225,'research.png','2012-09-14 12:33:12','2012-09-14 12:33:12','The outcomes will be  written and oral feedback on the findings.  The researcher will make sure the objectives of the search are clearly defined.','Marina Parfinskaya'),(7,'Business Plan Writing','This service package is for those who need a business plan but writing one is not necessarily your primary skill. You will be interviewed in detail about your business, the business model, the product, the financial and then a draft business plan will be produced for your review. Upon feedback, the final version will be created. This service package is for a business plan up to 12 pages. It will be formatted and have a very professional look to it suitable for lending institutions or sending to VC’s, etc. This is intended for a small business or start-up.\r\nThe goal is for a one week turn-around from start to finish depending on your availability.',1499,'businessplan.png','2012-09-14 12:37:44','2012-09-14 12:37:44','Interview about your business plans and efforts. Draft Business Plan produced up to 15 pages in length including graphics. Review of Draft with you or your team Final Business Plan produced.','Phil Lund'),(8,'Resume Development','This service package gets you a resume as an outcome.  Competition is extremely tough for each job.  Make sure your calling card (your resume) does not detract from you getting to that initial interview.   You will work with an associate to get a crisp professional looking resume that focuses on your strengths and experience.',129,'resume.png','2012-09-14 12:43:17','2012-09-14 12:43:17','1. Conversation with the Kpipe Associate about your strengths, skills and experience, education, etc.  2. Draft resume created for your review and suggestions.  3.  Final draft of your resume created as a digital file.  (you can print as many as you like of send it digitally).','Phil Lund'),(9,'Power Pt Presentation Review','Giving a high profile presentation is important.  This service packages engages a person who is given put together and delivered many presentations for multiple audiences.  Have them take a look.  Have them give you input about the total package and the details.  If you want help putting it together – they can help with that also.  Knock this presentation out of the park.  Get the outside input you need to make that happen. You will e-mail the presentation with details about the audience.  It will be reviewed with specific input.  An e-mail with a follow-up phone call will give you the input you need.',149,'powerpoint.png','2012-09-14 12:47:35','2012-09-14 12:47:35','Review of your presentation by an outside Kpipe Associate and specific feedback about the overall message and the details including graphics and their helpfulness to the overall message.','Jim Swoboda');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-27 19:00:51
