-- liquibase formatted sql

-- changeset akash.chavhan:202501141-1
CREATE TABLE `employee` (
    `emp_id` INTEGER NOT NULL,
    `emp_company` VARCHAR(255),
    `emp_email` VARCHAR(255),
    `emp_name` VARCHAR(255),
    CONSTRAINT `employee_pkey` PRIMARY KEY (`emp_id`)
);
-- rollback DROP TABLE `employee`;

-- changeset akash.chavhan:202501142-1
-- precondition-sql-check expectedResult:0 select count(*) from `employee`
INSERT INTO `employee` (`emp_id`, `emp_company`, `emp_email`, `emp_name`) VALUES (1, 'opus', 'akash.chavhan@opus.com', 'akash chavhan');
INSERT INTO `employee` (`emp_id`, `emp_company`, `emp_email`, `emp_name`) VALUES (2, 'FIS', 'kiran.chavhan@fis.com', 'kiran chavhan');
INSERT INTO `employee` (`emp_id`, `emp_company`, `emp_email`, `emp_name`) VALUES (3, 'FIS12', 'ran.chahan@fis.com', 'ran chahan');
INSERT INTO `employee` (`emp_id`, `emp_company`, `emp_email`, `emp_name`) VALUES (4, 'FIS23', 'kira.chavhan@fis.com', 'kira chavhan');
-- rollback TRUNCATE TABLE `employee`;

-- changeset akash.chavhan:202501143
CREATE TABLE `student` (
    `stu_id` INTEGER NOT NULL,
    `stu_school` VARCHAR(255),
    `stu_email` VARCHAR(255),
    `stu_name` VARCHAR(255),
    CONSTRAINT `student_pkey` PRIMARY KEY (`stu_id`)
);
-- rollback DROP TABLE `student`;

-- changeset akash.chavhan:202501144
ALTER TABLE `student` ADD COLUMN `stu_marks` INTEGER;
