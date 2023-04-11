 IF OBJECT_ID(N'[ODS].[DBO].[lkp_pwp]', N'U') IS NOT NULL 
	DROP TABLE [ODS].[DBO].[lkp_pwp];
BEGIN
		 --create table statement
		CREATE TABLE [ODS].[DBO].[lkp_pwp](
			source_name VARCHAR(200) NOT NULL PRIMARY KEY WITH (IGNORE_DUP_KEY = ON),
			target_name VARCHAR(200) NOT NULL,
			date_created DATE NOT NULL
		)



		-- insert to table statement
		INSERT INTO [ODS].[DBO].[lkp_pwp](
				   source_name,
				   target_name,
				   date_created
		)
		VALUES 
		('Screened for STI','Screened for STI',GETDATE()),
		('Condoms|Disclosure|Partner Testing|Screened for STI','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Screened for substance abuse|Condoms|Disclosure|Partner Testing','Screened for substance abuse|Condoms|Disclosure|Partner Tested',GETDATE()),
		('Disclosure','Disclosure',GETDATE()),
		('Condoms|Disclosure|Partner Testing','Condoms|Disclosure|Partner Tested',GETDATE()),
		('Screened for substance abuse','Screened for substance abuse',GETDATE()),
		('Disclosure|Screened for STI','Disclosure|Screened for STI',GETDATE()),
		('Screened for substance abuse|Disclosure|Partner Testing','Screened for substance abuse|Disclosure|Partner Tested',GETDATE()),
		('STI Screen','Screened for STI',GETDATE()),
		('Disclosure|Partner Testing','Disclosure|Partner Tested',GETDATE()),
		('Condoms','Condoms',GETDATE()),
		('Screened for substance abuse|Condoms|Disclosure','Screened for substance abuse|Condoms|Disclosure',GETDATE()),
		('Condoms|Disclosure','Condoms|Disclosure',GETDATE()),
		('Screened for substance abuse|Condoms|Disclosure|Partner Testing|Screened for STI','Screened for substance abuse|Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Screened for substance abuse|Condoms','Screened for substance abuse|Condoms',GETDATE()),
		('Condoms|Disclosure|Screened for STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Disclosure|Partner Testing|Screened for STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Screened for substance abuse|Disclosure','Screened for substance abuse|Disclosure',GETDATE()),
		('Condoms|Screened for STI','Condoms|Screened for STI',GETDATE()),
		('Partner Testing','Partner Tested',GETDATE()),
		('Condoms,Disclosure|Partner Testing|Screened for STI','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling','Adherence Counselling',GETDATE()),
		('Screened STI','Screened for STI',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Partner Tested; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling; Screened STI','Adherence Counselling|Screened for STI',GETDATE()),
		('Condoms,Disclosure|Partner Testing|','Condoms|Disclosure|Partner Tested',GETDATE()),
		('Adherence Counselling; Condom; Screened STI','Adherence Counselling|Condom|Screened for STI',GETDATE()),
		('Screened for substance abuse|Disclosure|Partner Testing|Screened for STI','Screened for substance abuse|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure|Partner Testing|','Disclosure|Partner Tested',GETDATE()),
		('Screened for substance abuse|Condoms|Disclosure|Screened for STI','Screened for substance abuse|Condoms|Disclosure|Screened for STI',GETDATE()),
		('Screened for substance abuse|Condoms|Screened for STI','Screened for substance abuse|Condoms|Screened for STI',GETDATE()),
		('Disclosure|','Disclosure',GETDATE()),
		('Condoms|Partner Testing|Screened for STI','Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Screened for substance abuse|Screened for STI','Screened for substance abuse|Screened for STI',GETDATE()),
		('Condoms,','Condoms',GETDATE()),
		('Condoms,Disclosure|','Condoms|Disclosure',GETDATE()),
		('Condom; Disclosure; Partner Tested; Screened STI','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Screened for STI',GETDATE()),
		('On site screening for STIs/RTI','Screened for STI',GETDATE()),
		('Partner Testing|Screened for STI','Partner Tested|Screened for STI',GETDATE()),
		('Condom; Screened STI','Condoms|Screened for STI',GETDATE()),
		('Screened for substance abuse|Condoms|Partner Testing','Screened for substance abuse|Condoms|Partner Tested',GETDATE()),
		('Condoms|Partner Testing','Condoms|Partner Tested',GETDATE()),
		('Condom; Disclosure; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Condoms,Disclosure,Partner Testing,Screened for STI','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Condom; Disclosure; Modern contraceptive methods; Partner Tested; Screened STI','Condoms|Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling; Condom; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms|Screened for STI',GETDATE()),
		('Screened for substance abuse|Disclosure|Screened for STI','Screened for substance abuse|Disclosure|Screened for STI',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Partner Tested; Screened STI','Adherence Counselling|Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Provided with condoms','Condoms',GETDATE()),
		('Condom; Disclosure','Condoms|Disclosure',GETDATE()),
		('Disclosure','Disclosure',GETDATE()),
		('Disclosed HIV status to sexual partner','Disclosure',GETDATE()),
		('Disclosure; Modern contraceptive methods; Partner Tested; Screened STI','Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Condoms,Disclosure|Screened for STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Adherence Counselling; Disclosure; Partner Tested; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Screened for substance abuse|Partner Testing','Screened for substance abuse|Partner Tested',GETDATE()),
		('Disclosure; Partner Tested; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling; Disclosure; Partner Tested; Screened STI','Adherence Counselling|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Screened for substance abuse|Condoms|Partner Testing|Screened for STI','Screened for substance abuse|Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Condoms,Screened for STI','Condoms|Screened for STI',GETDATE()),
		('Condom; Modern contraceptive methods; Screened STI','Condoms|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Condom; Disclosure; Partner Tested','Condoms|Disclosure|Partner Tested',GETDATE()),
		('Adherence Counselling; Partner Tested; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Partner Tested|Screened for STI',GETDATE()),
		('Condom; Disclosure; Modern contraceptive methods; Screened STI','Condoms|Disclosure|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Adherence Counselling','Adherence Counselling',GETDATE()),
		('Adherence Counselling; Condom','Adherence Counselling|Condoms',GETDATE()),
		('STI Screening','Screened for STI',GETDATE()),
		('Condom','Condoms',GETDATE()),
		('Condom Distribution','Condoms',GETDATE()),
		('Modern contraceptive methods','Modern contraceptive methods',GETDATE()),
		('Adherence Counselling; Substance Abuse','Adherence Counselling|Screened for substance abuse',GETDATE()),
		('Condom; Disclosure; Modern contraceptive methods','Condoms|Disclosure|Modern contraceptive methods',GETDATE()),
		('Partner Testing|','Partner Tested',GETDATE()),
		('Adherence Counselling; Disclosure; Screened STI','Adherence Counselling|Disclosure|Screened for STI',GETDATE()),
		('Partner received on site HIV testing','Partner Tested',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Screened STI','Adherence Counselling|Condoms|Disclosure|Screened for STI',GETDATE()),
		('Disclosure to Sex Partner','Disclosure',GETDATE()),
		('Substance Abuse','Screened for substance abuse',GETDATE()),
		('Disclosure; Partner Tested','Disclosure|Partner Tested',GETDATE()),
		('Disclosure; Modern contraceptive methods; Screened STI','Disclosure|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Adherence Counselling; Disclosure','Adherence Counselling|Disclosure',GETDATE()),
		('Modern contraceptive methods; Screened STI','Modern contraceptive methods|Screened for STI',GETDATE()),
		('Screened for substance abuse|Partner Testing|Screened for STI','Screened for substance abuse|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms|Disclosure|Screened for STI',GETDATE()),
		('Adherence Counselling; Condom; Disclosure','Adherence Counselling|Condoms|Disclosure',GETDATE()),
		('Adherence Counselling; Condom; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Partner Tested','Adherence Counselling|Condoms| Disclosure|Partner Tested',GETDATE()),
		('Condom; Modern contraceptive methods','Condoms|Modern contraceptive methods',GETDATE()),
		('Condom; Modern contraceptive methods; Partner Tested; Screened STI','Condoms|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Modern contraceptive methods; Partner Tested','Disclosure|Modern contraceptive methods|Partner Tested',GETDATE()),
		('Adherence Counselling; Partner Tested; Screened STI','Adherence Counselling|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure,Partner Testing,Screened for STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Modern contraceptive methods','Disclosure|Modern contraceptive methods',GETDATE()),
		('Condom; Partner Tested; Screened STI','Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Condoms,Partner Testing|','Condoms|Partner Tested',GETDATE()),
		('Condom; Disclosure; Modern contraceptive methods; Partner Tested','Condoms|Disclosure|Modern contraceptive methods|Partner Tested',GETDATE()),
		('Condoms,Partner Testing|Screened for STI','Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Adherence Counselling; Disclosure; Partner Tested','Adherence Counselling|Disclosure|Partner Tested',GETDATE()),
		('Adherence Counselling; Condom; Partner Tested; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms| Partner Tested|Screened for STI',GETDATE()),
		('Disclosure,Screened for STI','Disclosure|Screened for STI',GETDATE()),
		('DEPO-CONDOM','Condoms|Modern contraceptive methods',GETDATE()),
		('Adherence Counselling; Disclosure; Screened STI; Substance Abuse','Adherence Counselling|Screened for substance abuse|Disclosure|Screened for STI',GETDATE()),
		('Condoms,Disclosure,','Condoms|Disclosure',GETDATE()),
		('Condoms,Disclosure,Partner Testing,','Condoms|Disclosure|Partner Tested',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Partner Tested; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms| Disclosure|Partner Tested',GETDATE()),
		('Disclosure,Partner Testing,','Disclosure|Partner Tested',GETDATE()),
		('Screened STI; SINGLE','Screened for STI',GETDATE()),
		('Adherence Counselling; Condom; Disclosure; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms| Disclosure',GETDATE()),
		('Modern contraceptive methods','Modern contraceptive methods',GETDATE()),
		('child','OTHER',GETDATE()),
		('not sexually active','OTHER',GETDATE()),
		('Partner Tested; Screened STI','Partner Tested|Screened for STI',GETDATE()),
		('Modern contraceptive methods; Partner Tested; Screened STI','Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure,','Disclosure',GETDATE()),
		('Adherence Counselling; Condom; Partner Tested; Screened STI','Adherence Counselling|Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Condoms,Disclosure,Screened for STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Adherence Counselling; Partner Tested','Adherence Counselling|Partner Tested',GETDATE()),
		('Condom; Partner Tested','Condoms|Partner Tested',GETDATE()),
		('Adherence Counselling; Condom; Partner Tested','Adherence Counselling|Condoms|Partner Tested',GETDATE()),
		('Partner Tested','Partner Tested',GETDATE()),
		('DIVORCED','OTHER',GETDATE()),
		('Adherence Counselling; Disclosure; Substance Abuse','Adherence Counselling|Screened for substance abuse|Disclosure',GETDATE()),
		('Adherence Counselling; Disclosure; Partner Tested; Substance Abuse','Adherence Counselling|Screened for substance abuse|Disclosure|Partner Tested',GETDATE()),
		('Partner Testing,Screened for STI','Partner Tested|Screened for STI',GETDATE()),
		('Partner Testing,','Partner Tested',GETDATE()),
		('Adherence Counselling; Partner Tested; Substance Abuse','Adherence Counselling|Screened for substance abuse|Partner Tested',GETDATE()),
		('Screened STI; Substance Abuse','Screened for substance abuse|Screened for STI',GETDATE()),
		('SINGLE','OTHER',GETDATE()),
		('Condom; Modern contraceptive methods; Partner Tested','Condoms|Modern contraceptive methods|Partner Tested',GETDATE()),
		('Adherence Counselling; Condom; Partner Tested; Substance Abuse','Adherence Counselling|Screened for substance abuse|Condoms| Partner Tested',GETDATE()),
		('WIDOWED','OTHER',GETDATE()),
		('Modern contraceptive methods; Partner Tested','Modern contraceptive methods|Partner Tested',GETDATE()),
		('not sexually active; Screened STI','Screened for STI',GETDATE()),
		('Condom; Disclosure; Partner Tested; Screened STI; Substance Abuse','Screened for substance abuse|Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('DIVORCED; Screened STI','Screened for STI',GETDATE()),
		('Substance Abuse','Screened for substance abuse',GETDATE()),
		('Condoms,Partner Testing,Screened for STI','Condoms|Partner Tested|Screened for STI',GETDATE()),
		('secondary abstainance','OTHER',GETDATE()),
		('Condom; Partner Tested; Screened STI; Substance Abuse','Screened for substance abuse|Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure Partner testing Condoms STI screen','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; not sexually active','Disclosure',GETDATE()),
		('Condom; Modern contraceptive methods; Screened STI; Adherence Counselling; Screened STI','Adherence Counselling|Condoms|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Screened STI; Adherence Counselling; Condom; Screened STI','Adherence Counselling|Condoms|Screened for STI',GETDATE()),
		('Screened STI; WIDOW','Screened for STI',GETDATE()),
		('widower','OTHER',GETDATE()),
		('Condoms,Partner Testing,','Condoms|Partner Tested',GETDATE()),
		('Disclosure                 Condoms STI screen','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Condom; Screened STI; Substance Abuse','Screened for substance abuse|Condoms|Screened for STI',GETDATE()),
		('Condom; Disclosure; Modern contraceptive methods; Screened STI; Adherence Counselling; Condom; Disclosure; Partner Tested','Adherence Counselling|Condoms|Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Condom; Modern contraceptive methods; Partner Tested; Screened STI; Adherence Counselling; Condom; Screened STI','Adherence Counselling|Condoms|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Modern contraceptive methods; Screened STI; SINGLE','Modern contraceptive methods|Screened for STI',GETDATE()),
		('abstinence','OTHER',GETDATE()),
		('Condom; Disclosure; Screened STI; Condom; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('child; Screened STI','Screened for STI',GETDATE()),
		('Disclosure; Partner Tested; Screened STI; Substance Abuse','Screened for substance abuse|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Screened STI; STUDENT','Screened for STI',GETDATE()),
		('abstaining','OTHER',GETDATE()),
		('Condom; Modern contraceptive methods; widowed','Condoms|Modern contraceptive methods',GETDATE()),
		('CHILD','OTHER',GETDATE()),
		('WINDOWED','OTHER',GETDATE()),
		('none','OTHER',GETDATE()),
		('Condom; divorced; Modern contraceptive methods','Condoms|Modern contraceptive methods',GETDATE()),
		('widow','OTHER',GETDATE()),
		('disclosed to family','OTHER',GETDATE()),
		('minor','OTHER',GETDATE()),
		('SEPERATED','OTHER',GETDATE()),
		('Condom; WIDOWED','Condoms',GETDATE()),
		('Modern contraceptive methods; SINGLE','Modern contraceptive methods',GETDATE()),
		('Condom; Modern contraceptive methods; Screened STI; widowed','Condoms|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Disclosure; not sexually active; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('disclosed to family; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('disclosed to family members','Disclosure',GETDATE()),
		('Condom; Substance Abuse','Disclosure',GETDATE()),
		('Condom; Screened STI; WIDOWED','Condoms|Screened for STI',GETDATE()),
		('child; Disclosure','Disclosure',GETDATE()),
		('disclosed to mother','Disclosure',GETDATE()),
		('ca screen; Disclosure; Partner Tested; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure                         STI screen','Disclosure|Screened for STI',GETDATE()),
		('Disclosure; not sexually active; Partner Tested','Disclosure|Partner Tested',GETDATE()),
		('Disclosure; DIVORCED','Disclosure',GETDATE()),
		('Condom; DIVORCED; Screened STI','Condoms|Screened for STI',GETDATE()),
		('Condom; Disclosure; Screened STI; Substance Abuse','Screened for substance abuse|Condoms|Disclosure|Screened for STI',GETDATE()),
		('disclosed to children','Disclosure',GETDATE()),
		('has enough condoms','Condoms',GETDATE()),
		('Condom; divorced; Modern contraceptive methods; Screened STI','Condoms|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Disclosure; Partner Tested; Screened STI; single','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Screened STI; Substance Abuse','Screened for substance abuse|Disclosure|Screened for STI',GETDATE()),
		('ABSTINENCE; Screened STI','Screened for STI',GETDATE()),
		('not sexually  active','OTHER',GETDATE()),
		('Condoms STI screen','Condoms|Screened for STI',GETDATE()),
		('vulnerable','OTHER',GETDATE()),
		('secondary abs','OTHER',GETDATE()),
		('single mother','OTHER',GETDATE()),
		('Condom; Modern contraceptive methods; single','Condoms|Modern contraceptive methods',GETDATE()),
		('RTI','OTHER',GETDATE()),
		('adherence ','OTHER',GETDATE()),
		('Screened STI; widowed','Screened for STI',GETDATE()),
		('MINOR','OTHER',GETDATE()),
		('Disclosure; wants child','Disclosure',GETDATE()),
		('HOMED VISIT; Screened STI','Screened for STI',GETDATE()),
		('Partner testing Condoms STI screen','Condoms|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; inactive','Disclosure',GETDATE()),
		('elderly','OTHER',GETDATE()),
		('Condom; Disclosure; PARTNER NOT TESTED; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Disclosure; Modern contraceptive methods; Partner Tested; Screened STI; SINGLE','Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('not sexualy active; Screened STI','Screened for STI',GETDATE()),
		('disclosed to mother; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Condom; Screened STI; SINGLE','Condoms|Screened for STI',GETDATE()),
		('Condom; Modern contraceptive methods; Screened STI; SINGLE','Condoms|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Disclosure; not sexually active; Partner Tested; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Modern contraceptive methods; widow','Modern contraceptive methods',GETDATE()),
		('INFANT','OTHER',GETDATE()),
		('disclosed to family,uses condom','Condoms|Disclosure',GETDATE()),
		('2nd abstainance','OTHER',GETDATE()),
		('Adherence; Disclosure; Modern contraceptive methods; Partner Tested','Adherence Counselling|Disclosure|Modern contraceptive methods|Partner Tested',GETDATE()),
		('Disclosure; Screened STI; SINGLE','Disclosure|Screened for STI',GETDATE()),
		('DIVORCED; Modern contraceptive methods','Modern contraceptive methods',GETDATE()),
		('Partner Tested; Screened STI; Substance Abuse','Screened for substance abuse|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; SEPERATED','Disclosure',GETDATE()),
		('Condom; Partner Tested; Substance Abuse','Screened for substance abuse|Condoms|Partner Tested',GETDATE()),
		('Disclosure; Screened STI; WIDOW','Disclosure|Screened for STI',GETDATE()),
		('young child','OTHER',GETDATE()),
		('no sex; Screened STI','Screened for STI',GETDATE()),
		('Modern contraceptive methods; not sexually active','Modern contraceptive methods',GETDATE()),
		('Condom; not disclosed; Screened STI','Condoms|Screened for STI',GETDATE()),
		('disclosed to family,uses condom; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Adherence:; Condom; Disclosure; Partner Tested','Adherence Counselling|Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('adherence; Condom; Disclosure; Partner Tested; Screened STI','Adherence Counselling|Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Condom; neuropathy; Screened STI','Condoms|Screened for STI',GETDATE()),
		('D; Screened STI','Screened for STI',GETDATE()),
		('Disclosure; DIVORCED; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Disclosure; Partner Tested; Screened STI; wants to get pregnant','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('OTHERS','OTHER',GETDATE()),
		('Adherence:; Condom; Disclosure; Modern contraceptive methods; Partner Tested; Screened STI','Adherence Counselling|Condoms|Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('c.a cervix neg; Modern contraceptive methods; Screened STI','Modern contraceptive methods|Screened for STI',GETDATE()),
		('Disclosure; intensive A clling; Partner Tested; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; LINKED TO COMMUNITY SERVICE; Partner Tested; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Partner Tested; pregnant','Disclosure|Partner Tested',GETDATE()),
		('not sexually ctive','OTHER',GETDATE()),
		('Disclosure; SINGLE','Disclosure',GETDATE()),
		('disclosed to children; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Disclosure; husband denied using condoms; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('not ready to disclose','OTHER',GETDATE()),
		('not sexually act','OTHER',GETDATE()),
		('Screened STI; SINGE','Screened for STI',GETDATE()),
		('CONFIRMED MALARIA','OTHER',GETDATE()),
		('disclosed to parents','OTHER',GETDATE()),
		('not ssssexually active','OTHER',GETDATE()),
		('Partner status not yet known','OTHER',GETDATE()),
		('LINKED TO COMMUNITY SERVICE','OTHER',GETDATE()),
		('not ssexually active; Screened STI','Screened for STI',GETDATE()),
		('not well drugs picked bt tx supporter','OTHER',GETDATE()),
		('GASTRITIS/ COPD','OTHER',GETDATE()),
		('RTI IN EARLY PREG','OTHER',GETDATE()),
		('Condom; pregnant','Condoms',GETDATE()),
		('Disclosure; PARTNER NOT TESTED; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('ca screening negative; Condom; Screened STI','Condoms|Screened for STI',GETDATE()),
		('child not ligable','OTHER',GETDATE()),
		('Disclised to neighbor; Screened STI','Screened for STI',GETDATE()),
		('disclosed to mother, abstinence','Disclosure',GETDATE()),
		('don''t know partners status; Modern contraceptive methods','Modern contraceptive methods',GETDATE()),
		('family members aware of her hiv status','Disclosure',GETDATE()),
		('NOT TESTED','OTHER',GETDATE()),
		('Condom; Disclosure; Substance Abuse','Screened for substance abuse|Condoms|Disclosure',GETDATE()),
		('seconary abstainance','OTHER',GETDATE()),
		('uses condom','Condoms',GETDATE()),
		('not active sectually; Screened STI','Screened for STI',GETDATE()),
		('Disclosure; Modern contraceptive methods; on HVL SG; Partner Tested; Screened STI','Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Condom; Disclosure; partner also on haart','Condoms|Disclosure',GETDATE()),
		('Screened STI; SIH','Screened for STI',GETDATE()),
		('temporary separation','OTHER',GETDATE()),
		('HYPEREMESIS GRAVIDARUM','OTHER',GETDATE()),
		('Condom; DIVORCED','Condoms',GETDATE()),
		('not sexually  active; Screened STI','Screened for STI',GETDATE()),
		('chikungunya/ mild anaemia R/O AZT BONEMARROW SUPPRESSION','OTHER',GETDATE()),
		('widow reports secondary abstainance','OTHER',GETDATE()),
		('ca cervix; Condom; Disclosure; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('MINOR; Screened STI','Screened for STI',GETDATE()),
		('denied fp n cd4; Disclosure; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('disclosure to sister','Disclosure',GETDATE()),
		('SPOUSE DIED','OTHER',GETDATE()),
		('?PID','OTHER',GETDATE()),
		('SA','OTHER',GETDATE()),
		('booked','OTHER',GETDATE()),
		('Screened STI; want to be pregnant','Screened for STI',GETDATE()),
		('skin disease','OTHER',GETDATE()),
		('RTI R/O PTB','OTHER',GETDATE()),
		('Condom; pharyngitis; Screened STI','Condoms|Screened for STI',GETDATE()),
		('DIED','OTHER',GETDATE()),
		('backache; Condom; Disclosure; Partner Tested; Screened STI','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('disclosure done','Disclosure',GETDATE()),
		('DISCLOSURE COUNSELLING STARTED','Disclosure',GETDATE()),
		('MALARIA?DENGE?CHIKUNGUNYA','OTHER',GETDATE()),
		('under age','OTHER',GETDATE()),
		('TONSOLITIS/ P.NEUROPATHY','OTHER',GETDATE()),
		('disclosed to guardian','Disclosure',GETDATE()),
		('disclosed to guardian; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('LINKED WITH COMMUNITY; Screened STI','Screened for STI',GETDATE()),
		('disclosure to family','Disclosure',GETDATE()),
		('LINKED WITH COMMUNITY','OTHER',GETDATE()),
		('PARTNER TESTING ENCOURAGED','Partner Tested',GETDATE()),
		('Condom; Disclosure; Partner Tested; Screened STI; urticaric','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Modern contraceptive methods; Screened STI; SINGLE','Disclosure|Modern contraceptive methods|Screened for STI',GETDATE()),
		('Modern contraceptive methods; Screened STI; WIDOW','Modern contraceptive methods|Screened for STI',GETDATE()),
		('Adherence: ; Condom; Disclosure; Partner Tested','Adherence Counselling|Condoms|Disclosure|Partner Tested',GETDATE()),
		('DISCLOSED TO FRIEND; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Condom; DSCLOSURE; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Condom; partner hiv status unknown ,to bring partner for testing; Screened STI','Condoms|Screened for STI',GETDATE()),
		('abstinence; Disclosure','Disclosure',GETDATE()),
		('Both patient and spouse on ARVS; Condom; Disclosure','Condoms|Disclosure',GETDATE()),
		('MENOPAUSE; Screened STI','Screened for STI',GETDATE()),
		('not sexually acyive','OTHER',GETDATE()),
		('STUDENT','OTHER',GETDATE()),
		('CHILDA','OTHER',GETDATE()),
		('disclosed to child; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Disclosure; intensive adherence cling','Disclosure',GETDATE()),
		('TINEASIS / LUMBARGO','OTHER',GETDATE()),
		('Disclosure; Partner Tested; SINGLE','Disclosure|Partner Tested',GETDATE()),
		('Disclosure; spouse refuses condoms','Disclosure',GETDATE()),
		('Disclosure; Substance Abuse','Screened for substance abuse|Disclosure',GETDATE()),
		('DIVORCED; Modern contraceptive methods; Screened STI','Modern contraceptive methods|Screened for STI',GETDATE()),
		('not sex active','OTHER',GETDATE()),
		('not ssexually active','OTHER',GETDATE()),
		('S; Screened STI','Screened for STI',GETDATE()),
		('toddler','OTHER',GETDATE()),
		('inactive sexually','OTHER',GETDATE()),
		('TB SCREENING','OTHER',GETDATE()),
		('4 children tested today','OTHER',GETDATE()),
		('ignorance','OTHER',GETDATE()),
		('abstinence; Condom','Condoms',GETDATE()),
		('Adherence; Disclosure; Partner Tested; Screened STI','Adherence Counselling|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Condom; Danger signs in pregnancy and IBP; Disclosure; Modern contraceptive methods; Partner Tested; Screened STI','Condoms|Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('Condom; Disclosure; not tested; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('HAS A PARTNER BUT HAS NOT DISCLOSED HER STATUS; Modern contraceptive methods','Modern contraceptive methods',GETDATE()),
		('not sexuallly active','OTHER',GETDATE()),
		('N/A','OTHER',GETDATE()),
		('GASTRITIS','OTHER',GETDATE()),
		('ANAEMA','OTHER',GETDATE()),
		('MYALGIA','OTHER',GETDATE()),
		('Disclosure; HUSBAND SOMETIMES NOT USING CONDOMS','Disclosure',GETDATE()),
		('naive','OTHER',GETDATE()),
		('abstenance','OTHER',GETDATE()),
		('condom use; Disclosure','Condoms|Disclosure',GETDATE()),
		('Condom; counselled on condom use','Condoms',GETDATE()),
		('PrEP for spouse','OTHER',GETDATE()),
		('PNEUMONIA IN KNOWN ASTHMATIC','OTHER',GETDATE()),
		('Disclosure; Partner Tested; prevention; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; Partner Tested; Screened STI; widower','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('PARTNER STATUS UNKNOWN','OTHER',GETDATE()),
		('pregnant','OTHER',GETDATE()),
		('MIGRAINE HEADACHE','OTHER',GETDATE()),
		('ORAL HRUSH','OTHER',GETDATE()),
		('active','OTHER',GETDATE()),
		('adhearance councelling ; Disclosure; Modern contraceptive methods; Partner Tested; Screened STI','Adherence Counselling|Disclosure|Modern contraceptive method|Partner Tested|Screened for STI',GETDATE()),
		('client was actively taking arvs in sudan but has no document to support the same , retested n started on rx here; Condom; Screened STI','Condoms|Screened for STI',GETDATE()),
		('not with partner; Screened STI','Screened for STI',GETDATE()),
		('WINDOWED BUT HAS A PARTINER','OTHER',GETDATE()),
		('no spouse currently','OTHER',GETDATE()),
		('Condom; Disclosure; Modern contraceptive methods; Partner Tested; Screened STI; single','Condoms|Disclosure|Modern contraceptive methods|Partner Tested|Screened for STI',GETDATE()),
		('disclosed to family members; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('disclosed to son; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('uti','OTHER',GETDATE()),
		('INTESTINAL OBSTRUCTION','OTHER',GETDATE()),
		('advised on abstinance ','OTHER',GETDATE()),
		('Condom; Modern contraceptive methods; not disxclosed partner not tested; Screened STI','Condoms|Modern contraceptive methods|Screened for STI',GETDATE()),
		('CELULITIS/CYSTITIS/TINEASIS','OTHER',GETDATE()),
		('SINGLE PARENT','OTHER',GETDATE()),
		('wants child','OTHER',GETDATE()),
		('Disclosure; Partner Tested; pmtct clling; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('Disclosure; patient counselling on how to involve partner on contraceptive methods','Disclosure',GETDATE()),
		('adolescent; Condom','Condoms',GETDATE()),
		('Condom; Disclosure; don''t know partners status; Screened STI','Condoms|Disclosure|Screened for STI',GETDATE()),
		('Condom; Disclosure; impaired vision; Partner Tested; Screened STI','Condoms|Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('DISCLOSED TO RELATIVES','Disclosure',GETDATE()),
		('Disclosure; Partner Tested; pregnant; Screened STI','Disclosure|Partner Tested|Screened for STI',GETDATE()),
		('HUSBAND DIED','OTHER',GETDATE()),
		('menopals; Screened STI','OTHER',GETDATE()),
		('Modern contraceptive methods; Screened STI; widowed','Modern contraceptive methods|Screened for STI',GETDATE()),
		('mother','OTHER',GETDATE()),
		('partner passed on; Screened STI','Screened for STI',GETDATE()),
		('Screened STI; SING','Screened for STI',GETDATE()),
		('adherence couselling done rpt vl in dec 2016','Adherence counselling',GETDATE()),
		('disclosed to househelp','Disclosure',GETDATE()),
		('disclosed to son','Disclosure',GETDATE()),
		('Encouraged to disclose to sexual partner','Disclosure',GETDATE()),
		('ignorant','OTHER',GETDATE()),
		('newly diagnosed','OTHER',GETDATE()),
		('nutrition','OTHER',GETDATE()),
		('Screened STI; SI','Screened for STI',GETDATE()),
		('secondary abstainance 6 months now.','OTHER',GETDATE()),
		('Condom; home visit; Screened STI','Condoms|Screened for STI',GETDATE()),
		('widow','OTHER',GETDATE()),
		('disclosure done; Screened STI','Disclosure|Screened for STI',GETDATE()),
		('Condom; Screened STI; seperated','Disclosure|Screened for STI',GETDATE())

END