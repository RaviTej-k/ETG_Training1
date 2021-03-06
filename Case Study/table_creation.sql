CREATE TABLE EMPLOYEE(
	EMP_ID INT NOT NULL PRIMARY KEY,
	EMP_NAME VARCHAR(30),
	EMP_EMAIL VARCHAR(30),
	IS_ADMIN VARCHAR(10)
);

CREATE TABLE PRIORITY_TASK(
	PRIORITY_ID INT,
	PRIORITY_NAME VARCHAR(10)
);

CREATE TABLE TASK(
	TASK_ID INT NOT NULL PRIMARY KEY,
	T_NAME VARCHAR(25),
	T_DESCRIPTION VARCHAR(55),
	T_STATUS VARCHAR(10),
	T_PRIORITY VARCHAR(8),
	T_NOTES VARCHAR(55),
	T_BOOKMARK VARCHAR(50),
	TASK_OWNER INT NOT NULL,
	T_CREATOR_ID INT,
	T_CREATED_ON DATETIME,
	T_MODIFIED_ON DATETIME,
	FOREIGN KEY (TASK_OWNER)
		REFERENCES EMPLOYEE (EMP_ID),
		FOREIGN KEY (T_CREATOR_ID)
		REFERENCES EMPLOYEE (EMP_ID)
);

