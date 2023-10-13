INSERT INTO `Article` (`cate`, `title`, `content`, `writer`, `regip`, `rdate`)
SELECT `cate`, `title`, `content`, `writer`, `regip`, `rdate`
FROM `Article` WHERE `parent`=0;