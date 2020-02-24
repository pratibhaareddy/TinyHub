CREATE TABLE `TinyHub`.`user` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(85) NOT NULL,
  PRIMARY KEY (`username`));
  
  CREATE TABLE `TinyHub`.`student` (
  `student_ID` VARCHAR(10) NULL,
  `status` VARCHAR(45) NOT NULL,
  `enrolled` VARCHAR(45) NOT NULL,
  `grade` VARCHAR(1) NOT NULL,
  UNIQUE INDEX `student_ID_UNIQUE` (`student_ID` ASC),
  CONSTRAINT `username`
    FOREIGN KEY (`student_ID`)
    REFERENCES `TinyHub`.`user` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
	
  CREATE TABLE `TinyHub`.`staff` (
  `Staff_ID` VARCHAR(45) NULL,
  UNIQUE INDEX `Staff_ID_UNIQUE` (`Staff_ID` ASC),
  CONSTRAINT `Staff_ID`
    FOREIGN KEY (`Staff ID`)
    REFERENCES `TinyHub`.`user` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
    
    CREATE TABLE `TinyHub`.`professor` (
  `Prof_ID` VARCHAR(45) NULL,
  UNIQUE INDEX `Prof_ID_UNIQUE` (`Prof_ID` ASC),
  CONSTRAINT `Prof_ID`
    FOREIGN KEY (`Prof_ID`)
    REFERENCES `TinyHub`.`user` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    
    CREATE TABLE `TinyHub`.`department` (
  `Dept_ID` INT(45) NOT NULL,
  PRIMARY KEY (`Dept_ID`),
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TinyHub`.`enrolled` (
  `course_name` VARCHAR(45) NOT NULL,
  `Dept_ID` VARCHAR(45) NOT NULL,
  `Course_ID` VARCHAR(45) NOT NULL,
  `Semester` VARCHAR(45) NOT NULL,
  `Prerequisite` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `Capacity` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `Course_ID_UNIQUE` (`Course_ID` ASC) VISIBLE,
  INDEX `Dept_ID_idx` (`Dept_ID` ASC) VISIBLE,
  CONSTRAINT `Dept_ID``
    FOREIGN KEY (`Dept_ID`)
    REFERENCES `TinyHub`.`department` (`Dept_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TinyHub`.`instructor` (
  `Inst_ID` VARCHAR(45) NOT NULL,
  `Course_number` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `Inst_ID_UNIQUE` (`Inst_ID` ASC),
  CONSTRAINT `Inst ID`
    FOREIGN KEY (`Inst_ID`)
    REFERENCES `TinyHub`.`professor` (`Prof_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TinyHub`.`exam` (
  `Course_ID` VARCHAR(45) NOT NULL,
  `Exam_ID` VARCHAR(45) NOT NULL,
  `problems` VARCHAR(45) NULL,
  `grade` VARCHAR(45) NOT NULL,
  student_ID` VARCHAR(45) NULL, 
  UNIQUE INDEX `Stu ID_UNIQUE` (`Stu ID` ASC) VISIBLE;
  UNIQUE INDEX `Course_ID_UNIQUE` (`Course_ID` ASC) VISIBLE,
  UNIQUE INDEX `Exam_ID_UNIQUE` (`Exam_ID` ASC) VISIBLE,
  CONSTRAINT `Course_ID`
  FOREIGN KEY (`Course_ID`)
  REFERENCES `TinyHub`.`enrolled` (`Course_ID`)
  CONSTRAINT `Student_ID`
  FOREIGN KEY (`Student_ID`)
  REFERENCES `TinyHub`.`student` (`student_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
	    
    
    CREATE TABLE `TinyHub`.`ta` (
  `TA_ID` VARCHAR(45) NULL,
  `Course_ID` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `TA_ID_UNIQUE` (`TA_ID` ASC) VISIBLE,
  INDEX `Course_ID` (`Course_ID` ASC) VISIBLE,
  CONSTRAINT `Course_ID`
  FOREIGN KEY (`TA Id`)
  REFERENCES `TinyHub`.`student` (`student_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
    
    CREATE TABLE `TinyHub`.`belongsto` (
  `stu_ID` VARCHAR(45) NOT NULL,
  `dept_num` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `Stu_ID_UNIQUE` (`Stu_ID` ASC),
  CONSTRAINT `Stu_ID`
    FOREIGN KEY (`Stu_ID`)
    REFERENCES `TinyHub`.`student` (`student_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



