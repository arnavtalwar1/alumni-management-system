-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 09:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `connected_to` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES
(1, 'Charitya', '', 'Reddy', 'Male', ' 2000', 2, 'charityareddy@gmail.com', 'LegacyLink', '1744723320_man-poses-passport-photo-260nw-207377266.webp', 1, '2025-04-15 18:52:20'),
(2, 'Arnav', '', 'Talwar', 'Male', ' 2000', 2, 'arnav@gmail.com', 'LegacyLink', '1744729140_DSC_0987.JPG', 1, '2025-04-15 19:05:03'),
(3, 'Sharanpreet', '  P', 'Kaur', 'Male', ' 2009', 2, 'sharan@gmail.com', 'LegacyLink', '1744729260_images.jpeg', 1, '2025-04-15 19:06:38'),
(4, ' Admin', '', '  ', 'Male', ' 2010', 2, 'admin@gmail.com', 'LegacyLink', 'abcd.jpg', 1, '2025-04-20 19:08:13'),
(5, 'Sukha', '', 'Khalon', 'Male', ' 2020', 1, 'sukha@gmail.com', 'LegacyLink', '1744729260_images (1).jpeg', 1, '2025-04-15 19:09:03'),
(6, 'Aniket', '', 'Sharma', 'Male', ' 2024', 2, 'aniket@gmail.com', 'LegacyLink', '1744729200_frontal-portrait-serious-looking-businessman-260nw-1706382364.webp', 1, '2025-04-15 19:10:00'),
(7, 'Anil', '', 'Talwar', 'Male', ' 2000', 6, 'anil@gmail.com', 'LegacyLink', '1744729140_DSC_0971.JPG', 1, '2025-04-15 19:13:08'),
(8, 'Abdul', '', 'Kalam', 'Male', ' 2010', 8, 'abdul@gmail.com', 'LegacyLink', '1744728600_man-poses-passport-photo-260nw-207377266.webp', 1, '2025-04-15 19:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(1, 'legacy Link C/o  Richard Mille', 'Berlin, Germany', 'Web Developer', 'Legacy Link C/o Richard Mille is pleased to announce an exciting hiring opportunity for the position of Web Developer at our Berlin, Germany location. The hiring window opens on May 8th and will close on May 21st. We invite all Legacy Link employees worldwide to share this opportunity within their networks and help us find a talented developer to join our innovative team in Berlin.\r\n\r\nFor inquiries or to refer a candidate, kindly contact us at +49 160 1234567. Let’s grow together!\r\n\r\n\r\n\r\n\r\n\r\n', 3, '2020-10-15 14:14:27'),
(2, 'Legacy Link', 'Noida, India', 'IT Specialist', 'Legacy Link is excited to announce a new hiring drive for an IT Specialist position at our Noida, India branch. This recruitment window opens on **25th April** and will close on **5th May**. We encourage all eligible candidates within the Legacy Link network, globally, to refer qualified individuals or apply directly during this period. Let’s spread the word and help strengthen our Noida team!\r\n\r\nFor inquiries or to refer a candidate, kindly contact us at +91 98100 45678. Let’s grow together!\r\n\r\n', 1, '2020-10-15 15:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(1, 'BS Information Technology', 'Sample'),
(2, 'BCA', ''),
(3, 'MCA', ''),
(4, 'MBA', ''),
(6, 'Computer Science', ''),
(7, 'Electrical Engineering', ''),
(8, 'Business Administration', ''),
(9, 'BTech', ''),
(10, 'Fashion Designing', ''),
(11, 'Hotel Management', ''),
(12, 'BSC', ''),
(13, 'BCom', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(1, '📅 Event Name : Legacy Reunion \r\n Date: 15 May, 2025           \r\n📍 Venue: Imperial Manor, Rama Mandi in Jalandhar City.\r\n⏰ Time: 5:00 PM – 10:00 PM', 'The Legacy Reunion 2025 is a special gathering designed to bring together alumni from all graduating classes for an unforgettable evening of nostalgia, networking, and celebration. Set to take place on 15 May, 2025, at Imperial Manner, Rama Mandi in Jalandhar City. This event offers a unique opportunity for former students to reconnect with old friends, reminisce about cherished memories, and strengthen their bond with their alma mater. The evening will begin with a warm welcome, followed by inspiring speeches from distinguished alumni who have made remarkable contributions in their respective fields. Interactive networking sessions will allow attendees to establish valuable professional connections and explore potential collaborations.\r\n\r\nAdding to the excitement, the Memory Lane Exhibit will showcase a collection of photographs, achievements, and special moments from past years, offering a nostalgic journey through time. The night will be further enriched with live music, cultural performances, and a grand gala dinner, creating an atmosphere of joy and celebration. Whether you graduated recently or decades ago, Legacy Reunion 2025 is the perfect occasion to relive fond memories, share experiences, and contribute to the lasting legacy of excellence that continues to thrive. Join us for an evening filled with laughter, inspiration, and lifelong connections!', '2025-07-31 18:00:00', 'legacyreunion.jpg', '2020-10-16 09:51:55'),
(2, 'FUTURE FORWARD 2025\r\n April 25, 2025 06:43 AM', 'Welcome to LegacyLink! As new interns stepping into a world of innovation, purpose, and growth, you’re not just beginning a job—you’re becoming part of a legacy. One that’s constantly moving forward. And there\'s no better place to start than FutureForward 2025. This isn’t just another corporate event. FutureForward 2025 is a celebration of bold thinking, breakthrough ideas, and the people who make them happen. It’s where we shape what\'s next—together. Why Should You Attend? Because the future starts with you. You bring fresh ideas, new energy, and a different perspective. FutureForward is your platform to absorb, connect, and contribute. It’s your chance to meet trailblazing leaders, witness cutting-edge projects, and see the bigger picture behind your daily work. You’ll hear from inspiring speakers, dive into hands-on sessions, and get an exclusive inside look at LegacyLink’s vision for tomorrow. Whether you\'re in tech, business, design, or operations—this event is made for you. What You’ll Gain Clarity & Confidence: Understand the role you play in our mission to connect generations and preserve digital legacies. Inspiration: Be energized by stories of innovation, challenge, and success from people who were once in your shoes. Connection: Meet mentors, team leads, and fellow interns who share your passion for progress. Opportunity: Get noticed, ask questions, and explore where your internship could take you next. Your Journey Begins Now This event is not just about watching—it\'s about engaging. It\'s about showing up with curiosity, leaving with purpose, and realizing that even at the beginning of your career, your voice and ideas matter. So step forward. Be bold. Be present. Your future is waiting', '2025-04-16 07:32:53', 'futureforward.jpeg', '2025-04-16 11:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(2, 0, '', 1, '2020-10-16 09:49:34'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(1, 'A.I\r\n', '\r\nArtificial intelligence (AI) is rapidly transforming our world, enabling machines to perform tasks that typically require human intelligence. From powering virtual assistants and recommending products online to driving advancements in healthcare and autonomous vehicles, AI is becoming increasingly integrated into our daily lives. By leveraging vast amounts of data and sophisticated algorithms, AI systems can learn, reason, and solve complex problems, often with remarkable speed and accuracy. While the potential benefits of AI are immense, including increased efficiency, new discoveries, and solutions to global challenges, its development also raises important ethical considerations regarding bias, job displacement, and the responsible use of this powerful technology.\r\n', 3, '2020-10-15 15:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(13, 'Research and Development', '2025-04-16 11:57:22'),
(14, 'Conference  Hall', '2025-04-16 11:58:46'),
(15, 'Finance Department\r\n', '2025-04-16 11:59:09'),
(16, 'Growth Discussion', '2025-04-16 12:00:06'),
(17, 'Reception\r\n', '2025-04-16 12:00:27'),
(18, 'Sales Department', '2025-04-16 12:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Legacy Link', 'legacylink300@gmail.com', '+916280193040', 'll.jpg', '&lt;p style=&quot;text-align: justify; background: transparent; position: relative;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;At Legacy Link, we are more than just a technology-driven company &mdash; we are a people-first organization committed to innovation, growth, and long-term success. Based in the heart of Legacy Link I.T. Park, Chandigarh, our mission is to create meaningful digital solutions while fostering a work culture where talent thrives. We take pride in offering a powerful platform for personal and professional development, where every team member is encouraged to learn, lead, and grow. Our friendly and collaborative work environment ensures that employees feel supported, respected, and valued at every stage of their journey. At Legacy Link, we understand the importance of job security, competitive salary packages, and work-life balance, which is why we&rsquo;ve built a space that combines stability with opportunity. Whether you&rsquo;re starting your career or looking to take it to the next level, Legacy Link offers the resources, mentorship, and growth potential to help you succeed and leave a lasting impact.&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(2, 'Charitya Reddy', 'charityareddy@gmail.com', 'd9786b687bc5f3fe1d4ae05ff05e0eb5', 3, '', 1),
(3, 'Arnav Talwar', 'arnav@gmail.com', 'c5e86d77541df04bfae6119235193ffa', 3, '', 2),
(4, 'Sharanpreet Kaur', 'sharan@gmail.com', 'd9786b687bc5f3fe1d4ae05ff05e0eb5', 3, '', 3),
(5, 'admin   ', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 3, '', 4),
(6, 'Sukha Khalon', 'sukha@gmail.com', 'd9786b687bc5f3fe1d4ae05ff05e0eb5', 3, '', 5),
(7, 'Aniket Sharma', 'aniket@gmail.com', 'd9786b687bc5f3fe1d4ae05ff05e0eb5', 3, '', 6),
(8, 'Anil Talwar', 'anil@gmail.com', 'd9786b687bc5f3fe1d4ae05ff05e0eb5', 3, '', 7),
(9, 'Abdul Kalam', 'abdul@gmail.com', '82027888c5bb8fc395411cb6804a066c', 3, '', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
