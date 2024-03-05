/*** Loading in Wave 112 Data/Renaming columns ***/
PROC IMPORT DATAFILE='/home/u63694968/sasuser.v94/Project2/Project2Wave112.csv' 
		OUT=StudyData112 DBMS=CSV REPLACE;
	GETNAMES=YES;
RUN;

DATA Wave112;
	SET StudyData112(RENAME=(
		TALKPOL_W112=DiscussGovtPolitics
		FOLNEWS_W112=FollowNews 
		GROUP_TRUST_a_W112=TrustNationalNews 
		GROUP_TRUST_b_W112=TrustLocalNews 
		GROUP_TRUST_d_W112=TrustNewsSocialMedia 
		NEWSPLAT_a_W112=NewsFreqTelevision 
		NEWSPLAT_b_W112=NewsFreqRadio 
		NEWSPLAT_c_W112=NewsFreqPrint 
		NEWSPLAT_d_W112=NewsFreqComputer 
		NEWSPLAT_DIG_a_W112=NewsFreqWebsitesApps 
		NEWSPLAT_DIG_b_W112=NewsFreqSocialMedia 
		NEWSPLAT_DIG_c_W112=NewsFreqGoogle 
		NEWSPLAT_DIG_d_W112=NewsFreqPodcast 
		PLATFORM_PREFER_W112=NewsPreference 
		SMUSE_a_W112=UseFacebook 
		SMUSE_b_W112=UseYoutube 
		SMUSE_c_W112=UseTwitter 
		SMUSE_d_W112=UseInstagram 
		SMUSE_e_W112=UseSnapchat 
		SMUSE_f_W112=UseWhatsapp 
		SMUSE_g_W112=UseLinkedIn 
		SMUSE_h_W112=UsePinterest 
		SMUSE_i_W112=UseTiktok 
		SMUSE_j_W112=UseReddit 
		SMUSE_k_W112=UseTwitch 
		SMUSE_l_W112=UseNextdoor 
		SOCIALNEWS2_a_W112=NewsFacebook 
		SOCIALNEWS2_b_W112=NewsYoutube 
		SOCIALNEWS2_c_W112=NewsTwitter 
		SOCIALNEWS2_d_W112=NewsInstagram 
		SOCIALNEWS2_e_W112=NewsSnapchat 
		SOCIALNEWS2_f_W112=NewsWhatsapp 
		SOCIALNEWS2_g_W112=NewsLinkedIn 
		SOCIALNEWS2_i_W112=NewsTiktok 
		SOCIALNEWS2_j_W112=NewsReddit 
		SOCIALNEWS2_k_W112=NewsTwitch 
		SOCIALNEWS2_l_W112=NewsNextdoor 
		MISINFG_W112=MisinformationGovt 
		MISINFT_W112=MisinformationTech 
		IMP_COUNTRY_W112=USPartner 
		DEM_OIL_W112=DemocracyEnergy 
		MIL_INVOLVE_a_W112=MilitaryUS 
		MIL_INVOLVE_b_W112=MilitaryAllies 
		MIL_INVOLVE_c_W112=MilitaryDem 
		MIL_THREAT_a_W112=ThreatChina 
		MIL_THREAT_b_W112=ThreatRussia 
		NATO_JOIN_W112=NatoMembers 
		F_PARTY_FINAL=Party 
		F_PARTYLN_FINAL=PartyLean 
		F_CITIZEN=Citizen 
		F_REG=RegisterVote 
		F_IDEO=Ideology 
		F_BIRTHPLACE=Birthplace 
		F_YEARSINUS_RECODE=YearsInUS 
		F_GENDER=Gender 
		F_INC_SDT1=HouseIncome 
		F_MARITAL=MaritalStatus 
		F_ATTEND=AttendReligious 
		F_BORN=BornAgainEvangelical 
		F_RELIG=Religion 
		F_HISP=Hispanic 
		F_RACETHNMOD=Race 
		F_HISP_ORIGIN=HispanicOrigin 
		F_AGECAT=AgeCategory
		));
RUN;

/*** Loading in Wave 51 Data/Renaming columns ***/
PROC IMPORT DATAFILE='/home/u63694968/sasuser.v94/Project2/Project2Wave51.csv' 
		OUT=StudyData51 DBMS=CSV REPLACE;
	GETNAMES=YES;
RUN;

DATA Wave51;
	SET StudyData51(RENAME=(
	NEWS_DEVICEa_W51 = NewsComputer
	NEWS_DEVICEb_W51 = NewsPhone
	NEWS_PLATFORMg_W51 = NewsSocialMedia
	NEWS_PLATFORMh_W51 = NewsWebsite
	GROUP_TRUSTa_W51 = TrustNationalNews
	GROUP_TRUSTb_W51 = TrustLocalNews
	GROUP_TRUSTc_W51 = TrustNewsFriends
	GROUP_TRUSTd_W51 = TrustNewsSocialMedia
	FAMNEWSSHARE_W51 = FriendsShareNews
	WEB1a_W51 = UseTwitter
	WEB1b_W51 = UseInstagram
	WEB1c_W51 = UseFacebook
	WEB1d_W51 = UseSnapchat
	WEB1e_W51 = UseYoutube
	WEB1f_W51 = UseLinkedIn
	WEB1g_W51 = UseReddit
	WEB1h_W51 = UseTumblr
	WEB1i_W51 = UseWhatsapp
	WEB1j_W51 = UseTiktok
	WEB1k_W51 = UseTwitch
	SMNEWSa_W51 = NewsTwitter
	SMNEWSb_W51 = NewsInstagram
	SMNEWSc_W51 = NewsFacebook
	SMNEWSd_W51 = NewsSnapchat
	SMNEWSe_W51 = NewsYoutube
	SMNEWSf_W51 = NewsLinkedIn
	SMNEWSg_W51 = NewsReddit
	SMNEWSh_W51 = NewsTumblr
	SMNEWSi_W51 = NewsWhatsapp
	SMNEWSj_W51 = NewsTiktok
	SMNEWSk_W51 = NewsTwitch
	SMNEWSPREF_W51 = NewsPreference
	SNSINFORM_W51 = InformSociaMedia
	SNSSKEP_W51 = SkepticalSocialMedia
	SNSINLINE_W51 = InLinePoliticalSM
	FRIENDSINLINE_W51 = InLinePoliticalFriends
	SNSPROBSa_W51 = ProblemCensorship
	SNSPROBSb_W51 = ProblemHarassmentJournalist
	SNSPROBSc_W51 = ProblemBannedPeople
	SNSPROBSd_W51 = ProblemInaccurateNews
	SNSPROBSe_W51 = ProblemDisturbingImages
	SNSPROBSf_W51 = ProblemOneSidedNews
	SNSPROBSg_W51 = ProblemUncivilDiscussions
	SNSCONTROL_W51 = SMControlNews
	SNSNEWSROLE_W51 = SMNewsRole
	SNSCONTROL2_W51 = SMControlNewsAmount
	SNSFAIR_W51 = SMNewsFair
	SNSFAVORa_W51 = SMNewsPolitical
	SNSFAVORb_W51 = SMNewsNeutral
	SNSFAVORc_W51 = SMNewsEstablished
	SNSFAVORd_W51 = SMNewsAttention
	SNSFAVORe_W51 = SMNewsFollowers
	SNSFAVORf_W51 = SMNewsHighStandards
	SNSFAVORg_W51 = SMNewsOther
	SNSIDEO_W51 = SMNewsIdeology
	F_PARTY_FINAL=Party 
	F_PARTYLN_FINAL=PartyLean 
	F_CITIZEN=Citizen 
	F_REG=RegisterVote 
	F_IDEO=Ideology 
	F_SEX=Gender 
	F_INCOME=HouseIncome 
	F_MARITAL=MaritalStatus 
	F_ATTEND=AttendReligious 
	F_BORN=BornAgainEvangelical 
	F_RELIG=Religion 
	F_HISP=Hispanic 
	F_RACECMB=Race 
	F_AGECAT=AgeCategory
		));
RUN;

/*** Adding WaveYear column for data appending / changing column types ***/
DATA Wave51;
	SET Wave51;
	WaveYear = "2019";
	NewsTiktok_numeric = INPUT(NewsTiktok, ?? best12.);
	NewsTwitch_numeric = INPUT(NewsTwitch, ?? best12.);
	Weight = 50/29.84;
	DROP NewsTiktok NewsTwitch; /* Drop original character variables */
RUN;

DATA Wave112;
	SET Wave112;
	WaveYear = "2022";
	NewsTiktok_numeric = INPUT(NewsTiktok, ?? best12.);
	NewsTwitch_numeric = INPUT(NewsTwitch, ?? best12.);
	Weight = 50/70.16;
	DROP NewsTiktok NewsTwitch; /* Drop original character variables */
RUN;

DATA WaveCombined;
	SET Wave112 Wave51;
RUN;

DATA WaveCombinedFinal;
	SET WaveCombined;
	WHERE TrustNationalNews ne 99 and TrustLocalNews ne 99 and TrustNewsSocialMedia ne 99 and Party ne 99 and Gender ne 99 and Gender ne 3
	and MaritalStatus ne 99 and AgeCategory ne 99 and Citizen ne 99 and RegisterVote ne 99 and RegisterVote not is null
	and Race ne 99;
RUN;

/*** Formatting columns as their normal values ***/
PROC FORMAT;
	VALUE trust_fmt
	1 = "A lot"
	2 = "Some"
	3 = "Not too much"
	4 = "Not at all";
	VALUE party_fmt
	1 = "Republican"
	2 = "Democrat"
	3 = "Independant"
	4 = "Something Else";
	VALUE gender_fmt
	1 = "Male"
	2 = "Female";
	VALUE marital_fmt
	1, 2 = "Together"
	3, 4, 5 = "Separated"
	6 = "Never been married";
	VALUE age_fmt
	1 = "18-29"
	2 = "30-49"
	3 = "50-64"
	4 = "65+";
	VALUE cit_fmt
	1 = "Yes"
	2 = "No";
	VALUE reg_fmt
	1 = "Absolutely Registered"
	2 = "Probably Registered"
	3 = "Not Registered";
	VALUE race_fmt
	1 = "White"
	2 = "Black"
	3, 4, 5 = "Minority";
RUN;

DATA WaveCombinedFinal;
   SET WaveCombinedFinal;
   FORMAT TrustNationalNews TrustLocalNews TrustNewsSocialMedia trust_fmt.;
   FORMAT Party party_fmt.;
   FORMAT Gender gender_fmt.;
   FORMAT MaritalStatus marital_fmt.;
   FORMAT AgeCategory age_fmt.;
   FORMAT Citizen cit_fmt.;
   FORMAT RegisterVote reg_fmt.;
   FORMAT Race race_fmt.;
   if Hispanic = 1 then do;
      Ethnicity = "Hispanic";
   end;   
   else do;
      Ethnicity = put(Race, race_fmt.);
   end;
RUN;

/*** Relationship 1 ***/
/*** Determining Relationship between Trusting News Sources across Political Party across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgplot data=WaveCombinedFinal;
    by Party;
    vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustNationalNews / x = WaveYear stat = Percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in National News';
    title 'Trust in National News by Year by Party';
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgplot data=WaveCombinedFinal;
    by Party;
    vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustLocalNews / x = WaveYear stat = PERCENT location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in Local News';
    title 'Trust in Local News by Year by Party';
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgplot data=WaveCombinedFinal;
    by Party;
    vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustNewsSocialMedia / x = WaveYear stat = PERCENT location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in News from Social Media';
    title 'Trust in News from Social Media by Year by Party';
run;

/*** Relationship 2 ***/
/*** Determining Relationship between Trusting News across Political Party & Gender/Sex  across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*Gender*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby Gender / layout=columnlattice;
	vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*Gender*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby Gender / layout=columnlattice;
	vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*Gender*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby Gender / layout=columnlattice;
	vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster weight=Weight;
RUN;

/*** Relationship 3 ***/
/*** Determining Relationship between Trusting News across Political Party & Marital Status across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*MaritalStatus*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby MaritalStatus / layout=columnlattice rows=1;
	vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*MaritalStatus*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby MaritalStatus / layout=columnlattice;
	vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*MaritalStatus*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby MaritalStatus / layout=columnlattice;
	vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster weight=Weight;
RUN;

/*** Relationship 4 ***/
/*** Determining Relationship between Trusting News across Political Party & Age Category across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*AgeCategory*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby AgeCategory / layout=panel;
	vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*AgeCategory*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby AgeCategory / layout=panel;
	vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Party*AgeCategory*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Party;
run;

proc sgpanel data=WaveCombinedFinal;
	by Party;
	panelby AgeCategory / layout=panel;
	vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster weight=Weight;
RUN;

/*** Relationship 5 ***/
/*** Determining Relationship between Trusting News across values of Registered to Vote across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES RegisterVote*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by RegisterVote;
run;

proc sgplot data=WaveCombinedFinal;
    by RegisterVote;
    vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustNationalNews / x = WaveYear stat = percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in National News';
    title 'Trust in National News by Registration to Vote';
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES RegisterVote*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by RegisterVote;
run;

proc sgplot data=WaveCombinedFinal;
    by RegisterVote;
    vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustLocalNews / x = WaveYear stat = percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in Local News';
    title 'Trust in Local News by Registration to Vote';
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES RegisterVote*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by RegisterVote;
run;

proc sgplot data=WaveCombinedFinal;
    by RegisterVote;
    vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustNewsSocialMedia / x = WaveYear stat = percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in News from Social Media';
    title 'Trust in News from Social Media by Registration to Vote';
run;

/*** Relationship 6 ***/
/*** Determining Relationship between Trusting News across values of Gender/Sex across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgplot data=WaveCombinedFinal;
    by Gender;
    vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustNationalNews / x = WaveYear stat = percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in National News';
    title 'Trust in National News by Gender/Sex';
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgplot data=WaveCombinedFinal;
    by Gender;
    vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustLocalNews / x = WaveYear stat = percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in Local News';
    title 'Trust in Local News by Gender/Sex';
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgplot data=WaveCombinedFinal;
    by Gender;
    vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster grouporder=ascending weight=Weight;
    xaxistable TrustNewsSocialMedia / x = WaveYear stat = percent location=INSIDE position=TOP;
    yaxis grid;
    keylegend / title='Trust in News from Social Media';
    title 'Trust in News from Social Media by Gender/Sex';
run;

/*** Relationship 7 ***/
/*** Determining Relationship between Trusting News across Gender/Sex & Race across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*Ethnicity*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgpanel data=WaveCombinedFinal;
    by Gender;
    panelby Ethnicity / layout=panel;
    vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster weight=Weight;
run;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*Ethnicity*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgpanel data=WaveCombinedFinal;
	by Gender;
	panelby Ethnicity / layout=panel;
	vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*Ethnicity*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgpanel data=WaveCombinedFinal;
	by Gender;
	panelby Ethnicity / layout=panel;
	vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster weight=Weight;
RUN;

/*** Relationship 8 ***/
/*** Determining Relationship between Trusting News across Gender/Sex & Age Category across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*AgeCategory*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgpanel data=WaveCombinedFinal;
	by Gender;
	panelby AgeCategory / layout=panel;
	vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*AgeCategory*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgpanel data=WaveCombinedFinal;
	by Gender;
	panelby AgeCategory / layout=panel;
	vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES Gender*AgeCategory*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by Gender;
run;

proc sgpanel data=WaveCombinedFinal;
	by Gender;
	panelby AgeCategory / layout=panel;
	vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster weight=Weight;
RUN;

/*** Relationship 9 ***/
/*** Determining Relationship between Trusting News across Age Category & Race across waves/years ***/
PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES AgeCategory*Ethnicity*TrustNationalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by AgeCategory;
run;

proc sgpanel data=WaveCombinedFinal;
	by AgeCategory;
	panelby Ethnicity / layout=panel;
	vbar WaveYear / response=TrustNationalNews group=TrustNationalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES AgeCategory*Ethnicity*TrustLocalNews*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by AgeCategory;
run;

proc sgpanel data=WaveCombinedFinal;
	by AgeCategory;
	panelby Ethnicity / layout=panel;
	vbar WaveYear / response=TrustLocalNews group=TrustLocalNews groupdisplay=cluster weight=Weight;
RUN;

PROC SURVEYFREQ DATA=WaveCombinedFinal;
	TABLES AgeCategory*Ethnicity*TrustNewsSocialMedia*WaveYear / CHISQ;
	WEIGHT Weight;
RUN;

proc sort data=WaveCombinedFinal;
    by AgeCategory;
run;

proc sgpanel data=WaveCombinedFinal;
	by AgeCategory;
	panelby Ethnicity / layout=panel;
	vbar WaveYear / response=TrustNewsSocialMedia group=TrustNewsSocialMedia groupdisplay=cluster weight=Weight;
RUN;