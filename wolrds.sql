
CREATE TABLE city_me
(
   ID          INT          NULL     COMMENT '도시아이디',
  Name         VARCHAR(200) NULL     COMMENT '도시명',
  Country Code VARCHAR(200) NOT NULL COMMENT '국가 코드',
  District     VARCHAR(200) NULL     COMMENT '구역',
  Population   INT          NULL     COMMENT '인구수',
  PRIMARY KEY (Country Code)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           VARCHAR(200) NULL     COMMENT '코드',
  Name           VARCHAR(200) NULL     COMMENT '이름',
  continent      ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SufaceArea     VARCHAR(200) NULL     COMMENT '표면지역',
  Indep Year     SMALLINT     NULL     COMMENT '인뎁년',
  population     INT          NULL     COMMENT '인구',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대 수명',
  GNP            DECIMAL      NULL     COMMENT '지엔피',
  GNPOld         DECIMAL      NULL     COMMENT '과거 지엔피',
  LocalName      DECIMAL      NULL     COMMENT '지역 이름',
  GovermmentForm VARCHAR(200) NULL     COMMENT '정부형태',
  HeadofState    VARCHAR(200) NULL     COMMENT '국가원수',
  Captial        VARCHAR(200) NULL     COMMENT '수도',
  Code2          VARCHAR(200) NULL     COMMENT '코드2',
  Country Code   VARCHAR(200) NOT NULL COMMENT '국가 코드'
) COMMENT '나라';

CREATE TABLE Countrylanguage
(
  Language     VARCHAR(200) NULL     COMMENT '언어',
  IS Offical   ENUM         NULL     COMMENT '이스 오피셜',
  Percentage   DECIMAL      NULL     COMMENT '퍼센티지',
  Country Code VARCHAR(200) NOT NULL COMMENT '국가 코드'
) COMMENT '국가 언어';

ALTER TABLE Countrylanguage
  ADD CONSTRAINT FK_city_me_TO_Countrylanguage
    FOREIGN KEY (Country Code)
    REFERENCES city_me (Country Code);

ALTER TABLE country_me
  ADD CONSTRAINT FK_city_me_TO_country_me
    FOREIGN KEY (Country Code)
    REFERENCES city_me (Country Code);
