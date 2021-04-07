-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-04-07 13:37:52
-- 服务器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `blogs`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE `admin_user` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(1024) DEFAULT NULL COMMENT '头像',
  `introduction` varchar(255) DEFAULT NULL COMMENT '简介',
  `role` varchar(32) NOT NULL COMMENT '角色',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `last_password_reset_date` date DEFAULT NULL COMMENT '最后修改密码时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`Id`, `userName`, `passWord`, `email`, `avatar`, `introduction`, `role`, `register_date`, `last_password_reset_date`) VALUES
(1, 'MyNetdisk', 'ADMIN_USER_PASSWORD', NULL, 'https://images.mynetdisk.vercel.app/react-blogs/avatar/avatar.jpg', '分享知识，记录生活。', 'ROLE_ADMIN', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `content` varchar(2550) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '评论内容',
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章id',
  `article_title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '文章名称',
  `comment_id` bigint(20) DEFAULT NULL COMMENT '父层id',
  `from_id` bigint(20) DEFAULT NULL COMMENT '评论者id',
  `from_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '评论者昵称',
  `from_avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '评论者头像',
  `like_num` int(11) DEFAULT NULL COMMENT '点赞人数',
  `create_date` datetime DEFAULT NULL COMMENT '评论时间',
  `is_del` tinyint(2) DEFAULT NULL COMMENT '是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='评论表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `content`, `article_id`, `article_title`, `comment_id`, `from_id`, `from_name`, `from_avatar`, `like_num`, `create_date`, `is_del`) VALUES
(1, '哈哈哈[大笑]', 1, 'Debain 8环境安装git', NULL, 1, 'zeal', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', 0, '2020-06-17 17:39:41', 0),
(2, '简直是太好笑了[可爱]', 1, 'Debain 8环境安装git', NULL, 1, 'zeal', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', 0, '2020-06-17 17:40:25', 0),
(3, '@zeal 这么巧，你也在测试评论吗？[可爱]', 1, 'Debain 8环境安装git', 2, 2, 'Tina', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/2.jpg', 0, '2020-06-17 23:48:15', 0),
(4, '@zeal 这么巧，你也在测试评论吗？[可爱]', 1, 'Debain 8环境安装git', 2, 2, 'Tina', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/2.jpg', 0, '2020-06-17 23:48:15', 0),
(5, '写得不错哦[牛皮]', 1, '解决Mac OS 升级后npm报错', NULL, 1274223115459620865, 'visitor', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/3.jpg', 0, '2020-06-20 18:51:46', 0),
(6, 'dADds[冷笑][酷][憨笑]DDDSA', 1, '自学编程 vs 参加培训', NULL, NULL, '哈哈哈', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-09 18:30:36', NULL),
(7, '但是发放 [憨笑][憨笑][舔][舔]无可奈何花落去', 1, '自学编程 vs 参加培训', NULL, NULL, '我是', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-09 18:32:49', NULL),
(8, '我是你爸爸[大笑][冷笑][牛皮][舔]儿子\n', 1, '自学编程 vs 参加培训', NULL, NULL, 'hello', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 17:55:35', NULL),
(9, '哈哈哈[大笑][可爱][酷]卢萨卡', 2, '关键对话', NULL, NULL, '哈哈哈', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 17:58:39', NULL),
(10, '哈哈哈[酷][牛皮][吐]嘿', 2, '关键对话', NULL, NULL, '我是', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 18:00:41', NULL),
(11, '哈啊哈哈哈[冷笑][冷笑]卢萨卡', 2, '关键对话', NULL, NULL, '小明', 'https://images.mynetdisk.vercel.app/react-blogs/avator/1.jpg', NULL, '2021-03-10 18:18:00', NULL),
(12, '基材厅', 2, '关键对话', NULL, NULL, '小张', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 18:18:32', NULL),
(13, '[哭][憨笑][憨笑][舔]斯塔克豪斯', 2, '关键对话', NULL, NULL, '小王', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 18:20:05', NULL),
(14, '基材在', 2, '关键对话', NULL, NULL, '小周', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 18:24:58', NULL),
(15, '模压[哭]', 2, '关键对话', NULL, NULL, '小石', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/3.jpg', NULL, '2021-03-10 18:26:41', NULL),
(16, '项城无可奈何苦[舔]', 2, '关键对话', NULL, NULL, '小明', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/2.jpg', NULL, '2021-03-10 18:27:41', NULL),
(17, '斯塔基要', 2, '关键对话', NULL, NULL, '小明', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/1.jpg', NULL, '2021-03-10 18:28:10', NULL),
(18, '项城要', 2, '关键对话', NULL, NULL, '哈哈哈af', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/3.jpg', NULL, '2021-03-10 18:28:26', NULL),
(19, '项城要', 2, '关键对话', NULL, NULL, '哈哈哈af', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/3.jpg', NULL, '2021-03-10 18:28:29', NULL),
(20, '和你哦啊发送大家[牛皮][吐][憨笑]', 2, '关键对话', NULL, NULL, '小王', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/2.jpg', NULL, '2021-03-10 18:30:47', NULL),
(21, '[大笑][可爱][牛皮]', 3, '采用 Github Action 自动化部署博客', NULL, NULL, '小王', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/8.jpg', NULL, '2021-03-10 18:47:37', NULL),
(22, '哈哈哈哈[难过][疑问]', 3, '采用 Github Action 自动化部署博客', NULL, NULL, '小明', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/5.jpg', NULL, '2021-03-10 18:58:44', NULL),
(23, 'helhe[色]ddd', 1, '自学编程 vs 参加培训', NULL, NULL, '哈哈哈', 'https://images.mynetdisk.vercel.app/react-blogs/avatar/13.jpg', NULL, '2021-03-14 13:41:55', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `label`
--

CREATE TABLE `label` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `hot` bigint(20) DEFAULT NULL COMMENT '热度',
  `out_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '外层颜色',
  `avatar_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像颜色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='分类目录表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `label`
--

INSERT INTO `label` (`id`, `name`, `icon`, `hot`, `out_color`, `avatar_color`) VALUES
(1, 'Github', 'mdi-docker', 1, 'gold', 'brown'),
(2, 'Docker', 'mdi-language-typescript', NULL, '#87d068', 'lime'),
(3, '沟通', 'mdi-gift-outline', NULL, '#108ee9', 'pink'),
(4, 'docker-compose', 'mdi-nodejs', NULL, 'red', 'red'),
(5, '房地产', NULL, NULL, '#f50', NULL),
(6, '励志', NULL, NULL, '#2db7f5', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `nav`
--

CREATE TABLE `nav` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '名称',
  `alias` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '别名',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='分类目录表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `nav`
--

INSERT INTO `nav` (`id`, `name`, `alias`, `icon`) VALUES
(1, '主页', 'index', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `phrase`
--

CREATE TABLE `phrase` (
  `id` bigint(20) NOT NULL,
  `hitokoto` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '正文',
  `type` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '类型',
  `source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '来源',
  `creator` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `phrase`
--

INSERT INTO `phrase` (`id`, `hitokoto`, `type`, `source`, `creator`, `created_at`) VALUES
(1, '与众不同的生活方式很累人呢，因为找不到借口。', 'a', '幸运星', '跳舞的果果', '1970-01-17'),
(2, '面对就好，去经历就好。', 'a', '花伞菌', 'umbrella', '1970-01-18'),
(3, '将愿望倾入不愿忘却的回忆中……', 'a', 'ef-a tale of memories', 'lqsasa', '1970-01-18'),
(4, '美好的人眼里映出的世界也是美好的。', 'a', 'ARIA', 'misaki', '1970-01-18'),
(5, '看似美好的东西，往往藏着陷阱。', 'a', '只有神知道的世界', '紫月岚', '1970-01-18'),
(6, '天空是连着的，如果我们也能各自发光的话，无论距离有多远，都能看到彼此努力的身影。', 'a', '龙虎斗', 'Sai', '1970-01-17'),
(7, '恋ではなく、爱でもなく、もっとずっと 深く重い。', 'a', 'sweet   pool', '占星术杀人魔法', '1970-01-18'),
(8, '花开花落，再灿烂的星光也会消失。', 'a', '圣斗士星矢', '水幻之音', '1970-01-18'),
(9, '挡着在我们面前的是巨大庞然的人生，阻隔在我们中间的是广阔无际的时间，对于他们，我们无能为力……', 'a', '秒速五厘米', 'zjl4835751', '1970-01-18'),
(10, '我是一个经常笑的人，可我不是经常开心的人。', 'a', '未闻花名', 'Sai', '1970-01-18');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `type_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类目录id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `article_content` text CHARACTER SET utf8mb4 NOT NULL COMMENT '内容',
  `introduce` text DEFAULT NULL COMMENT '副标题',
  `addTime` int(20) DEFAULT current_timestamp() COMMENT '创建时间',
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT '阅读数量',
  `cover_image` varchar(1024) DEFAULT NULL COMMENT '封面图片',
  `author_id` bigint(20) DEFAULT NULL COMMENT '作者编号',
  `update_date` int(20) DEFAULT current_timestamp() COMMENT '更新时间',
  `label` varchar(64) DEFAULT NULL COMMENT '标签'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`Id`, `type_id`, `title`, `article_content`, `introduce`, `addTime`, `view_count`, `cover_image`, `author_id`, `update_date`, `label`) VALUES
(1, 1, '自学编程 vs 参加培训', '作为一名高校计算机专业教师，经常有人向我询问：\r\n\r\n我是非计算机专业的，想找一份程序员的工作，是不是应该报一个培训班去学？\r\n\r\n我自己除了在入门阶段上过两个电脑培训班（全部都在上个世纪九十年代）之外，后来就再没参加过，我觉得根本就没这必要，自学足矣。\r\n\r\n并且我对现在以赚钱为最高目的的、鱼龙混杂、弄虚作假成风的 IT 就业培训行业印象并不好，所以我总趋向于不推荐学生参加培训。特别是计算机专业的学生，如果我听到计算机专业的学生在毕业之前还需要参加一个软件培训班才能找到工作，那我一定会深深地叹息……\r\n\r\n但是随着问类似问题的人越来越多，我也开始日益认真地思索“通过参加培训班来学习软件技术”这件事情，是不是真的不应该推荐？\r\n\r\n本文就是我对这个问题思索的一点结果。\r\n\r\n在这里，我不讨论 IT 培训机构存在的必要性，这都是一个产业了，它存在的必要性还用废话吗？\r\n\r\n我关注的是从学习者角度而言，“自学”与“参加培训”这两种方式的对比和选择策略。\r\n\r\n首先明确一点，我认为，对于计算机专业的学生，如果还需要参加培训班才能找到工作，那么我可以肯定这个学生的四年时光是被浪费了，不应该这样的。不要把责任全推到外部环境上，哪怕学校再差，周围人再怎么不爱学习，只要真的认真学了，断不至于惨到不参加培训班就找不到工作的境地。\r\n\r\n那么，对于非计算机专业的学生，应不应该参加培训呢？要知道，以就业为目的的 IT 培训，学费通常高达数万，可一点也不便宜啊。\r\n\r\n我的回答是：是不是需要参加培训，这是要看人的。\r\n\r\n有些人不必花这个钱，通过自学完全可以找到工作，而有些人，参加相应培训是合适的。\r\n\r\n## 哪些人可以走自学之路而不用去报培训班呢？\r\n\r\n我总结了一下，适合于自学的人应该具备四个前提条件：\r\n\r\n（1）有足够的时间，不急着马上找工作。比如还是在校的一、二年级学生，或者现在有工作有饭吃，只不过是想转行跳到 IT 行业。\r\n\r\n这个时间段的长短，我个人认为至少一年，用两年的时间自学比较合适。\r\n\r\n（2）是一个有着较强的自控能力的人，能坚持长期的自学。\r\n\r\n就我的观察，能坚持自学的人在人群中所占的比例并不高，我觉得可能不会超过四分之一。\r\n\r\n（3）具有高中以上学历，更具体地说，掌握了高中数学所介绍的内容，同时，具备基础的英文阅读能力。不具备高中数学基础，很多技术你学不会，而看不懂英文，会给你的学习带来巨大的障碍，甚至难以为继.\r\n\r\n（4）具备基本的物质条件和学习环境，比如你不至于穷到买不起电脑买不起书，上不了网……\r\n\r\n如果你满足以上条件，那么，你完全可以不上培训班，也能靠自学学出来。\r\n\r\n不满足以上条件的，则可以考虑参加培训班。\r\n\r\n下面我展开来说一说。\r\n\r\n## 学习时间长短带来的影响\r\n\r\n#### 上培训班的一大好处就是“省时间”。\r\n\r\n培训机构通常会依据当前技术的发展现状、业界的人才需求变化情况，动态地调整教学内容，构建出一个比较完整的就业培训体系，能够让你在短短数月之内，带你入门。\r\n\r\n作为一名写了二十多年代码，参加过大大小小的一堆项目，学过一打以上的各种编程语言或技术的老码农来说，我认为编程中充满了套路，只要能掌握这些套路，把这些套路用熟，应付中低层次的软件开发工作是不成问题的。\r\n\r\n而在传授开发套路这块，培训机构是比较高效的，只要你选的是靠谱的培训机构，人别太笨，基础别太差，培训老师手把手教你，经过几个月的强化训练，多数编程套路都能学会。\r\n\r\n那培训机构的问题在哪里呢？\r\n\r\n问题也出在 “省时间”上。\r\n\r\n为了节约时间，培训机构必须要尽可能高效地将大量的知识“灌入”学员的大脑，同时必须通过达到一定强度的编程训练，让学员掌握那些开发套路。\r\n\r\n认知科学的研究成果表明，知识的消化与吸收，职业技能的学习与精通，本质上是在大脑神经元之间建立连接，重塑大脑结构的过程，这个过程的时间可以缩短，但不能无限地缩短。另外，不同的人，拥有不同的背景和基础，在学习与掌握相同的知识与职业技能时，所花的时间是不一样的。\r\n\r\n但培训机构是不管这些的，它的目的是赚钱，先把学生招进来，然后向他们的大脑中以尽可能短的时间塞入尽可能多的东西，只要能糊弄住面试官，让学员能找到一份工作就行了。\r\n\r\n所以下面这种现象是必然会出现的：\r\n\r\n同一班的学员中，那些原先有一定基础的，学习与消化知识能力较强的，多半能够在培训期间构建出自己的知识与技能体系，他大脑中的知识己经构成了一个整体，知识组织得井井有条：\r\n\r\n![选项卡](https://mynetdisk.top/assets/img/032001.05095371.jpg)\r\n\r\n另外一些学员，短时间内被灌入过多的知识，来不及组织和消化，他的大脑中知识就变成了这样：\r\n\r\n![选项卡](https://mynetdisk.top/assets/img/032002.f7d5ebb3.jpg)  \r\n很多开发高手都认为：\r\n\r\n编程是一种技能，是一种使用特定工具去解决各种问题的能力。\r\n\r\n多数人都能成为一名合格的程序员，但能成为优秀程序员的人数并不多，这里面的关键就在于分析问题与解决各种问题的能力存在着巨大的差异。\r\n\r\n这种分析问题与解决各种问题能力，并非天生，而是需要后天努力训练得来。\r\n\r\n使用刻意练习的方法，能帮助你有效地在特定的时间段内熟练地掌握特定工具的用法，会用特定的技术去解决己知领域的己知问题，但面对变化了的，真实的复杂的实际问题时，单纯的套路是没法解决问题的。\r\n\r\n好的培训班对于培养那些并不需要太多创造力的初级程序员（即我们所说的“搬砖”程序员）是有效的，它们设计了一整套比较完整的、符合当下业界实际需求的培训体系统，并且有意无意地也应用了一些教育学的研究成果，它们其实是在传授一些开发模式和编程套路，它们的目的，就是在比较短的时间内，将这些开发模式与套路灌入学生大脑，让其能机械式地反应就行了。\r\n\r\n不少培训班的训练模式，有点类似于应付高考。\r\n\r\n回想一下，为应付高考，在高中是怎么干的？\r\n\r\n分析高考试题类型，为每种类型总结出相应的解题套路和技巧，然后反复训练，以便能达到熟练的程度……\r\n\r\n培训班的方法其实与之一致，只不过其学习成果的验收方法不是全国统一的高考，而是由各用人单位组织的“单独考试”罢了，培训班的成效，以其学员能通过多牛企业的面试，拿到多高工资的 Offer 为衡量标准。\r\n\r\n所以，培训班的大问题，就是它只教授工具与技术的具体使用方法，介绍一些典型的套路，但却无法或很难提升学员的分析问题和解决问题的能力，因为这种能力的提升，是无法短期速成的。\r\n\r\n对于学员本身的长远成长，以盈利为目的的 IT 就业培训班其实漠不关心，这是由资本的本质所决定的。\r\n\r\n对此，上培训班的学员自己必须心中有数。\r\n\r\n## 学习者个人因素带来的影响\r\n\r\n前面说过，自控能力强的人在人群中所占的比例不高，很多人都是克服不了人性的弱点——好逸恶劳，导致学习活动不能坚持，三天打鱼两天晒网，……，对于这些人，需要外部环境来“约束”和“强制”他们学习，只要经济条件许可，参加培训班是一种可行的路。\r\n\r\n道理很简单：\r\n\r\n培训班营造了一个集体学习的大环境，同时，学员花了五位数的钱，难道不肉痛？\r\n\r\n那还不好好学！不然，那钱不白花了吗？\r\n\r\n有了这个环境，有了这种怕损失的心理，学习自然不会偷懒，只要时间与精力投入了，学习总会有效果的。\r\n\r\n对于那些意志坚定有毅力的人来说，其学习动力来自于内，根本就不需要有这样的一个外部强制力量，就能主动地认真地学习。\r\n\r\n这种人，走自学之路是推荐的。\r\n\r\n但同时要知道，决定走自学之路的人，面临的一个主要问题是：很容易走错路，走弯路，掉坑里……\r\n\r\n所幸的是这个问题在互联网时代被大大的缓解。最近几年兴起“知识变现”，其特征就是可以用钱来买知识，买时间。\r\n\r\n你只要愿意为学习投入，花必要的费用，就能得到被其他人整理好的精炼过的知识，就能了解他人经过多年总结而得到的经验，从而节省大量的时间，提高了学习效率。\r\n\r\n比如我个人就在罗胖的得到 App 上花费了上千元订阅吴军的《硅谷来信》、王煜全的《前哨》、万维钢的《精英日课》等专栏，从这些每天推送的音频中，我获得了很多有价值的信息，一点也不亏。\r\n\r\n又比如知乎的 Live 也是汲取、传播与分享知识的双赢平台，我第一次办的 Live——《如何自学计算机专业课程》，第二次办的 Live——《如何自学编程》，都是我总结二十年开发和自学经验，十多年教学经验而得到的，我相信听众只需要认真地听听这些 Live，就能帮助听众少走很多弯路，有效地提升自学效率。\r\n\r\n其实各种学习资源，互联网上还有好多，比如国内外名校的 MOOC，都是可以免费去学的，还有诸如知乎、StackOverflow、简书等网站，上面都沉淀了大量的他人的知识与经验，你还可以通过互联网直接向特定领域的牛人请教，比如知乎、微博都开通了付费问答，花些钱，就能得到那些在特定领域经验丰富的人的建议，向这些“老师”请教的机会，以前是不存在的，……，\r\n\r\n有这么丰富的资源，为什么不去主动利用这些资源来提升自学的效率呢？\r\n\r\n所以，新的时代，我们学习观点要改变：\r\n\r\n为知识花钱，为学习花钱，为效率花钱，这是花钱的最好方式。\r\n\r\n花钱其实是省钱，并且最终能帮你赚钱。\r\n\r\n这看上去很俗，但其实就是这个道理。\r\n\r\n只要你能善用互联网上的各种资源，你会发现，通过自学入门并不会比通过培训班入门慢多少，而你在这个过程中所培养出来的自学技能，将让你受益终身！\r\n\r\n## 从更高更大的视角看自学与培训\r\n\r\n不管自学也好，参加培训班也好，最终都是为了培养软件开发的职业技能。\r\n\r\n现在让我们回归问题的本质——软件开发。\r\n\r\n软件开发实际上分为两个大的阶段：\r\n\r\n1 问题定义、分析与设计阶段，这是最需要智商、创造力和经验的阶段，真正的开发高手，就是在这一阶段体现出远超普通人的水平，而在这一阶段所需要的能力，对不起，培训班教不出来，也无法速成，只能靠人自己的努力，慢慢地培养和增强。\r\n\r\n2 使用各种技术与工具，将第一阶段的成果实现出来。这一块就比较机械了，多数人经过训练都能掌握，培训班在这一块的效率是很高效的，它们多半能在较短的时间内，教会学员特定编程语言（比如 Python）特定工具（比如 Git）与特定技术的使用（比如 Spring MVC），并且传授给他们一些开发的“套路”（比如分层架构与设计模式），从而将学员成功地培养成为一个能够“搬砖”的软件工人，即初级程序员。\r\n\r\n由于目前软件行业人才需求量大，因此，这些只能搬砖的初级程序员是很容易找到一份工作的，这也就是为什么培训班多半会收学生五位数的学费，而学生也愿意支付的根本原因。\r\n\r\n所以，上培训班，实际上是花钱让别人引你入门，成为一名初级程序员多半问题不大，经过三五年的工作训练，初级程序员多数能成为中级程序员，但到了这个级别，不少人的水平就开始停滞在这个水平上，徘徊若干年，直到遇到“职业危机”，主动或被动地下岗、转岗，成为“程序员是吃青春饭”这一观点的论据。\r\n\r\n要想爬出这个“技术青春饭”的陷阱，是否能从中级程序员进入高级甚至一流程序员的这一层次是关键。\r\n\r\n如果你选择通过培训入门，那么一定要牢记，培训班只能帮助你走出职业生涯的第一步，并且这一步它还要了你一大笔钱，这是你必须付出的代价。\r\n\r\n从初级到中级程序员，你所在公司可能还会通过一些给新人配备导师啊，入职培训、在岗培训等方式给与支持与帮助，再往上走，多半就只能靠自己自学了。如果你在的公司不提供这些帮助员工成长的机制，那么，甚至从初级到中级的成长之路，也得靠你自己。\r\n\r\n由此可以看到，自学其实是个人成长的最主要方式和手段。\r\n\r\n如果你具备我在前面介绍过的四个前提条件，那么在入门初期（其成果是成长为一名初级程序员），如果你不愿意花上培训班这笔钱，是完全可以通过自学达到相同的目的，当然，时间要长两到三倍。\r\n\r\n在培训班学习效率是比较高的，前面也说过，这里再重复一下：一方面是培训机构也都付出了相应的努力，让自己的培训课程体系尽可能地高效，二是有一个集体的强制学习的环境，这对于那些自控力不强的人来说，外界给与一定的强制性是必须的。三是学员花了较多的钱，如果家境不太好的，这些钱可能还是借来的，这也是一种强大的敦促努力学习的心理因素。\r\n\r\n三大因素作用下，培训班的作用立竿见影。\r\n\r\n所以必须承认培训班具有这些好处。\r\n\r\n但也必须明确，培训班的好处大都是短期的，用不了多久就会消散。\r\n\r\n自学就不一样了，虽然在初期，要入门成为一名初级程序员，可能花比培训班长两到三倍的时间，但正是这种较慢的自学过程，有效地锻炼了你的自学能力，而这种能力，对于你成长为中级和高级程序员来说，是极为重要的。\r\n\r\n你不妨看看周围，没有一个技术牛人不拥有很强的学习能力，各行各业都是如此。\r\n\r\n所以，对于想节约时间的，可以报个培训班入门，找到一份初级程序员的工作多半问题不大。\r\n\r\n但从长远来看，以成长为高级程序员为目标，初期通过自学入门，和通过培训班入门，后者并不会比前者更节省时间。\r\n\r\n好了，写了这么多，我相信我己经把问题讲清楚了，最后给一个流程图，帮助你在“自学”还是“培训”中作出选择：\r\n\r\n![选项卡](https://mynetdisk.top/assets/img/032003.0febda33.jpg)\r\n\r\n最后，祝大家学习进步！\r\n\r\n> 金旭亮<br/>\r\n> 北京理工大学 计算机学院讲师<br/>\r\n> 原文链接：https://zhuanlan.zhihu.com/p/27696141', '我是非计算机专业的，想找一份程序员的工作，是不是应该报一个培训班去学？', 1584671428, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/1.jpg', 1, 1584671428, '培训'),
(2, 2, '关键对话', '## 从“心”开始\n\n面对棘手的问题时，关键对话高手是这样关注任务目标的。\n\n### 从我做起\n\n- 记住，你唯一能直接控制的人只有你自己。\n\n### 关注你的真正目的\n\n- 发现自己即将陷入沉默或暴力时，停止对话，冷静思考你的动机。\n- 问自己这样一个问题：“我现在的行为显示我的动机是什么？”\n- 明确你的真正目的，问自己：“我想为自己、他人和人际关系做些什么？”\n- 最后，问自己：“如果这是我的真正目的，我该怎么做？”\n\n### 拒绝“傻瓜式选择”\n\n- 在分析行为目的时，留意在哪些情况下你会说服自己做出“傻瓜式选择”。\n- 留意你是否总是告诉自己必须在说实话和顾面子、成与败之间两极化选择。\n- 利用对比说明的方式消除“傻瓜式选择”的影响。\n- 说出你希望的目的之后，明确你不希望实现的目的，然后开动脑筋寻找可以实现对话的健康方式。\n\n## 注意观察\n\n在关键对话的过程中，人们很难准确的意识到会发生什么情况，很难了解出现这些情况的原因。当对话变得充满压力时，我们的做法往往会适得其反，下意识地表现出长期形成的不正确的压力应对方式。\n\n想打破这种错误行为的怪圈，你应当学会注意观察以下内容。\n\n- 观察对话内容和对话气氛。\n- 观察对话在哪些情况下会变得难以处理。\n- 观察安全问题。\n- 观察对方是否进入沉默或暴力应对状态。\n- 观察你的错误应对方式会在什么情况下出现。\n\n## 保证安全\n\n### 暂停对话\n\n当对方出现沉默或暴力应对的情况时，你应当暂停对话，营造安全气氛。安全气氛一旦恢复，你就可以继续进行对话了。\n\n### 判断哪种安全因素出现危机\n\n- 共同目的——对方是否觉得你在对话过程中关注他们的目的？是否认同你的对话动机？\n- 互相尊重——在对话过程中，对方是否感到你尊重他们？\n\n### 在必要时向对方道歉\n\n- 当你的破坏尊重感时，你应当向对方道歉。\n\n### 利用对比法消除对方的误解\n\n- 当对方误解你的目的或意图时，你应当利用对比法消除误会。先说明你不希望如何，然后说明你想怎样。\n\n### 提出共同目的\n\n当和对方的目的不一致时，你应当利用四部分营造共同目的。\n\n- 积极寻找共同目的\n- 识别策略背后的目的\n- 开发共同目的\n- 和对方共同构思新策略\n\n## 控制想法\n\n如果强烈情绪让你在对话中陷入沉默或暴力，试试下面的方法。\n\n### 行为方式回顾\n\n**关注你的行为表现**。 如果发现自己正远离对话，问问自己在做什么。\n\n- 我是否陷入沉默或暴力应对方式？\n\n**确定行为背后的感受**。学会准确识别行为背后的情绪\n\n- 导致这种行为的情绪感受是什么？\n\n**分析感受背后的想法**。学会质疑你的结论，寻找感受背后的可能解释。\n\n- 造成这种情绪出现的想法是什么？\n\n**寻找想法背后的事实**。回到事实本身，放弃绝对表达，区别客观事实和主观想法\n\n- 形成这种想法的事实依据是什么？\n\n**注意似是而非的“小聪明”式想法**。尤其是受害者想法、大反派想法和无助者想法。\n\n### 改变主观臆断\n\n你应当询问自己以下问题\n\n- 我是否故意忽略自己在这个问题中的责任？\n- 一个理智而正常的人为什么会这样做？\n- 我的真实目的是什么？\n- 要想实现这些目的，现在我要怎么做？\n\n## 陈述观点\n\n和对方讨论棘手问题时，或是感觉自己可能会强迫对方接受自己的观点时，你应当采取综合陈述法。\n\n- **分享**事实经过。从最少争议、最有说服力的事实谈起。\n- **说出**你的想法。说明你根据这些事实得出的结论。\n- **征询**对方观点。鼓励对方说出他们看到的事实和产生的想法。\n- 做出**试探**表述。承认这些结论只是你的想法，不要假装其是事实。\n- **鼓励**做出尝试。创建安全感，鼓励对方说出不同甚至对立的观点。\n\n## 了解动机\n\n想要鼓励观点的自由交流，帮助对方拜托沉默或暴力的应对方式，你应当了解他们的行为动机，在对话中变现出巨大的好奇心和耐心，只有这样才能恢复安全感。\n然后，你可以使用四种有效的倾听技巧，从对方的行为中寻找潜在的动机。\n\n- **询问观点**。表明你很有兴趣了解对方的看法。\n- **确认感受**。通过表示高度理解对方的感受增强安全感。\n- **重新描述**。当对方说出自己的看法时，你应当重述他们的表达，表明自己不但了解对方的观点，而且鼓励他们分享内心的想法\n- **主动引导**。如果对方还是退缩迟疑，你应当“先发制人”，对他们的想法或感受做出最符合情况的猜测。\n\n在和对方分享观点时，应当注意一下几点.\n\n- **赞同**。在分享观点时对他人表示赞同。\n- **补充**。如果对方的观点有遗漏之处，赞同你们共享的部分，然后做出补充。\n- **比较**。当你们的观点相距甚远时，不要简单地认为对方的观点是错误的。而应当把你们的看法进行比较。\n\n## 开始行动\n\n要想把成功的关键对话转变成优秀的决策和一致的行动，你应当努力避免错误期望和不作为两种陷阱。\n\n### 决定如何决策\n\n- **命令式**。无须参与的决策方式。\n- **顾问式**。广泛征集意见，由少数人决定的决策方式。\n- **投票式**。以支持率为基础的决策方式。\n- **命令式**。人人都必须对最终结果表示同意的决策方式。\n\n### 明确执行细节\n\n在决策执行环节，你必须明确说明**行动人、行动目标**和**截止时间**等要素。**明确行为目标**，设定**检查时间**，记录任务细节并按时进行检查。最后，你应当督促人们对其做出的承诺负责。', '关键对话有三个特征：对话双方的观点有很大的差距，对话存在很高的风险，对话双方的情绪非常激烈。', 1600043400, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/2.jpg', 1, 1600043400, '沟通'),
(3, 1, '采用 Github Action 自动化部署博客', '关于自动化部署，起初我接触的是 Travis CI，配置很简单，使用起来非常简单\r\n\r\n后来 Github Action 完全开放，我就完全转 Github Action 这个自定义更加方便的 CI 系统了，起初我的自动化部署脚本也是自己写的 Shell 脚本，因为那时候相关的部署 Action 尚不完善，不支持直接 Push 到根地址，不过前段时间支持了之后我就放弃自己写的脚本咯\r\n\r\n那么如何使用 Github Action 呢？只需要在项目根目录新建 `.github/workflows/` 文件夹，再在其中新建相应的 YAML 配置文件即可，比如 `hello-github-action.yml`，名字随意啦，只是为了区分\r\n\r\n文件内写入相应的内容\r\n\r\n```yaml\r\n# action 名字\r\nname: Hello Github Action\r\n\r\non:\r\n  # 触发条件，比如 push pull_request 等\r\n  push:\r\n    branches:\r\n      - master\r\n\r\njobs:\r\n  build-and-deploy:\r\n    # 运行环境\r\n    runs-on: ubuntu-latest\r\n    steps:\r\n      # 各步的任务\r\n      - name: Hello Github Action\r\n        run: echo \'Hello Github Action\'\r\n```\r\n\r\n这样我们就完成了一个简单的 Github Action，它会在我们每次 push 到 master 分支时触发，之后就会打印 `Hello Github Action`，虽然看不见……\r\n\r\n## 自动化部署到 Github Pages\r\n\r\n我们对上面的配置稍作修改，目标就是在源仓库 Push 时触发，此时将博客源码构建成静态文件，并将它们 Push 到 Github Pages 仓库即可\r\n\r\n```yaml\r\nname: Vuepress Deploy\r\n\r\non:\r\n  push:\r\n    branches:\r\n      - master\r\n\r\njobs:\r\n  build-and-deploy:\r\n    runs-on: ubuntu-latest\r\n    steps:\r\n      # 使用某个 Repo\r\n      - name: Checkout ????️\r\n        uses: actions/checkout@v2\r\n\r\n      # 构建静态文件\r\n      - name: Install and Build ????\r\n        run: |\r\n          npm install yarn\r\n          yarn\r\n          yarn docs:build\r\n\r\n      # 部署到 Github Pages\r\n      - name: Deploy ????\r\n        uses: peaceiris/actions-gh-pages@v3\r\n        with:\r\n          personal_token: ${{ secrets.PERSONAL_TOKEN }}\r\n          publish_dir: docs/.vuepress/dist\r\n          external_repository: SigureMo/SigureMo.github.io\r\n          publish_branch: master\r\n          cname: sigure.xyz\r\n          user_name: \"github-actions[bot]\"\r\n          user_email: \"github-actions[bot]@users.noreply.github.com\"\r\n```\r\n\r\n这里第一步是使用你的源代码 repo，其中 uses 是指使用了某个现成的 Action，比如这个 `actions/checkout` 就是 [`github.com/actions/checkout`](https://github.com/actions/checkout) 的 `v2` 版本，如果需要 submodule 或者 lfs 可以通过 `with` 选项来修改参数\r\n\r\n第二步是将博客源码构建成静态文件，不同的框架的构建方法自然不同，我这里是以 Vuepress 作为示例\r\n\r\n第三步就是将构建好的静态文件 Push 到目标的 Github Pages 对应的 Repo 了，这里使用的是 [`peaceiris/actions-gh-pages`](https://github.com/peaceiris/actions-gh-pages)，如果你只需要部署到当前 Repo 的 `gh-pages` 分支上的话，你只需要配置以下内容即可\r\n\r\n```yaml\r\n- name: Deploy ????\r\n  uses: peaceiris/actions-gh-pages@v3\r\n  with:\r\n    github_token: ${{ secrets.GITHUB_TOKEN }}\r\n    publish_dir: docs/.vuepress/dist\r\n```\r\n\r\n这里的 `secrets.GITHUB_TOKEN` 不需要配置，Github 会自动提供\r\n\r\n但是如果你和我一样想部署到 `<username>.github.io` 的话，就需要稍微改动一下啦，该 Action 提供了非常丰富的参数以供配置\r\n\r\n由于目标 Repo 和目标分支都变了，就需要分别设置下 `external_repository` 和 `publish_branch` 这两个参数咯\r\n\r\n另外，由于 Push 到外部 Repo 的话 `GITHUB_TOKEN` 的权限不足，因此需要提供其它的验证方式，比如 `personal_token` 和 `deploy_key`，这里提一下 `personal_token` 的生成与配置方式，该方法相比于后者也更方便一些\r\n\r\n依次进入`个人 Settings -> Developer settings -> Personal access tokens` 点击 `Generate new token`，随便填写个名字，然后下面勾选 `repo`（权限） 后确认 `Generate token`\r\n\r\n由于生成的 token 只能看一次，请确定复制后再关闭页面\r\n\r\n之后依次进入 `源 repo -> Settings -> Secrets`，点击 `New secret`，Name 字段填写 `PERSONAL_TOKEN`，Value 字段粘贴刚刚生成的 token 即可\r\n\r\n这样，该 action 在 `secrets.PERSONAL_TOKEN` 处就可以获得刚刚生成的拥有读写 repo 权限的 token，然后传入该 action 的 ACCESS_TOKEN 参数，进而完成整个部署过程\r\n\r\n这样就完成了权限的配置啦，该 Action 还提供了很多比较实用的参数，比如 `cname`，更多详情去看它的文档吧\r\n\r\n完成这些，就可以重新 push 一下源代码 repo 试一下啦，还可以在源 repo 的 Actions 中可以看到相关进度\r\n\r\n## 同步到 Coding Pages\r\n\r\n虽然 Github Pages 非常方便，但是国内访问实在是太慢，加载太久的话就木有人愿意继续访问的说，虽然想尝试下 CDN，但貌似 CDN 有着更新不及时的缺点，强迫症表示无法接受\r\n\r\nCoding 是国内的软件开发平台，国内访问速度还不错，因此利用 Coding 作为国内的访问镜像也许是个不错的选择，只需要将国内域名解析到 Coding Pages，国外解析到 Github Pages 就可以啦\r\n\r\n我们首先在 Coding 新建一个项目，选择项目模板时记得选择 `DevOps 项目`\r\n\r\n进入项目，在`持续部署 -> 静态网站` 中开启该功能，记得勾选自动部署功能，之后就可以获得访问地址啦，而且还可以配置自己的域名\r\n\r\n为了能够自动将 Github Pages 的静态文件同步过来，我们需要配置一个 Action\r\n\r\n```yaml\r\n- name: Sync to Coding ????\r\n  uses: wearerequired/git-mirror-action@v1\r\n  env:\r\n    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}\r\n  with:\r\n    source-repo: \"git@github.com:SigureMo/SigureMo.github.io.git\"\r\n    destination-repo: \"git@e.coding.net:sigure/notev/notev.git\"\r\n```\r\n\r\n`source-repo` 和 `destination-repo` 自然分别对应 Github Pages Repo 和 Coding Pages Repo 的 ssh 地址，后者在 `代码仓库 -> 设置 -> 仓库设置` 下的 `仓库设置` 即可获得\r\n\r\n当然，我们需要拥有 Github Pages Repo 的读权限和 Coding Pages Repo 的写权限，该 Action 才能进行，这里需要配置下 ssh 公钥与私钥，公钥配置在 Github Pages Repo 和 Coding Pages Repo，而负责执行 Action 的源代码 Repo 则存储私钥\r\n\r\n为了安全起见，不要使用现有的 ssh 密钥，创建一个临时的 ssh 密钥对即可\r\n\r\n私钥直接保存在 Github 源代码 Repo 的 `Settings -> secrets` 中，而公钥则要保存在两个目标 repo 中\r\n\r\n对于 Github，直接在该目标 repo 中的 `Settings -> Deploy keys` 中添加该公钥即可\r\n\r\n对于 Coding，也是在 `代码仓库 -> 设置 -> 仓库设置` 的 `部署公钥` 配置即可，记得勾选写入权限\r\n\r\n此时再次触发 Action 就可以同步到 Coding Pages 啦\r\n\r\n## 同步到 Gitee Pages\r\n\r\n那么，为什么之前没有选择 Gitee 呢？因为 Gitee 的自动部署以及自定义域名都是 Gitee Pages Pro 的服务，前者可以通过 Github Action 来完成，但后者就没有办法了，如果你没有绑定域名的需求的话，Gitee 会是更好的选择\r\n\r\n我们在 Gitee 创建一个 Github 目标 repo 对应的 repo，在创建时的 `Import` 选项中填写 Github 目标 repo 的地址\r\n\r\n之后在新的 Gitee repo 下中的 `Services -> Gitee Pages` 开启该服务，emmm，此时就可以注意到该服务的更新需要手动更新，并不能像 Github Pages 那样自动更新\r\n\r\n为了完成 Github 目标 repo 到 Gitee 目标 repo 的同步，以及 Gitee Pages 的自动更新，我们还需要配置新的 Action\r\n\r\n```yaml\r\n# 同步到 Gitee repo\r\n- name: Sync to Gitee ????\r\n  uses: wearerequired/git-mirror-action@v1\r\n  env:\r\n    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}\r\n  with:\r\n    source-repo: \"git@github.com:SigureMo/SigureMo.github.io.git\"\r\n    destination-repo: \"git@gitee.com:siguremo/SigureMo.git\"\r\n\r\n# 更新 Gitee Pages\r\n- name: Build Gitee Pages ????\r\n  uses: yanglbme/gitee-pages-action@master\r\n  with:\r\n    gitee-username: SigureMo\r\n    gitee-password: ${{ secrets.GITEE_PASSWORD }}\r\n    gitee-repo: SigureMo/SigureMo\r\n```\r\n\r\n首先我们需要将 Github 的静态文件存储 repo 的代码同步到 Gitee，它需要配置下 `SSH_PRIVATE_KEY`，也就是能够同时访问两个 repo 的私钥，这个和前面 Coding 的配置方法都一样啦，私钥放 Github 源 Repo，公钥放两个目标 Repo，值得注意的是，Gitee 的公钥不能直接在该 Repo 下的 `Settings -> Deploy keys` 进行配置，因为在这里配置的公钥并不能拥有对该 repo 的写权限，所以我们需要在个人 `Settings -> SSH keys` 中添加该公钥\r\n\r\n第二步就是更新 Gitee Pages 了，这一步很简单，将 Gitee 的密码配置到 `Settings -> secrets` 即可\r\n\r\n现在再重新 Push，你会发现 Gitee Pages 也会立刻重新构建，不过 Gitee 可能会弹出在非常用地登陆的消息，因为更新过程使用你的密码进行了登陆\r\n\r\n报错：不能同时同步到 coding & gitee 中\r\n\r\n```\r\nGithub Actions: [remote rejected] master -> master (shallow update not allowed), error: failed to push some refs\r\n```\r\n\r\n解决方案：\r\n\r\n```yaml\r\n- uses: actions/checkout@v2\r\n  with:\r\n    fetch-depth: 0\r\n```\r\n\r\n# References\r\n\r\n1. [actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)\r\n2. [gitee-pages-action](https://github.com/yanglbme/gitee-pages-action)\r\n3. [利用 Github 和 Coding 为 Hexo 博客开启 Https](https://zhuanlan.zhihu.com/p/111786790)\r\n\r\n> 版权声明：本文为 vuepress 博主「NoteV」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。<br/>\r\n> 原文链接：https://sigure.xyz/posts/2020/06/22/deploy-blog-using-github-action.html', '博客的部署往往只需要一行命令，但却需要花费我几分钟在本地的构建时间，完成博客内容后本应该放松放松心情，这几分钟的等待显得尤为惹人生厌。\n\n那么如何解决这个问题呐？当然是自动化部署啦，这样我们每次只需要将写完的博客 Push 到 Github 上，就可以触发相应的 CI 以完成博客的自动部署咯，所以这里就介绍如何使用 Github Action 来自动化部署博客', 1600741828, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/3.jpg', 1, 1600741828, 'Github'),
(4, 1, 'docker-compose使用volume部署mysql时permission deny问题解决', '## 问题\r\n\r\n整体情况为使用 docker 做 mysql 的容器，然后结合其他服务一起通过 docker-compose 启动，并且为了一次性建表和设置用户权限我又在 mysql 中封装了 setup.sh、schema.sql、privileges.sql 这些自定义的脚本，在 Dockerfile 构造时执行，到目前为止都是正常的。\r\n\r\n但是由于每次 down 掉容器后，mysql 的数据会丢失无法持久化，所以在 docker-compose.yml 中配置了 volume 参数，然后就产生了如下的报错，包括调试过程中的报错。\r\n\r\n首先列几个可能的报错，这些都和这个有关系。\r\n\r\n问题一：mysqld: Can’t create/write to file ‘/var/lib/mysql/is_writable’ (Errcode: 13 - Permission denied)\r\n\r\n问题二：’su’ command in Docker returns ‘must be run from terminal’\r\n\r\n问题三：/usr/bin/mysqld_safe: 637: /usr/bin/mysqld_safe: cannot create /var/lib/mysql/c0ce8fdc06d0.err: Permission denied\r\n\r\n以上几个问题都是我在调试过程中出现的报错，采用过以下办法解决：\r\n\r\n1、在 docker-compos.yml 中添加\r\n\r\n```yaml\r\nuser:\"1000:50\"\r\n```\r\n\r\n2、保证 volume 配置对应的是/var/lib/mysql 目录，不能是/var/lib/mysql/data 更深一层目录\r\n3、在 Dockerfile 中添加权限指令 chmod 一类的，来修改文件权限\r\n上述的方法均无效，在列出真正的解决方案之前，我把我重要的几个配置文件列出来\r\ndocker-compose.yml\r\n\r\n```yaml\r\nplate-nginx:\r\nbuild: ./nginx\r\ncontainer_name: plate-nginx\r\nlinks:\r\n- plate-client:plate-client\r\n- plate-server:plate-server\r\nports:\r\n- \"80:80\"\r\n- \"443:443\"\r\n- \"7000:7000\"\r\nplate-client:\r\nbuild: ./client\r\ncontainer_name: plate-client\r\nvolumes:\r\n- \"/home/picture:/app/client/app/upload\"\r\nports:\r\n- \"3000:3000\"\r\n- \"3001:3001\"\r\nplate-server:\r\nbuild: ./server\r\ncontainer_name: plate-server\r\nports:\r\n- \"7001:7001\"\r\nplate-mysql:\r\nbuild: ./mysql\r\ncontainer_name: plate-mysql\r\nvolumes:\r\n- \"/home/data:/var/lib/mysql\"\r\nports:\r\n- \"3306:3306\"\r\nenvironment:\r\nMYSQL_USER: root\r\nMYSQL_ROOT_PASSWORD: 123456\r\nphpmyadmin:\r\nimage: phpmyadmin/phpmyadmin\r\ncontainer_name: phpmyadmin\r\nlinks:\r\n- plate-mysql:plate-mysql\r\nports:\r\n- \"8888:80\"\r\nenvironment:\r\nMYSQL_USER: root\r\nMYSQL_ROOT_PASSWORD: 123456\r\nPMA_HOST: plate-mysql\r\nPMA_PORT: 3306\r\n```\r\n\r\nmysql 下的 Dockerfile\r\n\r\n```Dockerfile\r\nFROM mysql:5.6\r\n\r\n#设置免密登录\r\nENV MYSQL_ALLOW_EMPTY_PASSWORD yes\r\n\r\n#将所需文件放到容器中\r\nCOPY setup.sh /mysql/setup.sh\r\nCOPY schema.sql /mysql/schema.sql\r\nCOPY privileges.sql /mysql/privileges.sql\r\n\r\n#设置容器启动时执行的命令\r\nCMD [\"sh\", \"/mysql/setup.sh\"]\r\n```\r\n\r\nsetup.sh\r\n\r\n```shell\r\n#!/bin/bash\r\nset -e\r\n\r\n#查看mysql服务的状态，方便调试，这条语句可以删除\r\necho `service mysql status`\r\n\r\necho \'1.启动mysql....\'\r\n#启动mysql\r\nservice mysql start\r\nsleep 3\r\necho `service mysql status`\r\n\r\necho \'2.开始导入数据....\'\r\n#导入数据\r\nmysql < /mysql/schema.sql\r\necho \'3.导入数据完毕....\'\r\n\r\nsleep 3\r\necho `service mysql status`\r\n\r\n#重新设置mysql密码\r\necho \'4.开始修改密码....\'\r\nmysql < /mysql/privileges.sql\r\necho \'5.修改密码完毕....\'\r\n\r\n#sleep 3\r\necho `service mysql status`\r\necho `mysql容器启动完毕,且数据导入成功`\r\n\r\ntail -f /dev/null\r\n```\r\n\r\n## 解决方案\r\n\r\n真正的问题所在其实就是在服务器上的 volume 目录/home/data 和容器里目录/var/lib/mysql 拥有者不一样导致的，那么如何查看拥有者，需要使用如下几条指令\r\n查看容器中/var/lib/mysql 的所有者\r\n\r\ndocker run -ti --rm --entrypoint=\"/bin/bash\" plate_plate-mysql -c \"ls -la /var/lib/mysql\"\r\n\r\n可以从图中看出来这个目录的所有者是 mysql 用户组\r\n查看服务器中/home/data 的所有者\r\n\r\nls -la /home/data\r\n\r\n在 systemd-bus-proxy 这个位置原来是 root，这里由于被我修改了所以是这样，也就是说，这两个目录的所有者不同导致的权限问题，现在把他们的 id 统一就可以了，统一前要先查出来容器里的 mysql 用户组 id，然后修改服务器的/home/data 下的用户组 id\r\n查出来容器里的 mysql 用户组 id\r\n\r\ndocker run -ti --rm --entrypoint=\"/bin/bash\" plate_plate-mysql -c \"cat /etc/group\"\r\n\r\n可以看到 mysql 用户组的 id 为 999\r\n修改服务器文件用户组 id\r\n\r\nchown -R 999:999 /home/data\r\n\r\n修改后再去查看就如上图一样，权限变成了 systemd-bus-proxy，至于为什么没变成 mysql 呢，因为 999 是 docker 容器里面的权限 id，不是服务器的，所以服务器不识别也是自然的，之后再重启，执行\r\ndocker-compose build && docker-compose up -d\r\n\r\n就不会再有报错了\r\n\r\n> 版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。\r\n> 本文链接：http://blog.csdn.net/grape875499765/article/details/80089853', '整体情况为使用 docker 做 mysql 的容器，然后结合其他服务一起通过 docker-compose 启动，并且为了一次性建表和设置用户权限我又在 mysql 中封装了 setup.sh、schema.sql、privileges.sql 这些自定义的脚本，在 Dockerfile 构造时执行，到目前为止都是正常的。\n\n但是由于每次 down 掉容器后，mysql 的数据会丢失无法持久化，所以在 docker-compose.yml 中配置了 volume 参数，然后就产生了如下的报错，包括调试过程中的报错。', 1602037828, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/4.jpg', 1, 1602037828, 'Docker,docker-compose'),
(5, 2, '黄奇帆最新2万字解读中国地产大趋势（全文）', '12 月 26 日，在 2020 中国经济形势解析高层报告会上， 重庆市原市长黄奇帆出席并发言。他在演讲中深度剖析了我国房地产业的过去与现状，指出了未来的六大趋势，值得一读。\r\n\r\n**以下为演讲内容**。\r\n\r\n原来给我出的题目是讲房地产，我脑子里想着房地产可以讲一个半小时、两个小时，专门讨论讨论也是可以的。后来我们会议召集方跟我商量，除了房地产以外能不能对中美贸易战、贸易摩擦中的趋势也讲一下。我想了一下当然可以，这样一来本来讲两小时的就变成两个半小时。房地产就用一个小时讲完，还有一个小时可以讲中美贸易战，大家关心的事。我也知道这两件事我们社会各个方面都很关心，机会难得，我延长一点时间。\r\n\r\n<font color=#007AAA size=4>**首先就是讲房地产。中国房地产调控也好、发展也好，到了现在这个阶段大家都很关注今后五年、今后十年，比如到 2030 年，今后的十年中国房地产会出现什么样的趋势，我想很重要的是六个方面的趋势。**</font>\r\n\r\n**第一个趋势**，房地产的总量，每年的建设量会趋于缩小，规模会缩小，逐渐的减少。我们去年整个中国的房地产，去年一年的建设规模 17 亿平方米，建了 17 亿平米，销售规模也是 17 亿平米，大体上是世界之最。\r\n\r\n我自己估计 2030 年的时候，这 17 亿每年会逐渐减少，到 2030 年会降到 10 亿平方米左右。到了 10 亿平方米以后，是不是到 2040 年降到 5 亿平方米呢？也不会。到了 10 亿平米左右就变成一个平衡点，每年折旧和每年需要新建的数大体上进入平衡态，就变成一个持续稳定的发展状态。也就是说现在的 17 亿平米是高点，回落以后也不会降到 3 亿、5 亿平方米，到 10 亿平方米又会形成一个平衡点。\r\n\r\n这里面首先要说，大家知道 1990 年整个中国不管是民间造的还是政府造的，还是国有企业，那时候单位分房子，反正整个中国在 1990 年造了 1000 万平方米。上海 1990 年一年其实只造了几十万平方米，所以这么去想的话，那时候房地产市场还没展开，房地产公司基本没有。要说有造房子的当然都是政府机关和政府国有企业拿的钱，由房产局负责建，建了以后作为分配房搞，那时候的量很小。\r\n\r\n90 年代开始有了房地产市场，房地产公司也从 90 年代展开。到 2000 年，整个中国房地产一年的建设量是 1 亿平方米，这 1 亿平方米 70%-80%已经是房产公司造的，已经是市场化的了。那么从 2000 年 1 亿平方米到 2010 年的 10 亿平方米，我们国家破 10 亿是在 2010 年，可以说这十年涨了 10 倍，相当于翻了三番多一点。\r\n\r\n从 2010 年的 10 亿平方米又隔了八年，增长了 7 亿平方米，一共是 17 亿平方米。宏观上说就是从 2000 年-2017 年，18 年期间翻了四番，就是 16 倍还多一点。<font color=#007AAA size=4>**全世界房地产的增长规模以这么快的速度，从 1 亿平方米涨到 17 亿平方米，全世界一百年历史上绝无仅有。可见中国的房地产发展势头和规模。**</font>\r\n\r\n你如果根据这样的势头和规模想象一下，是不是今后十年再来翻一番，17 亿变成 34 亿呢？我刚才说了不可能，2017 年、2018 年 17 亿平方米，大体就是中国房产规模的天花板，碰上天花板进入拐点，往后是逐渐减少的。当然不会一年减 3 亿、5 亿平方米。<font color=#007AAA size=4>**总的意思就是当年怎么样往上涨，势如破竹的上涨，减的时候不会势如破竹往下减，而是逐渐的往下减，十一二年减掉 40%，大体如此。**</font>\r\n\r\n这是我讲的整个趋势。这就要解释一下为什么 2000 年-2018 年房地产的生产量能够涨 16 倍，或者说为什么 1990 年-2017 年，房地产从 1000 万平方米涨到 17 亿平方米，这个倍数不得了。这里边就有四个原因，造成中国一旦发力的时候房地产非常大规模的扩张。\r\n\r\n第一，1990 年的时候整个中国城市居民人均住房面积是不到 10 平方米，像上海人均住房其实只有六点几平方米，三口之家 20 平方米，这算是过得好的。你可能是个工程师、厂长，也就是三五十平方米，这是 1990 年的时候。那时候上海人的困难户是人均 2 平方米，你想象一下 8 个人家 16 平方米，不到 20 平方米。那 20 平方米要吃饭、要休息，又要睡觉，吃饭的时候在这间房里，做功课也是在这儿，睡觉的时候肯定桌子上睡人，地上铺了席子睡人，上面再吊个吊床也睡了，七八个人要睡在这里，住房是非常困难的。\r\n\r\n<font color=#007AAA size=4>**所以首先中国的住房从人均 10 平方米扩张到现在的人均 40 平方米，有的城市 50 平方米，就是住房改善的过程，一个非常大的刚需扩张的过程。**</font>这是第一个概念，就是中国在 1990 年以前住房在计划经济分配的时候，由于资源短缺分配的量极小，所以大家的住房是很困难的，这是改善住房扩张的需要。\r\n\r\n第二，大量的农村居民进城产生了刚性，小城市居民进中城市，中城市居民进大城市，大城市居民进上海、北京、特大城市等等。人口扩张。大家知道 1980 年改革开放初期，整个中国是 9 亿多人，不到 10 亿人，我们城市居民 2.8 亿人口，也就是说那时候我们的城市化率其实只有 30%，9 亿多人里边有 6 亿多人是农民，不到 3 亿的城市居民。到 1990 年的时候我们城市人口逐渐增长到了 4 亿多，到 2000 年我们城市人口到了 5 亿-6 亿，现在城市人口多少呢？不算农民工，我们城市人口有 7 亿左右。把农民工在城里常住人口也算城市人口，我们已经到了 9 亿多一点。那么农村里的农民人口现在是 4 亿多一点。\r\n\r\n讲这个意思就是城市人口扩张，当然同样需要人均 30、40 平方米，总之现在的中国城市人口 6 亿多，7 亿左右，还不算农民工的话，这 7 亿人口实际上都是平均达到了 40-50 平方米，这是第二块，就是人口扩张产生了巨大的刚需。\r\n\r\n第三，我们在城市发展中有个旧城改造，对一些棚户区、一些危旧房拆迁，许多城市差不多三分之一的房子是拆掉的，有些地方一般的房子拆掉。这种拆迁的过程，拆旧的要造新的，旧城改造，这一块也是发生在 40 年来，特别是近 30 年来城市发展中的一个故事，这一块也是个拆旧迎新，拆掉 1 亿平方米，可能造了 3 亿平方米来覆盖，这是一块新的补充。\r\n\r\n第四，我们正常的房地产折旧，中国的房子 50 年代的时候农村里是土坯房，城里是砖木结构房。土坯房五六年就要拆掉重造，里边没什么钢筋水泥砖瓦，就是土坯搭起来的，刮风下雨有四五年就重来了。砖木结构的房一般 15 年，城里的也要拆掉，这是一种。<font color=#007AAA size=4>**到了改革开放 1979 年以后开始造钢筋混凝土，那时候钢筋混凝土的标准就是 5 层楼到 12 层楼，这些房子的标准理论上没有任何人去破坏它，30 年左右就到了折旧年龄，拆迁重来，也就是说它只能生存 30 年。**</font>\r\n\r\n在这个意义上讲如果你 1980 年造的房，现在差不多又要拆了。中国这样的房屋也是钢筋混凝土的，但是水泥标准、钢筋混凝土各方面的档次比较低。一直到 2010 年以后，我们建设部出了新的钢筋混凝土建设标准，这个标准造出来的房子大体上都可以 50 年-70 年。那么世界各国现在的钢结构的房，欧洲、美国、香港、新加坡、日本、加拿大，这些发达国家只要是钢结构的房一般都是 100 年，没有地震这种特殊的外力破坏，不发生战争，正常状态下这个房屋可以生存 100 年。\r\n\r\n<font color=#007AAA size=4>**所以我们国家以前的房子 15 年、30 年，拆了造，造了拆，许多造的时候产生的 GDP 一到拆的时候全部归零。所以中国人花钱花的是最多的，积累的是不够多的。在这个意义上，我们的 GDP 常常造了很多效益不高，战略上讲无效的 GDP。我们辛辛苦苦，但是生活的质量、富裕度，由于这种无效其实付之东流的也不少。**</font>\r\n\r\n这四个情况是我们过去 30 年，从 1990 年到现在 1000 万平方米变成 1 亿平方米，变成 10 亿平方米，变成 17 亿平方米一年建设量的一个原因所在。从 90 年代 1000 万平米到 1 亿绝对量不多，但是增加的倍数这十年涨了 10 倍。新世纪初的十年从 1 亿变成 10 亿，又涨了 10 倍，这十年涨的最快。2010 年以后，到 2018 年涨了一倍，但是基数大了，这八年也差不多涨了 7 亿，所以从量来说大体上是这么个情况。\r\n\r\n为什么可以说今后的十多年，房屋建设不会 17 亿再变成 34 亿、40 亿，不会这么涨。因为刚才说到高速度扩张的四个原因大部分消失了。\r\n\r\n第一个就是人均现在到了 40 多平米，有的城市 50 平米，总之全国的平均值是 40 多平方。全世界的城市有的人家庭富裕，三口人住着 300 平米的别墅，500 平方的别墅，甚至有几套房。当然他的面积就超级多。但是就大数平均来说，一般到了 50 平方米左右，满足了刚需，再多的都是属于特殊的投资或者其他的收支的需要。\r\n\r\n基本面上说，不管是巴黎还是纽约，人均住房都在 50 平方米左右，美国人是世界上房子比较大的，他也没有变成人均 100、200。总之一个城市 1000 万去平均的时候，有人多有人少，平均就是 40-50 平米，伦敦和巴黎也是。就这个意义而言，当我们从 10 平方到 40 平方的时候是刚需的扩张。但是到了 40 平方米再去变成 100 平方米，那是特殊家庭富裕了以后各种原因，个案的发展。\r\n\r\n<font color=#007AAA size=4>**第一，补充刚需的缺口、补短板，满足 10 平方到 40 平方米的巨大的缺口，这个阶段过去了。以后除非发生战争，房屋敲掉了重新来。正常情况下这一块的补充量就很小了。**</font>\r\n\r\n第二，人口。中国的人口城市化率已经到了 60%，充其量再过十几年，到了 70%，城市化率还会提高，城市化进程还没完成。但是大体上到了 70%以上，就到头了，刘易斯拐点就拐过来了。城市化过程就是指农村的农民进城，不断进城，到一定阶段农村里不再有人进城，形成了平衡。这个平衡的拐点就是刘易斯拐点，大体上就是 70%-75%，所以我们现在总体上已经比较高了。也就是说今后十来年还会有十多个百分点，差不多还会有 2 亿人进城，这是确定的。\r\n\r\n但是这 2 亿人进城跟原来 4 亿人、5 亿人，后面有 10 亿农民，每年有几亿人往城里转，这个过程不同。它后面的后续部队越来越少了，所以就此而言农民数量在减少。这时候进城的人也不是铺天盖地的小城市、中城市、大城市、沿海的、内陆的都在吸收人，相当一部分城市的人口不再增加，一部分的城市人口在继续增加，但是增加的数量有限，少部分的城市可能还有人口比较多的扩张。在这个意义上，人口扩张的基数、农民进城的基数今后十年数量会大大下降。\r\n\r\n第三，从前几年开始，我们新造房的标准至少都是 50 年以上，这样一来折旧率下降了。本来假如有 200 亿平方米，你是 30 年到时就要拆，到时就变成烂尾豆腐渣的房，要拆掉。这个折旧的概念本来 30 年折完，现在变成了 50 年折完，这个基数又缩小了，这又是一个方面。旧城改造，大规模拆迁，为了建一栋楼把旁边还算正常的房屋一起拆了，城市布局调整，这些事情都在过去 20 年大规模的城市化过程中逐渐趋于完善。要说今后除非你这个地方突然要造个新城，你可能就会有一些大动作，一般来说像过去 20 年经常发生的每个城市都在扮演的大规模的动迁、旧城改造的故事，可能要减少 70%-80%。这四个因素都在收缩，所以房地产的建设规模也就差不多。\r\n\r\n另外从绝对总量来说，现在人均 40 多平方米，我们有差不多 7 亿多的城市居民。如果把今后农民工都算在里面，总而言之现在有七八亿人，人均 40 平方米，我们有 300 多亿平方米。那么这 300 多亿平方米或者今后如果 9 亿多城市居民，每人 40 平方米，360 亿平方米。每人 50 平方米，450 亿平方米。这 400 亿左右平方米今后当然会有折旧，那么这个折旧，如果按照 50 年平衡来算，每年就是 8 亿平方米。\r\n\r\n所以我刚才说到了总量下降，降到 10 亿的时候，又过了十来年，形成了一个新的平衡态，就是指过十来年整个中国的存量房屋，各种大中小城市的存量房屋有 400 多亿平方米的时候，用 50 年折旧，每年要折掉 8 亿多平方米。这就是要更新居住。到那时候如果还有一小部分是结构性的，各种因素的修修补补，增减和补充，总而言之 10 亿平方米就是个平衡。\r\n\r\n这是我想说的第一，就是结构性的原因使得我们在过去的 30 年从 1000 万变成了 17 亿平方米。在过去 20 年，从 1 亿平方米变成了 17 亿平方米，这是有四个原因。\r\n\r\n同样是这四个原因的逐渐消失或者问题逐渐缩小，使得它 17 亿平方米一年变成 10 亿平方米左右，到了 10 亿平方米左右又会形成一个新的平衡，以后主要不是城市扩大造房子，不是改善刚性缺口造房子，而是房屋的寿命折旧形成了一个增量与存量之间的调整，这是我讲的第一点。\r\n\r\n<font color=#007AAA size=4>**二，对房地产的价格趋势做个判断。**</font>\r\n\r\n我们还是以 2000 年的房子价格算账，因为 1990 年没有房地产市场，都是政府分配，你说不清是什么价。但是 2000 年的时候房地产市场价格已经商品化了。那时候全国平均的房价其实就是 1000 块钱左右，这是全国房价的总平均。\r\n\r\n上海的住房平均价格其实就是 2000 多块一平方，上海那时候最高档的地区，上海衡山路的各种很好的公寓，那时候也就是 6000 多块钱到 7000 块钱，那时候听起来就很贵，就像现在均价在 3 万的上海房价，然后出现了十几万一平方，你就就会觉得很贵。同样在 20 年前，上海房价在 2000 块钱，全国是 1000 块钱左右。\r\n\r\n那时候上海如果出现房价七八千，就会觉得很贵。所以那时候就这个价，经过这 20 年上海的房价从 2000 到现在的均价三万五左右。这个均价怎么算的呢？不是新生产的房子，是把各种地段，市中心的、郊区的，整个上海 2000 平方公里范围内，一环、二环、三环，2000 平方公里上的各种建筑形成的均价。所以高的价格十几万，低的价格也有一万多的，但是一万多已经要过了崇明岛了，就是上海的郊区的郊区的郊区，几乎在农村区了。<font color=#007AAA size=4>**从这个角度它整个的概念可以这么说，均价是从 2000 年 2000 块钱的均价，现在变成了三万五，涨了 16-17 倍，这是一个均价的概念。**</font>\r\n\r\n第二，高档房那时候 7000 块钱，现在是 12 万。也差不多涨了 16-17 倍。现在上海衡山路那个 2000 年 7000 一平方的，现在就是是 12 万-13 万。所以这 20 年房价不是翻三番，其实是三番半，四番左右。全国之前是 1000 块钱均价，现在差不多一万多块，全国的均价涨了 10 倍左右。北京要算账的话相信也是十五六倍，杭州也是。\r\n\r\n深圳会倍数更高，因为深圳 1990 年的时候是渔村，到 2000 年成了国家级的大城市，这个大城市的房价还没有上海那么高，但是现在深圳的房价不比上海低，所以他的倍率有 20 倍。\r\n\r\n总而言之中国的房地产全国而言平均是涨了 10 倍以后，在这 20 年。\r\n\r\n那么这就要分析涨 10 倍是什么原因，要有个结构性分析。任何问题只有把结构性的原因搞清了，你才能看到趋势。刚才说建筑总量也是分析结构才看得清趋势。同样，分析价格也要看结构。<font color=#007AAA size=4>**物价的问题、价格的问题，从来有三个原理来支撑：**</font>\r\n\r\n1.任何商品价格上涨和供求有关，供不应求就涨价，供过于求、供大于求就跌价，供求决定价格。这是一个原因。最近猪肉涨了 1 倍多，就是因为猪少了，我们原来每年任何一瞬间，整合农村地区养在家里、养在畜牧场里，存栏数大体有 7 亿多头猪，但是到今年 8 月、9 月只剩下 4 亿头，少了 3 亿头。整个猪的存栏数少了 40%，那自然根据猪的生长周期，猪的供应量就短缺了，短缺了价格就涨了，倒是对大家减肥有好处。少吃了很多的猪肉，对中国人的血脂和三高降一点有好处。但是总体来说供求决定了今年突然冒出一个“黑天鹅”。物价指数到 11 月份到了 4.5%，是这十年来最佳的物价指数。其中猪的因素在里面起了 3%，如果没有猪的因素现在的物价指数也就不到 2%，当然把猪的价格剔出也是不对的，因为一篮子的商品指数价格，任何一个东西多了少了都会影响别的方面。这是供求的概念。\r\n\r\n2.价格因素往往是货币现象。如果货币印发的多，价格就会涨。这就和基础货币有关了，我们国家在 2004 年的时候，整个国家基础货币发行量，就是印钞票的基础货币发行量是 4 万亿，到去年整个国家基础货币是 32 万亿，涨了 8 倍，翻了三番。这个基础货币出来当然要进入市场，会引发通货膨胀。但是大家又没感觉，这个杯子没涨价，或者说我们的生活用品很多也没涨价，因为所有这些平时使用的商品都是属于产能过剩，供过于求的，所以即使通货膨胀在买不掉的东西面前，通货膨胀也没用，商品不涨价还是不涨价。\r\n\r\n<font color=#007AAA size=4>**物价上升是三个因素，一是货币发行，通货膨胀。二是供不应求，如果仅仅供不应求货币没发行，供不应求也不会出现，因为大家都穷，穷的资金收缩，买不动东西，你说供不应求这种事情除非是很奇怪的管制，正常情况下不会的。**</font>所以在我们这十几年货币这么增加了，没有感觉各方面都通货膨胀，那这个钱总要出来，出到哪儿去呢？只有房地产是供不应求的，是一个从人均 10 平方到 40 平方的过程，是一个城市人口 3 亿、5 亿变成 6 亿、7 亿的过程。这个过程有一个巨大的蓄水池，使得资金涨了 8 倍，影响商品的价格自然也会往上涨。所以实际上通货膨胀支撑了房地产，或者房地产吸收了通货膨胀的因素，使得社会上其他的东西不怎么涨。今年可以说猪涨价吸收了各种因素，房地产倒没怎么涨。所以第二个因素是通胀。\r\n\r\n3.汇率。货币是一个国家自己的货币，从全球来看每个国家的货币对别的国家都会形成汇率，这个汇率如果升值了，这个时候是一种概念。如果贬值了，又是一个概念，那么如果贬值了，外汇进入中国买房子就变得便宜。如果你的货币升值了，外国人拿了钱来买中国的东西就显得贵。那么在这个过程中也会推动中国房地产价格往上升或者往下降。总体上在过去的 20 年，我们货币超发、增发，货币的增长率是最高的。但是之所以没有影响其他的社会商品，房地产立了大功，它等于像个大肚子把货币吸收到它这儿，社会其他方面反而平衡了。房地产之所以有这个吸收性不仅是因为它量大，而且它供不应求，这两个因素结合起来它就往上升。同样这个过程中，中国人民币也出现了贬值，要知道 90 年代的人民币是 1 美元换 2 块、4 块、6 块，后来变成了 7 块，最高的时候换到 8 块，1 美元换 8 块人民币，然后又有人民币逐渐升值，现在又贬值，到 7 左右。也就是说这个汇率变成也影响中国市场。\r\n\r\n讲这三个因素，过去的 20 年都是推过中国房价上升的。但是今后十来年这三大因素存在不存在？当我们的货币从 4 万亿增加到了 30 多万亿，涨了 8 倍。M2 过去十几年每年增长 10%以上，最高的时候增长 20%以上，现在开始你看已经连续三年中国的 M2 每年的增长就是在 8%-9%，很稳健，一位数的增长，也就是 GDP 涨多少，物价指数是多少，加在一起就是它的增长率。同样基础货币的发行量也大体上在 8%左右。\r\n\r\n<font color=#007AAA size=4>**总结，中国这几年的货币政策基本上稳定在跟 GDP 增长率同步，再也不会出现 GDP 涨 8%，货币涨 16%或者 20%，这样就不会有过多的货币进入到房地产的蓄水池，把房地产价格泡高，这是一个概念。**</font>\r\n\r\n第二，人民币基本上是在升值或者稳定当中，中国人民币今后十年又要从现在的 1：6 降到 1：8 或者 1：9，我认为不会出现这样的概念。人民币稳定或者还在升值，外资进来炒作房地产，买了你的房，等着你的房子升值的概率很小。因为如果人民币贬值他外汇值钱来买，买了之后中国房地产升值了他赚钱。如果你这个汇率显得人民币很硬朗，他用外汇换成人民币买你的房子就贵，过几年哪怕房子涨了一点，他的货币如果没有出现大起大落的话，他赚不了多少钱。所以汇率现象炒作中国房地产的可能性不大。货币现象使得房地产泡沫扩张可能也不大。供求上已经平衡饱和，说某个城市出现结构性短缺可能，但是整个中国的房地产还要每年去造很多的房子来满足大家的刚需，这个概念不成立，所以供不应求的现象小了，货币现象小了，汇率现象少了，通货膨胀、物价上涨的要求低了。从这个意义上讲，再想着炒房，十年翻一番、翻两番，来赚几倍钱的概率几乎归零。你说某一个地方的房子有可能，但也不会出现十年翻两番。所以在这个意义上大家别再把生活的理念用 2000 年-2015 年期间的经验来推理今后 15 年，反犯经验主义的错误，这是房价的问题。\r\n\r\n总体上我们的房价也不会大起大落，如果没有什么特殊的外力作用。比如香港的房价如果出现了美国金融危机的冲击，房价会下跌。这是一种国际上的外力特殊的冲击。那么如果国内出现经济危机当然也可能出现一阵子下跌，总体来说中国经济的稳定性，大幅度的房价下跌是不会的。但还要想着大幅度的房价上升，也是一种梦幻，做梦。总体平衡，局部的有涨有跌，这是个基本的描绘。\r\n\r\n第三个概念，就是中国的房地产债务会得到控制并且有较大幅度的下降。中国房地产世界之最的现象就是高负债。房产商平均负债率 84%，这是讲整个中国 9 万多个房产商的负债率在 84%，是不是我们中国的前 10 个、前 100 个大的房产商的负债率就低一点呢？2018 年中国前 10 大房产公司资产规模在 5000 亿以上到 1 万多亿之间的前 10 大房产公司，他们的负债率是 84%，跟 9 万个房产企业的负债率基本一样。香港人炒房地产，香港的房产公司可以说就是中国房产商的老师。\r\n\r\n因为香港在 70 年代、80 年代、90 年代就是一个房地产最发达的地区，1990 年的时候中国还没有房产公司，所以大体上中国的土地批租的方法，中国的房地产商运行的方法，90 年代向香港学来的。但是香港房产公司的平均负债率就是在 35%左右，香港的房产公司到了大陆来运行，是不是南方的橘子跑到北方就变了呢？\r\n\r\n也没有，现在香港的那些有名有姓的房产公司在中国的房产独立核算，负债率也是 40%左右，并不怎么高。可见房地产公司的负债率高是中国特有的现象。美国、欧洲也负债率不高，都在 50%以内。为什么我们的负债率特别高呢？大家只要看看房产商怎么运行的。\r\n\r\n首先是批租土地的时候，一块地如果有 1000 亩，1 亩地如果 500 万，那么 1000 亩地就是 50 亿。这 50 亿不是自有资金，是跟银行贷款来的。银行本来应该有自有资本金抵押物才能跟银行贷款，现在银行说你买地的钱我给你，买了以后这块地抵押给我，本来已经先有抵押品再借给你钱，现在这地方就交错了。这 50 亿的地买下来是负债，然后要把这个房子建起来可能要花 100 亿，这 100 亿就是要有一个开发贷，这个开发贷假如说他去借了 60 亿，他整个要 100 亿，他可以先借五六十亿滚动开发，分一期、二期开发，这是第二个，开发贷又是借来的。\r\n\r\n<font color=#007AAA size=4>**第三个是等到你把一期的房子造好了，他就进行预售。老百姓钱给了房产商，把全部的款项，包括按揭贷款付给了房产商，房产商的房子可能要过一两年才能封顶造好交房。**</font>这一年里面只要你拿了人家的钱，东西没交给人家，你就是欠债，这种欠债说得好听一点叫无息欠债，因为老百姓买房的钱没有利息，让房产商白白利用了。说得不好听，实际上是一个赖皮的欠债。这三个概念一起已经把房产商的一生都在负债概念总结出来了。中间总有一点自己的资本金或者利润在里面滚，所以负债率这三块就是到了 84%、85%，这都是讲正常的，项目运转正常、房产公司正常、规模不小，实力也很强的，就到这一步。几千亿的运行，三笔账一算就叠加起来了。\r\n\r\n如果这个房产商规模小一点、质量差一点，资金短缺的严重程度更厉害一点，他可能这三种资金过来还不能够把项目搞成，他可能还要欠施工款，施工队里农民工的工资欠款，建筑企业的欠款，或者说让建筑企业垫资来建设，以后房产卖掉以后再一起还债。这时候他可能都已经到了资不抵债，再进一步的等没办法的时候，职工乱集资投入到里面也是一种资金周转，也是一种负债。甚至进一步的来一个，房子不太好卖，说这个房子现在两万一平米卖给你们，卖给你们以后，你们跟我签了合同，我以后按每年 15%帮你们回购反租，也就是说你们买过去，然后你再交给我，我帮你们把房产出租，这套房子你如果 100 平方米，2 万一平米是 200 万，你 200 万给我，我给你 15%的年息，每年给你 30 万，相当于乱集资行为。售后反租，听着很规范，但这都是房产商透支过分的一种状态。\r\n\r\n所以不管是售后反租还是职工集资款，还是我们整个的房地产开发过程中的借高利贷，或者还有工程垫款，都表示房地产企业的一种透支。当后边说的这三四种透支出现的时候，这个房产商基本上进入资不抵债。如果这三四种情况都不发生，就是买地的钱贷款、开发贷拿一块，然后开发贷用完了房子基本上也造到一定阶段就预售，预售的时候把全款拿回来，再进行建设施工。他整个的过程就 80%多的负债，在这个意义上中国房产商聪明也聪明在负债，杠杆率极高。或者不可阻挡的经济规律使得中国房产商并没有赚太多的钱。\r\n\r\n<font color=#007AAA size=4>**大家有时候一说房地产暴涨 8 倍的价格、10 倍的价格，房地产一定是富的流油，某种意义上很多房产商就是在为债务打工，还本付息。**</font>当然如果在 100 亿的基础上，80 亿还掉了，赚十几亿还是可能的，要从这个角度他也是富豪。<font color=#007AAA size=4>**但是从房产产生了 8 倍、10 倍的价格上升，他居然只赚了百分之十几，其实里面有很多中国房产商不可评估的损失。**</font>可以这么说，中国房地产 8 倍、10 倍的增值的真正的载体，真正房地产富起来的群体是在座所有人或者整个社会老百姓，在这 20 年买房子的小业主群众。在这个意义上讲，正中下怀，挺好。我们房产挣了 100 万亿、200 万亿，80%的钱是老百姓拿去的。为什么呢？我说两个案例。\r\n\r\n中国房产商的融资房子，就逼着他房子一旦竣工，必须在半年、一年、两年内尽快把房子都卖掉，卖掉他要还土地款、还开发贷，卖掉以后预售房的欠款结账清零。卖掉以后他把职工集资款还了，卖掉以后当然也能够把施工队伍的欠款还了。然后他才可能剩余下来如果有点钱的话，那是他的利润，他也可以说富豪，也没错。但是这里边有个概念，一切房产我说的十年、二十年涨了 8 倍，可不是你房产商造完的那一天涨了 8 倍，你造完之后卖的该什么价就什么价，可能你造完以后就等于你正常的施工成本运行，然后该有的利润，假如说在成本的 20%，成本是 100 的话卖了 120、130，就是你有三四十的利润。\r\n\r\n这些利润是毛利，还要交税，你有个 10%，就真的是很好的了。额外的涨出 1 倍、2 倍、3 倍，那就是 8 倍，往往要过 5 年-7 年，我们房地产商 80%不会把房子等涨 8 倍以后再卖，没有。他想这么做，他哪怕预测到五年八年以后涨这么多，但是他的悲剧在于他的资金模式必须在一两年之内还清，否则人家要拍卖的。从这个角度会有这个结果。\r\n\r\n同样，我们说李嘉诚的一个案例。在浦东中央公园配合有一个四季雅园，一共 700 套别墅，每套别墅平均在 400 多。他 1995 年买了土地造房，当时算的成本 1 万一平方。到了 2000 年我说上海的均价在 2000 多块钱，但是他这个别墅能够卖到一万一、一万二，他的成本在 1 万元左右，毛利有两千，这是如果当时就全部卖掉的话就是这个价。然后因为他的负债率极低，他所有的买地的钱是自己的，造房的钱自己的，不跟中国银行贷款，没什么负债，也不存在造好的要还款。\r\n\r\n他做了一个模式，这 700 套房一套也不卖，统统租赁，租赁以十年期为准，你住五年也可以，一般来租他这个房的都是高级白领，不能买，只能租，大家都签十年。十年以后到 2010 年，这时候他的房子已经到 12 万，到期的全部退出，700 套房子统统重新装修。重新装修一下一套房子 300 万装修费，每平方米花 8000-1 万块钱装修。装修完了已经是 2013 年开始卖房了，这时候已经到了 14 万、15 万一平方，700 套全部卖掉。你说他赚了多少钱？他原来的房子就算利息，十几年国外的利息就是百分之几，十年翻不了一番。也就是说在这个意义上他赚了大钱。\r\n\r\n那么高负债模式你可能高杠杆，你可能也是高利润。但风险也极大。但是对于房地产十年、二十年增值 5 倍、8 倍的来说，保存着，低杠杆持有着是最大的发财。在这个意义上整个中国的房产商很少能够持有房屋赚到 8 倍再卖的，这种案例中国前十大的房产商没有一个有，因为他们都是 80%以上的负债，他想持有也持有不了，每年借 1 万亿的债。\r\n\r\n7%的利息，甚至还有 10%的利息，每年的利息要付 1000 亿，还要还本。现金流每年要 3000 亿的转，那你不会每年把多少万平方米一起卖掉，你每年卖的房子周转资金来不及，支撑着一个巨大的周转，支撑着一个巨大的面子，一个不当心就是巨大的窟窿。所以中国房产商的模式仔细看是不行的。\r\n\r\n也就是在过去的 20 年，高速扩张的面积、高速扩张的流量，这种情况下能够支撑，在今后这个状态这种模式死路一条。一方面这个量不能这么大规模的造，第二是房价也不会翻一番，翻两番，这时候你再去高杠杆的撑，资金利息背着都是形同自杀，政府的管制措施也会出台。所以在这个意义上讲，房地产的债务是会下降的。下降到多少呢？我认为至少去掉 30 几个点，从 80%降到 50%左右。在这个过程中，聪明的房产商自己修身养性降低债务，国家的管制也不能再让房产商占有那么多的债务资源。\r\n\r\n大家知道中国全部工商企业，银行债务量是在差不多 70 万亿，其实他对中国的 GDP 推进就是 5%左右，但是他占有的金融资产也是 70 万亿。所以我们有时候说工商企业制造业融资难、融资贵，如果房产商把他的 70 万亿减掉一半，把这 30 万亿加到实体经济上去，实体经济融资难融资贵统统化解，就是资源平衡，总量就是这些，你这边多了那边少，最后就不平衡。是个结构性改革的问题。\r\n\r\n<font color=#007AAA size=4>**所以在这个角度，政府只要出三招，房产商的债务一定下来。**</font>\r\n\r\n<font color=#007AAA size=4>**1.任何房产商不许再欠着债买地，买地的钱必须是自有资金，不能负债。**</font>全世界如此，只有中国惯着房产商跟银行拼命贷款，然后银行也愿意让房产商贷款。一块地 50 亿，我借你 50 亿，抵押品都不要。所以在这个意义上银行要改变这个行为，政府卖地时候的资格审查，最重要的一条就是买地的钱是自有的，不跟银行、信托借款。总之是企业自有资金，是自己的资本金。有了这一条立马房产商负债可以下来 20 个点。\r\n\r\n<font color=#007AAA size=4>**2.当然是对房地产不能再搞那么宽松的预售房，预售房负债一定要等二三十层的房子结构封顶。**</font>也就是说从预售开始到交房，你不能两年到四年，一般是半年到一年，也就是说差不多还有半年的时间，最长不能超过一年这个房屋要交。这么倒算的话预售款的时间就缩短，两年变一年，一年变半年，负债的状态也就收缩了。\r\n\r\n<font color=#007AAA size=4>**3.就是房地产商在今后的状态里，他会以持有房屋的心态来出租。**</font>那么持有房屋出租如果有债务的话，一旦你是持有的房屋出租，你的租金就可以通过信托搞 REITs，REITs 是每年的现金流的租金收入形成的一笔信托投资，这种信托投资好像是债务，但不算债务，算股权投资。REITs 的投资算股权，不算银行贷款的债务，然后租金的收入是 REITs100 亿，这 100 亿租金收入来还这 100 亿的十年、二十年、三十年的过程。这笔钱一进来就把房产商的贷款，本来贷款 100 亿，现在变成 REITs100 亿，但是那个相当于是股权资产，非债务资产。这么一算的话，这三笔账只要一搞债务就下降，各方面的资源就优化配置。\r\n\r\n这是我讲的第三个，中国房地产未来趋势，债务一定会下降，政府管理方式也会变，房地产盈利模式也会变。最终负债率会下降到 50%以内。\r\n\r\n<font color=#007AAA size=4>**第四个趋势，中国房地产商的数量会大幅度下降。**</font>\r\n\r\n刚才已经说了中国房地产企业有 9 万多个，我们城市人口一共 8 亿多，不到 9 亿。几乎是每 1 万人一个房产企业，8 亿人就是 8 万个，9 亿人 9 万个，这个企业不是房地产中介租赁公司，是指拿了土地造房子的开发公司，有 8 万到 9 万个。全世界所有国家，180 个国家的房产商加起来也没有 9 万个。美国大大小小房产商没超过 500 个，480 多个。\r\n\r\n包括香港也没那么多的房产商，几大房产巨头十多家，再加一些小一点的。但是总而言之没那么多，只有我们的房产商数量，刚才说全世界没那么多，欧洲 20 多个国家所有房产商，独立法人加起来不到 1 万个。这种房产商数量多如牛毛，遍地房产商也就是中国的一场狂欢。所以 17 亿平方米赢得了 9 万个企业的生活费，今后应该减。你要算一下，9 万多个房产商前 10 家，也就是刚才说的前十前差不多有七八千亿资产规模，1 万多亿资产规模的企业，他们造了整个中国房子的 30%，这是前 10 家。\r\n\r\n前 100 家，造了中国全部一年开发量的 70%，前 1000 家基本上造了 90%。这个意思还有 8.9 万家或者 9 万家做了百分之几，绝大部分是空壳公司，完全可以关掉。因为开也随便开，门槛很低。关也随便的关，今后肯定收紧。逐渐十几天后一方面市场萎缩了一部分，从 17 亿一年的建设量变成了 10 亿，从这个角度，各个方面今后的发展难度也加大，许多企业会转型。破产关闭，被收购兼并的，自我转型，然后每年检查年审的时候吊销执照，自我消失的。最终到 2030 年以后，最起码 6 万个没了，剩下 3 万个，这是用最宽松的思路想。严重一点 8 万个没了，留 1 万个都是会出现的局面。\r\n\r\n在这个意义上大量的人说自己在房地产公司就业，对不起了，会转掉一大块。所以小孩读书还搞房地产之类的，这个市场就业系统会大幅度的下降。要转行，要有长远规划。要规划也别往房产系统转，这当然不是绝对的，我是说不能再像原来那样房产系统养了多少万人，这也是个趋势。\r\n\r\n<font color=#007AAA size=4>**第五个趋势，我们的房地产从 17 亿变成 10 亿，这个下降的过程中。具体哪些地方是开发热点呢？我们过去从 1 亿变 17 亿过程，几乎东西南北中处处都是房地产，今后会比较多的集中在三块。**</font>\r\n\r\n<font color=#007AAA size=4>**第一个热点，人口超过 1000 万的国家超级大城市，但是它还有潜力从 1000 万变 2000 万的超级大城市。**</font>比如说上海，人口过了 1000 万，现在实际上是 2500 万的超级大城市，他再过十年也不会变 4000 万，基本上天花板封顶了。这时候上海过去几年，每年几千万平方米的房产开发量最后会越来越少的，他不会再这么扩张了。但是郑州现在 1000 万人口，也是国家超级大城市，我们国家的中心城市分几个等级，1000 万人以上的城市叫国际级的超级大城市，超大城市。500 万-1000 万叫特大城市，100 万-500 万叫国家级大城市。50 万-100 万是中等城市，50 万以下是小城市。在这个意义上的房地产热点会在超级大城市中的 1000 万往 2000 万扩张的城市走，已经过了 2000 万的比如北京和上海，不会再去把城市规模扩大一倍造许多房子，这是一个热年。\r\n\r\n<font color=#007AAA size=4>**第二个热点，就是超级大城市都会带出一个大都市圈，这个大都市圈是以超级大城市的市中心 100 公里为半径画个圈，**</font>100 公里的半径的平方，3 万多平方公里，也就是超级大城市本身可能只有两三千平方公里的城市区，但是 100 公里的半径画个圈形成的 3 万多平方公里当中的中等城市、小城市，是会加速度发展的。这是一个概念，这个概念不是超级大城市本身 2000 万人变成 2500 万人，而是指 100 公里范围内的独立于超级城市外边，属于超级城市的城市圈，可能现在 50 万、100 万、200 万、300 万，会不会变成 500 万呢？比如上海到嘉兴就是 80 公里，嘉兴现在整个城市是 300 万人，这是一个国家级大城市，不大不小，但是因为跟上海经济圈连上了，以后轻轨、地铁什么都通了，结果上海本身扩张不了了，他那边乘势而上。你们去看现在在上海周围发展的超级块的，浙江方面是嘉兴，江苏方面是苏州，他们这十年二十年增长率都很快，今后还会继续快。这是第二个概念，相当于首尔旁边，首尔本身 1000 多万人，但是它旁边有个 3000 万人的首尔大区，就是汉城。但是这个大区不算首尔，是整个周围的。同样巴黎旁边有各大巴黎区，伦敦旁边有个大伦敦区。纽约市旁边有个纽约都市圈。\r\n\r\n<font color=#007AAA size=4>**第三个热点，我们说的城市群。城市群是指几个大城市距离 200、300、400 公里范围内，这 400 公里范围内空间极大，有几十万平方公里。**</font>但是这个城市和城市会互相联系，这种城市群中你如果是大城市，可能 500 万变成 700 万，然后变成特大城市，特大城市也会扩张到 1000 万以上超大城市，城市群不管是长三角还是珠三角，还是京津冀，中国四大城市群，包括中部武汉长沙城市群，还有郑州、河北、河南、中原大地的城市群。我讲这块，中国的城市以后一个是城市群，城市群最远距离 400 公里直径，有一批城市互相之间几百公里。但是到了 500、1000 以上，上海跟天津两个大都市，大都市之间的合纵关系不是城市群，天津和北京是城市群，因为就是那么 100 多公里。\r\n这三个热点，房地产如果继续要开发就是在这三个热点上，其他地方拾遗补缺，大公司一般不会去那边展开，地区的本地公司补点缺口，大体如此。\r\n\r\n<font color=#007AAA size=4>**第六个趋势，中国房地产的销售模式。就是我刚才说到的 100%、99%造好了就卖的模式。**</font>在今后会发生转换，转换成什么呢？如果一个地方有 100 的房子，可能 20%的房子是政府的保障房，保障房是租赁的。第二是市场上房产商造的房子，差不多三分之一也会是租赁房，他长期持有租赁运作。这个租赁费用会是商品房价格的租赁房，而不是政府保障房、公租房的租赁费。然后再剩下 50%左右还是维持原来的商品销售，这是一个概念。那么这个社会上的老百姓最后有 50%左右是住在租赁房，50%左右里面的 20%多一点是商品化的租赁房，有 20%多一点是政府搞的租赁房。\r\n\r\n这样这个社会形成一个新的，房产是拿来住的，而不是拿来炒的。就形成一个新格局。在这种背景下整个房产的经营模式就会发生变化。那么房地产的金融工具里面，像 REITs 这类的业务就会比较大规模的开展，REITs 这个业务有很多房产商包括金融企业想搞，十年前就想搞，几乎没有成功的，没搞起来。因为中国的房地产从来不搞租赁，几乎都不搞租赁，最后都是一卖了之。你只要是销售房就没什么 REITs，我信托公司给你一笔贷款，你到时候还债就是了。只有 REITs 这样的房屋，租赁房才可以用 REITs 的方法搞，所以经营模式变化，融资变化也会变化。\r\n\r\n以上就把中国房地产的六个趋势给说清楚了。对于中国政府在管理房产商的时候也会逐渐按要求，把房地产是用来住的，而不是拿来炒的管控方法实现市场化、法治化、规范化的景象。因为我们现在为了调控房地产出了很多的行政性措施，限购、限贷、限价、限买、限卖，限价明明市场上 5 万一平方，你现在只能卖四万二，那不是鼓励投机吗？\r\n\r\n谁都知道市场上都是 5 万，二手房都在 5 万，新房子质量比二手房还要好，卖 4 万，又造成开后门效应，其实这是不可以的，这是一个限价的概念，房地产为了现金流他会降价，这是一种。第二种限贷，不给你贷款。第三种是你降价卖也不许你卖，今年你造好 10 万，只准卖 2 万，还有 8 万不许卖。\r\n\r\n<font color=#007AAA size=4>**老百姓这边限购，如果夫妻离婚了可以有权申请，就造成了很多人假离婚，假离婚最经典的案例是我以前的一个同事，**</font>老百姓这边限购，如果夫妻离婚了可以有权申请，就造成了很多人假离婚，假离婚最经典的案例是我以前的一个同事，告诉我，他说我儿子结婚了，他们要买房，工作单位挺好，也有点钱，还买得起房。但是限购，不能买。而且他这个不能买是这样，限购以后还要摇号，十个人摇到一个号，为了增加摇号的概率，他就要去申请买房的指标，因为限购了，他们小夫妻两个人新结婚可以有个指标，尽管父母亲有房子，但是脱离关系要办一个手续。第二就是让丈母娘丈人结婚，这是大人愿意，中国的父母对小孩是无微不至，什么事都肯干的。离婚以后就有两个指标，十套房两个指标去摇号，保险再保险，叫外公外婆 80 几岁离婚了，这样三连套的概念又要开个后门，为什么呢？\r\n\r\n因为魔高一尺道高一丈，政府官员的本事也是很大的，就来个必须离婚两年才能买房。现在离婚的有买房资格也不算。这帮兄弟也有办法，我说你怎么解决的？他说我们跟民政系统的熟人，民政部门帮你盖章，把时间改一改，延长到两年，好像也不犯大过，居然就盖出三个许可。然后去摇号摇到了两套，两套房因为这个房子是限价房，明明可以 5 万的，按 4 万左右卖的，他却买了 100 平米，立马就是赚 100 万，所以这个离婚结婚还真是价值百万。这是很荒唐的问题。所以这些不能长久，不符合中央要求。你一时权宜之计也无可厚非，出发点也是可以理解的，但是如果整个社会都用这个办法治理，那房产系统搞不好。\r\n\r\n应该什么办法弄呢？实际上政府只要在市场规则上做到六条，房产炒作就炒不起来了。\r\n\r\n<font color=#007AAA size=4>**第一条，就是非常严格的执行 90 年代就形成的，也是全世界都基本如此的买土地批租土地自有资金。**</font>我们工商企业注册资本总要有个三分之一，你注册了 500 万，银行借 1000 万，形成 1500 万的总投入，资本金总要占三分之一。房产商开发造房整个都是借贷，你土地钱相当于整个投资的三分之一，你应该要有自有资本金。只要卡住了这一条地王就炒不起来，所有的炒作背后都有银行。只要杜绝银行参与炒地，房产商是不可能把 50 亿变成 200 亿、300 亿的。所以在这个意义上炒房的核心是炒地，地炒不起来炒房也没了，这是第一条。这条政府管制极其容易，只要认真就能做到。\r\n\r\n<font color=#007AAA size=4>**第二条，土地价格拍卖永远不要拍过当期房价的三分之一，也就是政府永远不要做房价推高的动力。**</font>什么意思呢？如果这个小区周围一平方公里内的楼盘，现在当期的房价是 3 万一平方，你政府在这一平方公里里面的某个地方，比如说有 100 亩地，拿出来拍卖土地。千万不要拍成两万三万，你永远只能拍当期房价的三分之一，房价是 3 万，地价也就拍到 1 万。拍到 1 万如果还往上涨，说明这个地方土地供应不足，供不应求，短缺了，政府再拿一块地出来再拍，供地量要增加，供地增加价格也会下来。\r\n\r\n你不要觉得拍的越多政府土地收入越高，政府发财了，长远的话这个地区营商环境会被破坏。所以高地价必然带来高房价，高房价破坏营商环境，不能短视，要有长远的概念。从这个意义上，如果出现房产公司没有背银行来拍卖土地，但是地价还是很高，你就要研究供求上的问题，要多供应一点土地，把价格平衡到当期房价三分之一。这个地方只要 6 万一出来，原来 3 万、2 万一平方的房屋都跟着迎风而涨，所以政府卖地会推动房价上涨，这件事要控制住。你只要这个控制住了，炒地炒房的现象就会被遏制。\r\n\r\n<font color=#007AAA size=4>**第三条，还是和供地有关，在土地供应上面房产建设的总量上面，政府应该有理性的判断。**</font>一个城市如果 1000 万人，住宅面积人均 50，反正你造到 5 亿平方米就饱和了，不能造 6 亿、7 亿、8 亿，变成人均 150，肯定烂尾楼、鬼城、空城会出现，所以这是总量概念。写字楼根据什么来呢？大体上 GDP 如果你有 1 万亿，你 3000 万平米写字楼足以。这是一个城市空间内需刚需，多一点少一点是个左右，但不能多太多或者少太少，如果 1 万亿的 GDP，你只有 1000 万平方米写字楼供不应求，扼杀了金融商贸办公楼的需求。就是这个概念。但是你如果 1 万亿 GDP，造了 5000 万、6000 万写字楼，空楼又会出现。同样商铺百货点，大体上一个城市的商业零售额，比如上海一年 1 万亿的零售额，说白了也是 3 万元零售额 1 平方米商铺，意思是如果 1 平方米一年平均能够销掉 3 万元，那么这一平米的租金还有商店的成本打平，还能有盈利。\r\n\r\n如果 1 平方米只应对了 1 万元的零售额，商店都是要赔死的，或者商店实际上空楼一片，现在很多超级大百货 shopping mall 这些地方几乎门可罗雀，三分之一的商店不断的关，就是过剩了。有的城市一动手说造十个 shopping mall，一个 30 万平方米，我听了就当神经病，弱智在干活，这个没什么好说的。你这种规划出来房产商如果响应这种规划就来造，房产商是弱智的平方，一样的道理。<font color=#007AAA size=4>**反正你没脑子。做事独立思考就在这个意义上，市场分析，有基本常识。我在讲的这些都经济学上的知识，跟市场行为无关，跟政府也无关。**</font>在这个意义上政府官员要学市场知识，企业家要学市场知识，房产商当然要学房地产的市场知识，所以要遵循这一条，这一条首先是政府规划要负责。不能政府没规划，由着房产商造多少是多少，或者政府乱规划房产商没脑子，跟进多少是跟进，都会出矛盾的。\r\n\r\n<font color=#007AAA size=4>**第五条，老百姓销售的系统一定要管制住房产商销售过程中的销售行为，一个就是老百姓买房，首套房 20%或者 30%的首付款，70%-80%的按揭贷款，这是合理的。**</font>第二套房 50%首付，50%按揭贷款，老百姓如果到了第三套以上的房子，纯属在炒作，这第三套是他家庭本身，如果家庭生了小孩，小孩成家了自己搞一套房，这个和家庭的第三套无关。就算一个独立的家庭自己拥有的房子，一套是基本居住，两套是改善。到了第三套实际上进入炒作系统，你也没必要去敬他，100%首付，没有按揭贷款。按揭贷款对炒房系统，第三套就可以关闭。就是刚需的第一套应该二八、三七的有首付和按揭。第二套 50：50，第三套零按揭，不用限购。\r\n\r\n所以在这个意义上讲，政府把这个事情管好。这政府也要防止开发商，或者市场上乱七八糟的金融机构搞首付贷，名以上老百姓自己拿 20%-30%，比如 100 万一套的房子 30 万自付，结果 30 万这部分用了 P2P、校园贷、首付贷去贷款，甚至有房产商在这里边跟金融机构说好，你金融机构借给他一个首付贷，我对这个首付贷还来贴 5%的利息或者 6%的利息，这个利息房产商来背，你金融机构就付贷款给消费者，消费者负责几年内把首付贷款的本金还了，利息我贴了，房产商为什么做这个好事呢？其实要把他的房屋早点卖掉。相当于搞了一个出口信贷，卖方信贷，就是这个意思。但是这种办法用到这个地方混淆了信用、混淆了首付对房产的信用，当首付没有的全额贷款的房子就是美国人的次贷，次贷危机造成了几万亿美元的坏账，就是因为这块杠杆太高，所以这件事政府要管制住。\r\n\r\n如果政府把这些原则都管制住的话，实际上最终我们政府在政府市场平衡上基本上炒房系统就炒不起来了，但是有一件事，不管房地产怎么平稳，总有一部分人即使现在的商品房价格跌 50%他也买不动。所以总有一部分人要政府保障房，这个意思我们政府至少该有 20%，政府掏钱造的房子以保障的价格出租给老百姓，大体上 20%的公租房。另外还有一部分危旧房里住着的，被政府拆迁以后作为保障房安置的，这是有产权的，拆迁了他的房子，这也是一种保障房。总之在商品房和租赁房当中，政府应该有 20%的保障性租赁房，10%的产权型保障房。这样就形成整个社会如果有 1000 万人，30%人住在保障房系统，70%万人住在商品房。总之形成双轨制也十分重要。香港的问题就属于租赁房系统规模，说起来不小，香港 760 万人，380 万人住在香港政府的租赁房里，还有 380 万住在商品房，那都是白领，最贵的七八十万一平的房子。\r\n\r\n这个覆盖率是可以的，毛病在哪儿呢？这个租赁房人均只有 4 平方米，如果你三口之家进去，又是厨房、又是厕所、又是睡觉，又是小孩做作业的，或者会客，都在这个房子里。外边非常漂亮的香港，20 多层的公寓，一排一排的，外边的环境也不错，电梯一进去一个楼层 10 几套房子，一看就是集装箱抽屉式的房子。我去年去香港，现在香港特首，林郑月娥当时还没做特首，我们当时去就是参加林郑月娥当特首的活动，她还陪我一起看了香港的公租房。看完以后我得到的印象是覆盖率可以，面积太少，至少人均 15 平方米，我们中国政府所有的城市保障房要么不保障，要保障人均 15 平方米。\r\n\r\n三口之家 14 平方的话就是建筑面积 40 多平米的房子，那才像一个可以安顿的家。否则就是上海 1990 年以前人均两三平方，都是可怜巴巴的状态。所以在这个意义上做事，要加 10 平方。要加 10 平方公里，就是 1000 万平方米土地，容积率如果 1：4 就是 4000 万房子，就干这个活。这样的房子 10 万一平方造出来了，因为你不是商品房，4000 万 ×10 万就是 4 万亿，4 万亿听起来也是很了不得的，但是对香港的 GDP 来算账小菜一碟，应该做这件事。作为政府公共服务就该做这个事。你去学新加坡，新加坡 400 万人，300 万人住在政府公屋里，就是人均 20 平方米作为基本标准，作为基本标准，然后你有一定的档次、一定的级别，还可以住的更宽一点，也就是说整个新加坡所有的基本的公务员基本的白领、学校、医院，或者各种各样的老百姓，70%都住在里面，300 万人住在里面，100 万人买商品房那也很贵。\r\n\r\n就是说政府双轨制是应该的，香港的双轨制理论上他们以前也一直宣传，这是问题的一个陷阱，这应该把它解决好。以上说的就是房地产趋势以及政府怎么管控，如果把这六条管控好，政府也用不着限购限贷，就用市场化的办法、法治的办法、经济规则来把它调控好。那么房产商在这个过程中审时度势的，只要做到不四面出击，不去建太大的楼盘，不要搞高负债，不要制造粗制滥造不安全的房子，整个房产商的经营当然还是支柱产业，还是很有前途的。\r\n\r\n> 作者: 语雀·投资理财小组\r\n> 原文链接：https://www.yuque.com/invest/gi5ot6/qqqwmh?from=timeline', '12 月 26 日，在 2020 中国经济形势解析高层报告会上， 重庆市原市长黄奇帆出席并发言。他在演讲中深度剖析了我国房地产业的过去与现状，指出了未来的六大趋势，值得一读。', 1603852228, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/5.jpg', 1, 1603852228, '房地产'),
(6, 2, '被爆款折叠的女孩(笔记)', '2010 年，孙玲从工厂辞职，报了一个软件培训班。离开工厂那天，孙玲用日记记录下自己的心情，「说到彻底离开这里，还真是有点不舍。但这地方太狭窄了，不能够容纳我的心。」\r\n\r\n前《华尔街日报》驻京记者、作家张彤禾在自己的《打工女孩》一书中，曾描绘过珠三角地区的培训班盛况，一些主打「提升个人综合素质」的速效班，更容易收割迫切需要改变自身短板的打工者的心。而英语和电脑课虽然最受欢迎，但坚持下来的人很少，因为它们的收效很慢。\r\n\r\n但孙玲还是坚持了下来，她当时的积蓄只够学一期课程，于是白天学习，晚上打零工，似乎是与生俱来的韧性陪伴她度过那段跟命运作战的日子。于是靠着边打工边赚钱，和培训机构的分期付款政策给予的喘息机会，孙玲完成了为期一年的编程学习。\r\n\r\n2011 年下半年，孙玲通过了一家公司的面试，正式进入 IT 行业。工资 3000，转正后 4000，朝九晚六，有双休。\r\n\r\n2012 年 4 月，孙玲报名了一家英语培训机构。学英语的动力来自于一则广告，广告中说，掌握一门语言就是掌握另一种思维方式。学费 26500 块，总觉得自己天资不够的孙玲把前一年攒的钱全部投入其中，不够的部分分期贷款。\r\n\r\n2012 年底，觉得凭借高中学历未来找工作困难的孙玲又报名了西安交通大学的远程教育，学费 10000 多，同样可以分期。\r\n\r\n2014 年，孙玲通过了英语四级考试。拿到大专文凭后，她又接着报了深圳大学专升本的自考，周末去深圳大学上课，十几个科目，一年半的时间后，她得到了深大的自考毕业证书和学士学位。\r\n\r\n学习英语的经历让她认识了世界各地的朋友，于是萌生了想去外面世界看一看的想法，2016 年圣诞节，孙玲在一次聚会活动中的卡片上认真写下了自己的愿望——我要去其他国家至少生活一年，无论是学习还是工作。\r\n\r\n接下来是新一轮的知识储备战，刷题，考雅思，申请学校，2017 年 9 月 8 日，孙玲收到了从美国寄过来的通知书，次月，她漂洋过海，开始了自己的留学生活。\r\n\r\n2018 年 10 月，孙玲获得了 EPAM Systems 公司的 offer，这是一家在纽交所上市的信息技术服务公司，孙玲负责服务谷歌，工作地点在谷歌的办公楼，年薪税前 12 万美金（折合人民币约为 82 万）。\r\n![选项卡](https://mynetdisk.top/assets/img/20200922.4dcd6a0b.png)\r\n\r\n> 人物<br/>\r\n> 微信公众号<br/>\r\n> 原文链接：https://mp.weixin.qq.com/s?__biz=MjEwMzA5NTcyMQ==&mid=2653120714&idx=1&sn=ed362bd1b3295cf677e9fbdf66f9ef91&chksm=4eb28e0c79c5071a192cc778f42d87e9ce70dfe298aabbeb5142c9a306527de42e9474c7620c&mpshare=1&scene=1&srcid=092169SZep7DEdi12bVU3zye&sharer_sharetime=1600742413154&sharer_shareid=3d286a92128998d0a0082732c47ba4f5&key=b82f1b249fc3af4d8aa109e7ffbb81fe69e18f1eb9e313fe8a71f304bffc24d7122aece61aee0a98bdfafa15fd84eabb810fbb65ef51b62bf4e50cd43823ebc24111b8c731c1ed9deea67751606cf1e127616cebe255ab5514ac99109040bfe5ff76a2fdda335a26d217dd7356a69e5db2dd294c8a9b1a406540ada452eed702&ascene=1&uin=MTAyNDUwNjI0MA%3D%3D&devicetype=Windows+10+x64&version=62090538&lang=zh_CN&exportkey=Aa8mQjUTSavY2zg9464UAhc%3D&pass_ticket=sRFXlk5LQdPeGHjPr7wpy9%2BeAB%2ByYMDdSM8nFqBsoXgdnAesM9kDw1uij8i65PDN&wx_header=0', '「不想那么无聊」是孙玲在做人生每个关键决定的时刻优先考虑的因素，对十几岁的她来说，种地和理发都有一点无聊，所以要改变。到了深圳，每天在流水线上测试电池正负极也很无聊，所以也要改变。当上程序员，每天坐办公室朝九晚五，时间久了也难免无聊，所以依然要改变。人们对孙玲故事误解最深的是，觉得最终拥有一份高薪工作就是这个女孩最好的结局，但孙玲自己从来没有这么想过。', 1604374648, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/6.jpg', 1, 1604374648, '励志');
INSERT INTO `posts` (`Id`, `type_id`, `title`, `article_content`, `introduce`, `addTime`, `view_count`, `cover_image`, `author_id`, `update_date`, `label`) VALUES
(7, 2, '像TED一样演讲2:沟通升级（笔记）', '在一份涵盖 700 多份职业的详细分析报告中，牛津大学的研究人员总结出，因为自动化，我们今天 47%的工作将会消失。再强调一遍：人类近一半的工作岗位将在未来 10 年逐步消失。这是一个延伸的过程，开始于蓝领工人，即用双手工作的人，他们的工作现在正被机器取代。在不久的将来，自动化可能会取代全球 1.4 亿名知识型员工，“更智能”的认知系统可以更快更有效地完成他们的工作。研究表明，不同国家和地区，从运输到科技，从医疗到零售，从法律到金融，几乎所有领域都面临着相同的风险。\r\n\r\n数据专家安东尼·戈德布卢姆说：“如果你能够传达你的想法，引起别人的注意，那么你不会很快被替代。”亿万富翁沃伦·巴菲特说：“不同寻常的人会脱颖而出，并不是因为他们有 200 的智商或是别的。如果公开演讲时能收放自如，你就会脱颖而出，结果会远远超出你的预期。这是一项资产，将会持续五六十年。如果你不喜欢公开演讲，它就会是一种负债。”\r\n\r\n如何学会演讲，成为高效的沟通者，表达你的思想？请看这本书《像 TED 一样演讲 2》。\r\n\r\n在本书你将学习可操作的具体方法，学习如何锻炼人类独有的这项技能。打造顶级沟通者的秘诀针对的是行动者、实干家，他们是探险家和冒险者。这是为那些想要推动自己事业和世界前进的人而写的。\r\n\r\n在 21 世纪的知识经济中，没有机器、软件或机器人可以复制你的思想。但是，如果你不能说服别人认同你的想法，那么你的想法就无关紧要了。\r\n\r\n本书是为那些相信自己的想法很重要的人而写的，是为那些想要在思想时代获得竞争优势的人而写的，没有哪台计算机会取代你，也没有哪个竞争对手会超过你。掌握说服的艺术，你将无可替代。你会触动别人的内心，你会不断成长并大胆引领他人走向未来，你会将潜力发挥到极致并成就伟大的事业。\r\n\r\n## 情感原则\r\n\r\n故事是我们说服别人时最好的语言工具，这一点菲尔·奈特十分清楚。奈特在伟大领导者的工具箱中添加了一个秘密武器：情感。根据亚里士多德的说法，情感通过吸引观众的兴趣达到说服的效果，而故事是我们吸引观众的最直接的方式。耐克员工通过记住过去的故事，从而受到鼓舞去创造未来。\r\n\r\n情感是大脑的古老机制，会帮助我们记住重要的事，忘记其他的事，因为毕竟不是每件事都同样重要。如果你每件事都记得清清楚楚，大脑会很难运转。有些记忆会被存储起来，而有些则不会。\r\n\r\n来点儿压力？我们去哪儿找呢？这个方法就是讲故事。故事中嵌入紧张的情节，嵌入冲突和障碍，就相当于施加了一点儿压力，让听众保持全神贯注。故事是不可抗拒的，因为我们天生就通过故事思考，通过故事理解周遭世界，通过故事分享创意。掌握讲故事这门古老的艺术，你将在现代世界脱颖而出。\r\n\r\n如果你想让别人把打开他们心门的钥匙交给你，就给他们讲个故事。如果你想让他们把新车的钥匙交给你，也可以讲个故事。故事是我们将思想传递给别人的最佳工具。故事会引发大脑释放神经化学物质，迫使我们注意说话者，同情他们，理解他们，并对他们的想法感到兴奋。人类渴望故事，需要听故事。故事是不可抗拒的，讲故事的人魅力无穷。\r\n\r\n### 受众行动的三类故事\r\n\r\n有三类故事你可以并且应该加入希望说服别人采取行动的对话或演讲中。它们是：\r\n\r\n- 有关个人经历的故事\r\n- 有关顾客或客户的真实故事\r\n- 有关品牌或公司历史上标志性事件的故事\r\n\r\n### 有关个人经历的故事\r\n\r\n不管是自己经历挫折后取得成功的故事，还是由悲转喜的故事，都很有力量。把奋斗和成功当作修辞手段，我们能够彼此建立更深入、更有意义的关系。\r\n\r\n### 有关顾客或客户的真实故事\r\n\r\n作为四大会计师事务所中发展最快的公司，毕马威发现讲故事可以赋予员工目标感。\r\n\r\n### 有关品牌或公司历史上标志性事件的故事\r\n\r\n你的标志性故事是什么？每个人都有自己的标志性故事，每家企业、每个创业公司或品牌也都有自己的标志性故事。\r\n\r\n### 影响标志性故事的七个要素\r\n\r\n“标志性故事是一种随着时间的推移可以不断地被利用的重要资产，它可以在公司内外提供灵感和方向。”加州大学伯克利分校哈斯商学院营销学教授戴维·阿克和斯坦福大学工商管理研究生院的营销学教授詹妮弗·阿克写道。“标志性故事是获得关注、与人沟通、说服别人、改变行为和促成讨论的有力方式。标志性故事几乎总是比简简单单传达事实或特征更有效率和影响力。”\r\n\r\n阿克表示，一个有影响力的标志性故事包括以下七个要素：\r\n\r\n- 它得是个故事。标志性故事就是一个有开头、中间部分和结尾的故事（问题解决）。\r\n- 它得引人入胜。阿克夫妇表示，一个引人入胜的故事“是发人深省、新颖有趣、内容丰富、令人愉快的”。\r\n- 它得真实。故事的角色、场景和挑战必须真实。一个听起来不真实的故事会被认为是虚构的，可能会损害讲故事的人的可信度。\r\n- 它得有细节。生动或重要的小细节会增强故事的真实性。\r\n- 它得有惊喜。对电影而言，就是转折，\r\n- 它得引入能够引起共鸣的角色。听众应该可以从故事的主人公身上看到自己的影子。\r\n- 它得有冲突和张力。所有伟大的故事都由冲突和张力构成。如果没有挣扎或冲突，故事就会变得很无趣。一位能够引起听者共鸣的主人公克服了重重障碍，最终取得成功，这种故事是不可抗拒的。\r\n\r\n标志性故事会帮助你、你的产品和品牌脱颖而出。这是形成差异化的一个因素，因为没有两个品牌拥有相同的故事。你的标志性故事是什么呢？\r\n\r\n### 故事的情感原则\r\n\r\n在没有情感诉求的情况下，也就是没有引起观众的情感共鸣的情况下，说服不可能发生。\r\n\r\n故事是我们构建情感诉求的最佳语言工具，因为人类天生喜欢故事。\r\n\r\n下次演讲或推销时你可以使用三种类型的故事：\r\n\r\n- 有关个人经历的故事；\r\n- 有关顾客或客户的真实故事；\r\n- 有关品牌或公司历史上标志性事件的故事。\r\n\r\n## 三幕式故事结构\r\n\r\n作家布拉德·斯通利用一个久经考验的讲故事的方法来建立信任。他遵循的结构几乎所有成功的好莱坞电影都用过，即三幕式结构。著名编剧悉德·菲尔德在 1979 年出版的《电影剧本写作基础》一书中推广了这个结构。\r\n\r\n这个结构并不是菲尔德构建的。他分析了数百部成功的电影，发现它们都遵循一种戏剧结构，这是我们的老朋友亚里士多德首先发现的。菲尔德说：“讲故事的时候，必须设置好角色，介绍戏剧性前提（故事的内容）和戏剧性情境（行动的环境），还要角色设置需要面对和克服的障碍，然后克服这个障碍。”菲尔德说，最重要的是，讲故事是一种可以学习并应用于任何领域的技艺，包括商业在内。\r\n\r\n悉德·菲尔德说，伟大的故事都用了下面这个结构，这种模式也适用于伟大的商业演讲：\r\n![三幕式故事结构](https://mynetdisk.top/assets/img/20201007.7e4e5511.jpg)\r\n\r\n约瑟夫·坎贝尔 1949 年出版的《千面英雄》“可能是任何理论家都能总结出通用公式的一本书”。汤普森指出：“坎贝尔追溯了数千年的历史，说明在人类会写字之前，我们就在一遍又一遍地讲述同一个英雄故事。”坎贝尔认为，每一个史诗般的英雄故事几乎都是相同的：一位英雄踏上旅程，通过了重要的试炼，最后得到提升。\r\n\r\n### 故事的三幕式结构\r\n\r\n下次演讲或展示的时候，遵循经典的三幕式故事结构：开端、冲突和解决。\r\n\r\n这个结构和讲故事一样古老，并且效果非凡。\r\n\r\n设置英雄在成功完成任务之前所必须克服的障碍，让观众处于悬念之中（绷紧一根弦）。\r\n\r\n讲故事时要有戏剧弧线，即张力、冲突和快乐的结局，以此触发观众的大脑释放催产素。\r\n\r\n## 一语中的\r\n\r\n热门电影或电视剧开始时总有一行吸引人的“一句话梗概”。没有一句话梗概，一切都白谈。一句话梗概用来说服别人接受某个想法。有吸引力的一句话梗概会用尽可能少的词说明主角、角色的目标以及冲突。\r\n\r\n一句话梗概很有效，因为它说的就是重点，正是大脑所渴望的东西。华盛顿大学生物学家约翰·梅迪纳表示，人类的大脑不会记录一件事的每个细节。大脑更擅长观察模式，总结一次经历的大意，也就是要点。\r\n\r\n### 少即是多的原则\r\n\r\n伟大的演讲都有一个主题，所有其他内容都是用来支撑这一重要信息的。\r\n\r\n下次演讲的时候，你可以想象是在给好莱坞电影设计一句话梗概。如果你要用一句话说服别人支持你的观点，只能用一句话，你会说什么？\r\n\r\n在演讲的前 15 秒钟就要介绍你的创意。\r\n\r\n## 语言——越简单越有效\r\n\r\n确定一个主题是打造引人入胜、简明扼要的演讲的第一步。要把 800 页的内容压缩成 14 分钟的演讲，\r\n\r\n- **下载一个文本可读性检测软件，比如应用程序“海明威”。这些移动或桌面工具使用可靠的算法来判断文本的可读性。** 这些工具会告诉你，你输入的文本最低需要什么教育程度才能读懂。如果里面有太多的行话，等级会较高。词语越简单——这也是我们的目标，等级越低。请记住，在这种情况下，越低意味着越好。\r\n- **编辑，编辑，再编辑** 肯尼迪身边有着世界上最伟大的演讲稿撰写人，但他仍然通过编辑、再编辑来改进讲稿。伟大的沟通者会让他们的演讲听起来轻松自如，因为他们付出了很多努力使其达到这种效果。\r\n- **要知道，观众会在大约 10 分钟后开始走神。** 有些神经科学研究发现，注意力持续的时间会长一点，但并不多……最多 15 分钟。似乎有一个内在的进化原因，导致人们在一段时间后会注意力分散。简言之，大脑觉得无聊了。所以要说到点子上，而且时间不能拖得太久。\r\n\r\n## 如何让故事拥有说服力\r\n\r\n亚里士多德在《修辞学》中指出，最有说服力的人会在演讲中插入大量隐喻和类比。他说，这些修辞手段会激发听众的兴趣，让他们采取行动。修辞让语言变得甜美清晰，根据亚里士多德的说法，它们“让学习变得愉快”。他说，隐喻具有“异国情调和迷人的特质”，让你的想法拥有说服力。\r\n\r\n类比是一个涵盖较为广泛的术语，用于比较两种不同的事物，表明它们之间的相似性。类比会迫使听众以不同的方式看待一个想法。在日常用语中，有几种形式的类比，隐喻就是其中之一。隐喻是一种文学手段，我们用一种东西来描述另一种东西，用一个词代替另一个词的意思。\r\n\r\n掌握古老的说服艺术需要理解类比的艺术和科学。没有类比，就没有说服力。类比会迫使人们摆脱传统思维。当一个想法或概念与以前的完全不同时，需要非常规思维才能说服别人接受。“类比之所以有用，是因为它能变不熟悉为熟悉。” 波拉克写道，“类比能够把陌生的地带变成我们熟悉的地带，从而帮助我们在新的地带驰骋。”\r\n\r\n亚里士多德曾写道：“成为隐喻大师是迄今为止最伟大的事……它也是天才的一个标志。”普通的沟通者会采用直白的讲稿，而演讲天才会用类比将自己与别人区别开来。\r\n\r\n### 用类比思维讲故事\r\n\r\n- 类比和隐喻会让你的演讲拥有“语言美”。\r\n- 要开始关注类比和隐喻，你可以在任何地方找到它们。\r\n- 要想找到创意，你可以读一读沃伦·巴菲特每年一次的致股东的信和约翰·波拉克的《创新的本能：类比思维的力量》。\r\n\r\n## 激发创意的四种方法\r\n\r\n以独一无二、不同寻常的方式传达想法能吸引人们的注意力，并激发他们以不同的方式看待世界。但是，在你提出一个原创想法之前，你得先有一个新颖的想法。通过神经科学，我们对历史上创意最多的人的了解比以往任何时候都多。他们的经历可以帮助我们每个人想出最好的点子。\r\n\r\n### 有创意地讲故事\r\n\r\n- 一个人不可能想有创意就能有，必须创造理想的条件，有顿悟才能有创意。\r\n- 把不同领域的想法联合起来，听听电影配乐，读读书或散散步，以此来开启你的大脑，当你去一个陌生的国度旅行时这样做就更好了。\r\n- 在为自己的创意准备演讲时，不要一上来就做幻灯片。在创建幻灯片或文档之前，先置身于一个创意空间，好好想想故事的各个元素。要知道，人们不会被幻灯片感动，而会被你故事中的情感因素感动。\r\n\r\n## 克服恐惧\r\n\r\n面对恐惧，这是克服并最终征服它的唯一方法。克服恐惧后，取而代之的是与观众建立联系所带来的快乐。你应该为分享自己的想法而高兴。毕竟，它们有可能会改变世界，这是十分令人兴奋的事。\r\n\r\n- 伟大的沟通者不是天生的，而是后天练就的。从历史人物到今天的商业领袖，世界上很多最鼓舞人心的演讲者都克服了焦虑、紧张和怯场。你也可以的。\r\n- 神经科学家已经确定了两种方法，可以帮助你在压力之下有突出的表现：认知重评和排练。\r\n- 认知重评就是重新审视你对自己和生活中所发生的事的看法。将负面思想转为正面思想是获胜的关键。一旦你改变了内心的想法，就必须花时间练习。一遍又一遍地练习演讲能增强你的信心，让你为重大日子做好准备。', '如何学会演讲，成为高效的沟通者，表达你的思想？请看这本书《像 TED 一样演讲 2》。', 1606095455, 0, 'https://images.mynetdisk.vercel.app/react-blogs/cover/7.jpg', 1, 1606095455, '沟通');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `value` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '角色值',
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `is_del` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `name`, `value`, `description`, `is_del`, `create_date`, `update_date`) VALUES
(1, '系统管理员', 'ROLE_ADMIN', '管理员身份，拥有所有权限', 0, '2018-09-14 18:01:23', '2020-08-14 09:06:26'),
(2, '作者', 'ROLE_EDITOR', '编辑者身份，可发表文章', 0, '2019-04-12 17:53:52', '2020-06-20 14:00:04'),
(3, '用户', 'ROLE_USER', '用户访客身份，可评论点赞收藏', 0, '2019-04-12 17:54:37', '2020-06-20 14:00:11'),
(4, '体验者', 'ROLE_EXPERIENCER', '体验网站功能', 0, '2020-06-20 14:05:26', '2020-06-20 14:07:50');

-- --------------------------------------------------------

--
-- 表的结构 `siteinfo`
--

CREATE TABLE `siteinfo` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '网站名称',
  `link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `powerby` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '技术栈',
  `powerby_link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '技术栈链接',
  `copyright` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '许可协议',
  `copyright_link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '许可协议链接',
  `icp` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备案信息',
  `icp_link` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备案信息链接',
  `create_date` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='网站信息' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `name`, `link`, `icon`, `powerby`, `powerby_link`, `copyright`, `copyright_link`, `icp`, `icp_link`, `create_date`) VALUES
(1, 'MyNetdisk', 'https://github.com/MyNetdisk', 'https://images.mynetdisk.vercel.', 'Nextjs', 'https://www.nextjs.cn/', 'CC 4.0 BY-SA', 'https://creativecommons.org/licenses/by-sa/4.0/', '湘ICP备2020019391号', 'https://beian.miit.gov.cn/', '2018-present');

-- --------------------------------------------------------

--
-- 表的结构 `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `linkname` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '社交名称',
  `linkhref` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='社交用户' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `name`, `linkname`, `linkhref`, `icon`, `create_date`) VALUES
(1, 'MyNetdisk', 'Github', 'https://github.com/MyNetdisk', 'github', '2019-09-09 22:53:02'),
(2, 'MyNetdisk', 'Gitee', 'https://gitee.com/MyNetdisk', 'gitee', '2019-09-09 22:53:02'),
(3, 'MyNetdisk', 'csdn', 'https://blog.csdn.net/weixin_44663365', 'csdn', '2019-09-09 22:53:02'),
(4, 'MyNetdisk', 'juejin', 'https://juejin.im/user/1345457964191518', 'juejin', '2019-09-09 22:53:02'),
(5, 'MyNetdisk', 'zhihu', 'https://www.zhihu.com/people/kungfumi', 'zhihu', '2019-09-09 22:53:02');

-- --------------------------------------------------------

--
-- 表的结构 `types`
--

CREATE TABLE `types` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `typeName` varchar(255) NOT NULL DEFAULT '' COMMENT '文章类型',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `orderNum` int(11) NOT NULL DEFAULT 0 COMMENT '文章类型id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `types`
--

INSERT INTO `types` (`Id`, `typeName`, `icon`, `orderNum`) VALUES
(1, '技术总结', 'MailOutlined', 1),
(2, '生活与创作', 'AppstoreOutlined', 2);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `username` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `email` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `register_date` datetime NOT NULL COMMENT '注册时间',
  `last_password_reset_date` date DEFAULT NULL COMMENT '最后修改密码时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `register_date`, `last_password_reset_date`) VALUES
(1, '张炎', '1', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/13.jpg', '2021-03-28 22:17:13', NULL),
(2, '王文洲', '2', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/7.jpg', '2021-03-28 22:47:33', NULL),
(3, '周志辉', '2', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/15.jpg', '2021-03-28 22:51:42', NULL),
(4, '石璐婷', '2', 'a@qq.com', 'https://images.mynetdisk.vercel.app/react-blogs/avator/5.jpg', '2021-03-28 22:55:11', NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `phrase`
--
ALTER TABLE `phrase`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `label`
--
ALTER TABLE `label`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `types`
--
ALTER TABLE `types`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
