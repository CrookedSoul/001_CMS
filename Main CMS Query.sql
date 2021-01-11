CREATE TABLE [core_File] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(255) NOT NULL,
  [Size] float NOT NULL,
  [Content] varbinary(max) NULL,
  [DateCreated] datetime NOT NULL,
  [CreatedByUserID] int NOT NULL,
  CONSTRAINT [_copy_13] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [core_FileLink] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [ExternalID] int NOT NULL,
  [FileID] int NOT NULL,
  CONSTRAINT [_copy_11] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [core_User] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [TypeID] int NOT NULL,
  [StatusID] int NOT NULL,
  [Name] varchar(45) NOT NULL,
  [Password] varchar(45) NOT NULL,
  [Email] varchar(150) NOT NULL,
  [Description] varchar(max) NULL,
  CONSTRAINT [_copy_6] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [core_UserType] (
  [ID] int NOT NULL,
  [Name] varchar(45) NOT NULL,
  [Code] varchar(45) NOT NULL,
  CONSTRAINT [_copy_5] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [core_UserStatus] (
  [ID] int NOT NULL,
  [Name] varchar(45) NOT NULL,
  [Code] varchar(45) NOT NULL,
  CONSTRAINT [_copy_16] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Author] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(150) NOT NULL,
  [Code] varchar(150) NULL,
  PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Chapter] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Content] nvarchar(max) NOT NULL,
  [DateCreated] datetime NOT NULL,
  [ViewCount] int NOT NULL,
  [ChapterNumber] int NOT NULL,
  [EditorID] int NULL,
  [NovelID] int NOT NULL,
  [Slug] varchar(255) NOT NULL,
  CONSTRAINT [_copy_10] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Editor] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(150) NOT NULL,
  [SiteUrl] varchar(255) NULL,
  CONSTRAINT [_copy_9] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Genre] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(45) NOT NULL,
  [Code] varchar(45) NOT NULL,
  CONSTRAINT [_copy_15] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Novel] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(150) NOT NULL,
  [Summary] nvarchar(255) NOT NULL,
  [CoverImageID] int NULL,
  [ViewCount] int NOT NULL,
  [TranslatorID] int NOT NULL,
  [AuthorID] int NOT NULL,
  [StatusID] int NOT NULL,
  [Slug] varchar(255) NOT NULL,
  [DateReleased] date NULL,
  [DateCreated] datetime NOT NULL,
  [LastUpdated] datetime NULL,
  CONSTRAINT [_copy_12] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_NovelGenre] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [NovelID] int NOT NULL,
  [GenreID] int NOT NULL,
  CONSTRAINT [_copy_1] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_NovelOtherName] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(150) NOT NULL,
  [NovelID] int NOT NULL,
  CONSTRAINT [_copy_8] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_NovelStatus] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(45) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_NovelTag] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [NovelID] int NOT NULL,
  [TagID] int NOT NULL,
  CONSTRAINT [_copy_2] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Tag] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(45) NOT NULL,
  [Code] varchar(45) NOT NULL,
  CONSTRAINT [_copy_14] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_Translator] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(150) NOT NULL,
  [SiteUrl] varchar(255) NULL,
  CONSTRAINT [_copy_7] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_UserBookmark] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [UserID] int NOT NULL,
  [ExternalID] int NOT NULL,
  [TypeID] int NOT NULL,
  CONSTRAINT [_copy_4] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

CREATE TABLE [web_UserBookmarkType] (
  [ID] int IDENTITY(1,1) NOT NULL,
  [Name] varchar(45) NOT NULL,
  CONSTRAINT [_copy_3] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

ALTER TABLE [core_FileLink] ADD CONSTRAINT [CoverFileLink] FOREIGN KEY ([ExternalID]) REFERENCES [web_Novel] ([ID])
GO
ALTER TABLE [core_FileLink] ADD CONSTRAINT [fk_core_FileLink_core_File_1] FOREIGN KEY ([FileID]) REFERENCES [core_File] ([ID])
GO
ALTER TABLE [core_User] ADD CONSTRAINT [fk_core_User_core_UserType_1] FOREIGN KEY ([TypeID]) REFERENCES [core_UserType] ([ID])
GO
ALTER TABLE [core_User] ADD CONSTRAINT [fk_core_User_core_UserStatus_1] FOREIGN KEY ([StatusID]) REFERENCES [core_UserStatus] ([ID])
GO
ALTER TABLE [web_Chapter] ADD CONSTRAINT [fk_web_Chapter_web_Editor_1] FOREIGN KEY ([EditorID]) REFERENCES [web_Editor] ([ID])
GO
ALTER TABLE [web_Chapter] ADD CONSTRAINT [fk_web_Chapter_web_Novel_1] FOREIGN KEY ([NovelID]) REFERENCES [web_Novel] ([ID])
GO
ALTER TABLE [web_Novel] ADD CONSTRAINT [fk_web_Novel_web_Author_1] FOREIGN KEY ([AuthorID]) REFERENCES [web_Author] ([ID])
GO
ALTER TABLE [web_Novel] ADD CONSTRAINT [fk_web_Novel_web_NovelStatus_1] FOREIGN KEY ([StatusID]) REFERENCES [web_NovelStatus] ([ID])
GO
ALTER TABLE [web_Novel] ADD CONSTRAINT [fk_web_Novel_web_Translator_1] FOREIGN KEY ([TranslatorID]) REFERENCES [web_Translator] ([ID])
GO
ALTER TABLE [web_NovelGenre] ADD CONSTRAINT [fk_web_NovelGenre_web_Novel_1] FOREIGN KEY ([NovelID]) REFERENCES [web_Novel] ([ID])
GO
ALTER TABLE [web_NovelGenre] ADD CONSTRAINT [fk_web_NovelGenre_web_Genre_1] FOREIGN KEY ([GenreID]) REFERENCES [web_Genre] ([ID])
GO
ALTER TABLE [web_NovelOtherName] ADD CONSTRAINT [fk_web_NovelOtherName_web_Novel_1] FOREIGN KEY ([NovelID]) REFERENCES [web_Novel] ([ID])
GO
ALTER TABLE [web_NovelTag] ADD CONSTRAINT [fk_web_NovelTag_web_Novel_1] FOREIGN KEY ([NovelID]) REFERENCES [web_Novel] ([ID])
GO
ALTER TABLE [web_NovelTag] ADD CONSTRAINT [fk_web_NovelTag_web_Tag_1] FOREIGN KEY ([TagID]) REFERENCES [web_Tag] ([ID])
GO
ALTER TABLE [web_UserBookmark] ADD CONSTRAINT [fk_web_UserBookmark_core_User_1] FOREIGN KEY ([UserID]) REFERENCES [core_User] ([ID])
GO
ALTER TABLE [web_UserBookmark] ADD CONSTRAINT [fk_web_UserBookmark_web_UserBookmarkType_1] FOREIGN KEY ([TypeID]) REFERENCES [web_UserBookmarkType] ([ID])
GO

INSERT INTO core_UserStatus (ID, Name, Code)
	   VALUES (1, 'Active', 'ACTIVE')
GO
INSERT INTO core_UserStatus (ID, Name)
	   VALUES (2, 'Inactive', 'INACTIVE')
GO
INSERT INTO core_UserStatus (ID, Name)
	   VALUES (3, 'Deleted', 'DELETED')
GO
INSERT INTO core_UserType (ID, Name, Code)
	   VALUES (1, 'Administrator', 'ADMINISTRATOR')
GO
INSERT INTO core_UserType (ID, Name, Code)
	   VALUES (2, 'User', 'User')
GO
