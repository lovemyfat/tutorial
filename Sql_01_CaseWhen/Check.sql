-- Case When 的好伙伴 Check 和 蕴含式！区别于逻辑与
-- 加入我们加了限制条件，每个城市女性人数大于 50 ，否则会引发暴乱
CREATE TABLE `poptbl2` (
  `pid` int(2) NOT NULL AUTO_INCREMENT,
  `pre_name` varchar(50) NOT NULL,
	`sex` int(1) NOT NULL,
  `population` int(2) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

alter table poptbl2 add CONSTRAINT population CHECK 
(sex = 2 and population > 50); -- 与 逻辑上的且 不同，如果第一个条件为假，则不再验证范围内，如果第一个条件为真，第二个为假，则判定为不合要求，而如果存在不能判定的，另一个为假则为假，为真则为真

INSERT INTO `poptbl2` (`pid`, `pre_name`, `sex`, `population`) VALUES
(1, '德岛', 2, 30),
(2, '长崎', 2, 70);
-- 3819 - Check constraint 'population' is violated.