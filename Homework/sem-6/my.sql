create TABLE [Schedule] (
	id int NOT NULL,
	work_time date NOT NULL,
	room_id int NOT NULL,
  CONSTRAINT [PK_SCHEDULE] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)
)
create TABLE [Patient] (
	id int NOT NULL UNIQUE,
	name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone varchar(12) NOT NULL,
	address varchar(50) NOT NULL,
	comment varchar(250) NOT NULL,
  CONSTRAINT [PK_PATIENT] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Reception] (
	id int NOT NULL,
	reg_journal_id int NOT NULL,
	staff_id int NOT NULL,
  CONSTRAINT [PK_RECEPTION] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Doctor] (
	id int NOT NULL,
	name varchar(MAX) NOT NULL,
	email varchar(MAX) NOT NULL,
	phone varchar(MAX) NOT NULL,
	comment varchar(MAX) NOT NULL,
  CONSTRAINT [PK_DOCTOR] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Department] (
	id int NOT NULL,
	department_name varchar(MAX) NOT NULL,
	room_id int NOT NULL,
	doctor_id int NOT NULL,
	shedule_id int NOT NULL,
  CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Insurance_policy] (
	id int NOT NULL,
	patient_id int NOT NULL,
	insurance_policy_num int NOT NULL UNIQUE,
	expire_from datetime NOT NULL,
	expire_to datetime NOT NULL,
	insurance_company varchar NOT NULL,
  CONSTRAINT [PK_INSURANCE_POLICY] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Medical_card] (
	id int NOT NULL,
	patient_id int NOT NULL,
	medical_card_num int NOT NULL UNIQUE,
	analysis_id int NOT NULL,
	desease_id int NOT NULL,
	diagnosis_id int NOT NULL,
	insurance_policy_id int NOT NULL,
	card_reg_date datetime NOT NULL,
  CONSTRAINT [PK_MEDICAL_CARD] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Reg_journal] (
	id int NOT NULL,
	medical_card_id int NOT NULL,
	departament_id int NOT NULL,
	insurance_policy int NOT NULL,
	medical_card int NOT NULL,
	reg_date datetime NOT NULL,
	exit_date datetime NOT NULL,
  CONSTRAINT [PK_REG_JOURNAL] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Staff] (
	id int NOT NULL UNIQUE,
	name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	phone varchar(12) NOT NULL,
  CONSTRAINT [PK_STAFF] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Analysis] (
	id int NOT NULL,
	room varchar NOT NULL,
	appointment_date date NOT NULL,
  CONSTRAINT [PK_ANALYSIS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Desease] (
	id int NOT NULL,
	ICD10_code varchar NOT NULL UNIQUE,
	description varchar NOT NULL,
	prognose varchar NOT NULL,
  CONSTRAINT [PK_DESEASE] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Hospital] (
	id int NOT NULL,
	room int NOT NULL,
	reg_date datetime NOT NULL,
  CONSTRAINT [PK_HOSPITAL] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Ambulatory] (
	id int NOT NULL,
	reg_date datetime NOT NULL,
  CONSTRAINT [PK_AMBULATORY] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Room] (
	id int NOT NULL,
	capacity int NOT NULL,
	description varchar NOT NULL,
  CONSTRAINT [PK_ROOM] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Recipy_journal] (
	id int NOT NULL,
	medical_card_id int NOT NULL,
	departament_id int NOT NULL,
	reg_date datetime NOT NULL,
	analysis_id int NOT NULL,
	desease_id int NOT NULL,
	diagnosis_id int NOT NULL,
  CONSTRAINT [PK_RECIPY_JOURNAL] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Diagnosis] (
	id int NOT NULL,
	ICD10_code varchar NOT NULL,
  CONSTRAINT [PK_DIAGNOSIS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)

)
create TABLE [Discharge_journal] (
	id int NOT NULL,
	staff_id int NOT NULL,
	medical_card_id int NOT NULL,
	hospital_id int NOT NULL,
	ambulatory_id int NOT NULL,
	discharge_date datetime NOT NULL,
  CONSTRAINT [PK_DISCHARGE_JOURNAL] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) with (IGNORE_DUP_KEY = OFF)
)