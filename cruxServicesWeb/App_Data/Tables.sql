create table Business 
(
bUsrName nvarchar (100) not null,
bPass nvarchar (100) not null,
bName nvarchar (70) not null,
bLocation nvarchar (150) not null,
bTelephone nvarchar (10) not null,
bMobile nvarchar (10) not null,
bDescription nvarchar (Max) null,
bAvgRating decimal (14,8) null,
bProPLogo nvarchar (Max) null,
bStatus nvarchar (20) not null,
PRIMARY KEY CLUSTERED (bUsrName ASC)
);

create table ServiceProvider 
(
spUsrName nvarchar (100) not null,
bUsrName nvarchar (100) null,
spPass nvarchar (100) not null,
spFirstName nvarchar (30) not null,
spLastName nvarchar (30) not null,
spLocation nvarchar (150) not null,
spSpecialty nvarchar (30) not null,
spDOB smalldatetime not null,
spTelephone nvarchar (10) not null,
spMobile nvarchar (10) not null,
spDescription nvarchar (Max) null,
spBaynesianRating decimal (14,8) null,
spChargeHourly decimal (14,2) null,
spChargeDaily decimal (14,2) null,
spProPic nvarchar (Max) null,
spStatus nvarchar (20) not null,
PRIMARY KEY CLUSTERED (spUsrName ASC),
CONSTRAINT [FK.ServiceProvider.Business.bUsrName] FOREIGN KEY (bUsrName) 
REFERENCES Business(bUsrName)
);

create table Category
(
catID int identity (1,1) not null,
categry nvarchar (50) not null,
tag nvarchar (100) not null,
PRIMARY KEY CLUSTERED (catID ASC)
);

create table Tag
(
tID int identity (1,1) not null,
spUsrName nvarchar (100) not null,
catID int not null
PRIMARY KEY CLUSTERED (tID ASC),
CONSTRAINT [FK.Tag.ServiceProvider.spUsrName] FOREIGN KEY (spUsrName) 
REFERENCES ServiceProvider(spUsrName),
CONSTRAINT [FK.Tag.Category.catID] FOREIGN KEY (catID) 
REFERENCES Category(catID),
);

create table Portfolio
(
pfID int identity (1,1) not null,
spUsrName nvarchar (100) not null,
pffilename nvarchar (MAX) not null,
pffiletype nvarchar (50) null,
fileURL nvarchar (MAX)not null,
dateUpdated smalldatetime not null,
PRIMARY KEY CLUSTERED (pfID ASC),
CONSTRAINT [FK.Portfolio.ServiceProvider.spUsrName] FOREIGN KEY (spUsrName) 
REFERENCES ServiceProvider(spUsrName)
);

create table Unavailability
(
unID int identity (1,1) not null,
spUsrName nvarchar (100) not null,
unStartDate smalldatetime not null,
unEndDate smalldatetime not null,
PRIMARY KEY CLUSTERED (unID ASC),
CONSTRAINT [FK.Unavailability.ServiceProvider.spUsrName] FOREIGN KEY (spUsrName) 
REFERENCES ServiceProvider(spUsrName)
);

create table ServiceRequestor
(
srUsrName nvarchar (100) not null,
srPass nvarchar (100) not null,
srFirstName nvarchar (30) not null,
srLastName nvarchar (30) not null,
srDOB smalldatetime not null,
srLocation nvarchar (150) not null,
srTelephone nvarchar (10) not null,
srMobile nvarchar (10) not null,
srProPic nvarchar (Max) null,
PRIMARY KEY CLUSTERED (srUsrName ASC)
);

create table Problem
(
pID int identity (1,1) not null,
probDate smalldatetime not null,
probCategory nvarchar (30) not null,
probLocation nvarchar (150) not null,
itemName nvarchar (30) not null,
itemProb nvarchar (30) not null,
whichPartofTheHouse nvarchar (30) not null,
durationOfProbExistence int not null,
quoteRequirement nvarchar (20) not null,
toCompleteDate smalldatetime not null,
PRIMARY KEY CLUSTERED (pID ASC)
);

create table Hire
(
hID int identity (1,1) not null,
spUsrName nvarchar (100) not null,
srUsrName nvarchar (100) not null,
pID int not null,
dateOfRequest smalldatetime not null,
hStatus nvarchar (50) not null,
PRIMARY KEY CLUSTERED (hID ASC),
CONSTRAINT [FK.Hire.ServiceProvider.spUsrName] FOREIGN KEY (spUsrName) 
REFERENCES ServiceProvider(spUsrName),
CONSTRAINT [FK.Hire.ServiceRequestor.srUsrName] FOREIGN KEY (srUsrName) 
REFERENCES ServiceRequestor(srUsrName),
CONSTRAINT [FK.Hire.Problem.pID] FOREIGN KEY (pID) 
REFERENCES Problem(pID)
);

create table Rating
(
rID int identity (1,1) not null,
hID int not null,
ratedDate smalldatetime not null,
timeR int not null,
costR int not null,
qualityOfWR int not null,
relofFinR int not null,
probResR int not null,
totalScore25 int not null,
totalScore100 int not null,
comment nvarchar (MAX) null,
PRIMARY KEY CLUSTERED (rID ASC),
CONSTRAINT [FK.Rating.Hire.hID] FOREIGN KEY (hID) 
REFERENCES Hire(hID)
);
