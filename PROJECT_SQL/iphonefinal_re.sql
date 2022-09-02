
CREATE TABLE CarSurvey_Answer
(
  Unique_A_ID INT          NOT NULL COMMENT '답변 unique id',
  Answer      VARCHAR(200) NOT NULL COMMENT '답변',
  PRIMARY KEY (Unique_A_ID)
) COMMENT '자동차설문답변';

CREATE TABLE CarSurvey_Question
(
  Unique_Q_ID INT          NOT NULL COMMENT 'unique id',
  Question    VARCHAR(200) NOT NULL COMMENT '질문',
  PRIMARY KEY (Unique_Q_ID)
) COMMENT '자동차설문질문';

CREATE TABLE CarSurvey_User
(
  UniqueID  INT         NOT NULL COMMENT 'unique id',
  Name      VARCHAR(200) NOT NULL COMMENT '이름',
  PRIMARY KEY (UniqueID)
) COMMENT '사용자 정보';

CREATE TABLE Result
(
  UniqueID   INT NOT NULL COMMENT 'unique id',
  Unique_A_ID INT NOT NULL COMMENT '답변 unique id',
  Unique_Q_ID INT NOT NULL COMMENT 'unique id'
) COMMENT '결과';

ALTER TABLE Result
  ADD CONSTRAINT FK_CarSurvey_User_TO_Result
    FOREIGN KEY (UniqueID)
    REFERENCES CarSurvey_User (UniqueID);

ALTER TABLE Result
  ADD CONSTRAINT FK_CarSurvey_Answer_TO_Result
    FOREIGN KEY (Unique_A_ID)
    REFERENCES CarSurvey_Answer (Unique_A_ID);

ALTER TABLE Result
  ADD CONSTRAINT FK_CarSurvey_Question_TO_Result
    FOREIGN KEY (Unique_Q_ID)
    REFERENCES CarSurvey_Question (Unique_Q_ID);
