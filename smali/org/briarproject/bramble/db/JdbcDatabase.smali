.class abstract Lorg/briarproject/bramble/db/JdbcDatabase;
.super Ljava/lang/Object;
.source "JdbcDatabase.java"

# interfaces
.implements Lorg/briarproject/bramble/db/Database;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/bramble/db/Database<",
        "Ljava/sql/Connection;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field static final CODE_SCHEMA_VERSION:I = 0x29

.field private static final CREATE_CONTACTS:Ljava/lang/String; = "CREATE TABLE contacts (contactId _COUNTER, authorId _HASH NOT NULL, formatVersion INT NOT NULL, name _STRING NOT NULL, alias _STRING, publicKey _BINARY NOT NULL, localAuthorId _HASH NOT NULL, verified BOOLEAN NOT NULL, active BOOLEAN NOT NULL, PRIMARY KEY (contactId), FOREIGN KEY (localAuthorId) REFERENCES localAuthors (authorId) ON DELETE CASCADE)"

.field private static final CREATE_GROUPS:Ljava/lang/String; = "CREATE TABLE groups (groupId _HASH NOT NULL, clientId _STRING NOT NULL, majorVersion INT NOT NULL, descriptor _BINARY NOT NULL, PRIMARY KEY (groupId))"

.field private static final CREATE_GROUP_METADATA:Ljava/lang/String; = "CREATE TABLE groupMetadata (groupId _HASH NOT NULL, metaKey _STRING NOT NULL, value _BINARY NOT NULL, PRIMARY KEY (groupId, metaKey), FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

.field private static final CREATE_GROUP_VISIBILITIES:Ljava/lang/String; = "CREATE TABLE groupVisibilities (contactId INT NOT NULL, groupId _HASH NOT NULL, shared BOOLEAN NOT NULL, PRIMARY KEY (contactId, groupId), FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

.field private static final CREATE_INCOMING_KEYS:Ljava/lang/String; = "CREATE TABLE incomingKeys (transportId _STRING NOT NULL, keySetId INT NOT NULL, rotationPeriod BIGINT NOT NULL, contactId INT NOT NULL, tagKey _SECRET NOT NULL, headerKey _SECRET NOT NULL, base BIGINT NOT NULL, bitmap _BINARY NOT NULL, periodOffset INT NOT NULL, PRIMARY KEY (transportId, keySetId, periodOffset), FOREIGN KEY (transportId) REFERENCES transports (transportId) ON DELETE CASCADE, FOREIGN KEY (keySetId) REFERENCES outgoingKeys (keySetId) ON DELETE CASCADE, FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE)"

.field private static final CREATE_LOCAL_AUTHORS:Ljava/lang/String; = "CREATE TABLE localAuthors (authorId _HASH NOT NULL, formatVersion INT NOT NULL, name _STRING NOT NULL, publicKey _BINARY NOT NULL, privateKey _BINARY NOT NULL, created BIGINT NOT NULL, PRIMARY KEY (authorId))"

.field private static final CREATE_MESSAGES:Ljava/lang/String; = "CREATE TABLE messages (messageId _HASH NOT NULL, groupId _HASH NOT NULL, timestamp BIGINT NOT NULL, state INT NOT NULL, shared BOOLEAN NOT NULL, length INT NOT NULL, raw BLOB, PRIMARY KEY (messageId), FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

.field private static final CREATE_MESSAGE_DEPENDENCIES:Ljava/lang/String; = "CREATE TABLE messageDependencies (groupId _HASH NOT NULL, messageId _HASH NOT NULL, dependencyId _HASH NOT NULL, messageState INT NOT NULL, dependencyState INT, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE, FOREIGN KEY (messageId) REFERENCES messages (messageId) ON DELETE CASCADE)"

.field private static final CREATE_MESSAGE_METADATA:Ljava/lang/String; = "CREATE TABLE messageMetadata (messageId _HASH NOT NULL, groupId _HASH NOT NULL, state INT NOT NULL, metaKey _STRING NOT NULL, value _BINARY NOT NULL, PRIMARY KEY (messageId, metaKey), FOREIGN KEY (messageId) REFERENCES messages (messageId) ON DELETE CASCADE, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

.field private static final CREATE_OFFERS:Ljava/lang/String; = "CREATE TABLE offers (messageId _HASH NOT NULL, contactId INT NOT NULL, PRIMARY KEY (messageId, contactId), FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE)"

.field private static final CREATE_OUTGOING_KEYS:Ljava/lang/String; = "CREATE TABLE outgoingKeys (transportId _STRING NOT NULL, keySetId _COUNTER, rotationPeriod BIGINT NOT NULL, contactId INT NOT NULL, tagKey _SECRET NOT NULL, headerKey _SECRET NOT NULL, stream BIGINT NOT NULL, active BOOLEAN NOT NULL, PRIMARY KEY (transportId, keySetId), FOREIGN KEY (transportId) REFERENCES transports (transportId) ON DELETE CASCADE, UNIQUE (keySetId), FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE)"

.field private static final CREATE_SETTINGS:Ljava/lang/String; = "CREATE TABLE settings (namespace _STRING NOT NULL, settingKey _STRING NOT NULL, value _STRING NOT NULL, PRIMARY KEY (namespace, settingKey))"

.field private static final CREATE_STATUSES:Ljava/lang/String; = "CREATE TABLE statuses (messageId _HASH NOT NULL, contactId INT NOT NULL, groupId _HASH NOT NULL, timestamp BIGINT NOT NULL, length INT NOT NULL, state INT NOT NULL, groupShared BOOLEAN NOT NULL, messageShared BOOLEAN NOT NULL, deleted BOOLEAN NOT NULL, ack BOOLEAN NOT NULL, seen BOOLEAN NOT NULL, requested BOOLEAN NOT NULL, expiry BIGINT NOT NULL, txCount INT NOT NULL, eta BIGINT NOT NULL, PRIMARY KEY (messageId, contactId), FOREIGN KEY (messageId) REFERENCES messages (messageId) ON DELETE CASCADE, FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

.field private static final CREATE_TRANSPORTS:Ljava/lang/String; = "CREATE TABLE transports (transportId _STRING NOT NULL, maxLatency INT NOT NULL, PRIMARY KEY (transportId))"

.field private static final INDEX_CONTACTS_BY_AUTHOR_ID:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS contactsByAuthorId ON contacts (authorId)"

.field private static final INDEX_GROUPS_BY_CLIENT_ID_MAJOR_VERSION:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS groupsByClientIdMajorVersion ON groups (clientId, majorVersion)"

.field private static final INDEX_MESSAGE_DEPENDENCIES_BY_DEPENDENCY_ID:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS messageDependenciesByDependencyId ON messageDependencies (dependencyId)"

.field private static final INDEX_MESSAGE_METADATA_BY_GROUP_ID_STATE:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS messageMetadataByGroupIdState ON messageMetadata (groupId, state)"

.field private static final INDEX_STATUSES_BY_CONTACT_ID_GROUP_ID:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS statusesByContactIdGroupId ON statuses (contactId, groupId)"

.field private static final INDEX_STATUSES_BY_CONTACT_ID_TIMESTAMP:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS statusesByContactIdTimestamp ON statuses (contactId, timestamp)"

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final OFFSET_CURR:I = 0x0

.field private static final OFFSET_NEXT:I = 0x1

.field private static final OFFSET_PREV:I = -0x1


# instance fields
.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private closed:Z

.field private final connections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionsChanged:Ljava/util/concurrent/locks/Condition;

.field private final connectionsLock:Ljava/util/concurrent/locks/Lock;

.field private final dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

.field private openConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 311
    const-class v0, Lorg/briarproject/bramble/db/JdbcDatabase;

    .line 312
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/db/DatabaseTypes;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    .line 323
    iput-boolean v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->closed:Z

    .line 329
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    .line 330
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsChanged:Ljava/util/concurrent/locks/Condition;

    .line 334
    iput-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    .line 335
    iput-object p2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 336
    iput-object p3, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private addStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT messageId, timestamp, state, shared, length, raw IS NULL FROM messages WHERE groupId = ?"

    .line 721
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v15
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 722
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    const/4 v13, 0x1

    invoke-interface {v15, v13, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 723
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v12
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 724
    :goto_0
    :try_start_2
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {v12, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v1, 0x2

    .line 726
    invoke-interface {v12, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x3

    .line 727
    invoke-interface {v12, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v9

    const/4 v1, 0x4

    .line 728
    invoke-interface {v12, v1}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v11

    const/4 v1, 0x5

    .line 729
    invoke-interface {v12, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    const/4 v1, 0x6

    .line 730
    invoke-interface {v12, v1}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v16

    move-object/from16 v10, p2

    .line 731
    invoke-direct {v14, v0, v10, v3}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeOfferedMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v17
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v10, p4

    move-object/from16 v18, v12

    move/from16 v12, v16

    const/16 v16, 0x1

    move/from16 v13, v17

    .line 732
    :try_start_3
    invoke-direct/range {v1 .. v13}, Lorg/briarproject/bramble/db/JdbcDatabase;->addStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;JILorg/briarproject/bramble/api/sync/ValidationManager$State;ZZZZ)V

    move-object/from16 v12, v18

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v18, v12

    .line 735
    invoke-interface/range {v18 .. v18}, Ljava/sql/ResultSet;->close()V

    .line 736
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v12

    :goto_1
    move-object/from16 v1, v18

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v15, v1

    .line 738
    :goto_2
    invoke-direct {v14, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 739
    invoke-virtual {v14, v15}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 740
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;JILorg/briarproject/bramble/api/sync/ValidationManager$State;ZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO statuses (messageId, contactId, groupId, timestamp, length, state, groupShared, messageShared, deleted, ack, seen, requested, expiry, txCount, eta) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, FALSE, 0, 0, 0)"

    .line 860
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 861
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x2

    .line 862
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x3

    .line 863
    invoke-virtual {p4}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x4

    .line 864
    invoke-interface {p1, p2, p5, p6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p2, 0x5

    .line 865
    invoke-interface {p1, p2, p7}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x6

    .line 866
    invoke-virtual {p8}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x7

    .line 867
    invoke-interface {p1, p2, p9}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 p2, 0x8

    .line 868
    invoke-interface {p1, p2, p10}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 p2, 0x9

    .line 869
    invoke-interface {p1, p2, p11}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 p2, 0xa

    .line 870
    invoke-interface {p1, p2, p12}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/16 p2, 0xb

    .line 871
    invoke-interface {p1, p2, p12}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 872
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 874
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 873
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 876
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 877
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private createIndexes(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 513
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "CREATE INDEX IF NOT EXISTS contactsByAuthorId ON contacts (authorId)"

    .line 514
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    const-string v0, "CREATE INDEX IF NOT EXISTS groupsByClientIdMajorVersion ON groups (clientId, majorVersion)"

    .line 515
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    const-string v0, "CREATE INDEX IF NOT EXISTS messageMetadataByGroupIdState ON messageMetadata (groupId, state)"

    .line 516
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    const-string v0, "CREATE INDEX IF NOT EXISTS messageDependenciesByDependencyId ON messageDependencies (dependencyId)"

    .line 517
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    const-string v0, "CREATE INDEX IF NOT EXISTS statusesByContactIdGroupId ON statuses (contactId, groupId)"

    .line 518
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    const-string v0, "CREATE INDEX IF NOT EXISTS statusesByContactIdTimestamp ON statuses (contactId, timestamp)"

    .line 519
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 520
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 p1, 0x0

    .line 522
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 523
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private createTables(Ljava/sql/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 488
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :try_start_1
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE settings (namespace _STRING NOT NULL, settingKey _STRING NOT NULL, value _STRING NOT NULL, PRIMARY KEY (namespace, settingKey))"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE localAuthors (authorId _HASH NOT NULL, formatVersion INT NOT NULL, name _STRING NOT NULL, publicKey _BINARY NOT NULL, privateKey _BINARY NOT NULL, created BIGINT NOT NULL, PRIMARY KEY (authorId))"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE contacts (contactId _COUNTER, authorId _HASH NOT NULL, formatVersion INT NOT NULL, name _STRING NOT NULL, alias _STRING, publicKey _BINARY NOT NULL, localAuthorId _HASH NOT NULL, verified BOOLEAN NOT NULL, active BOOLEAN NOT NULL, PRIMARY KEY (contactId), FOREIGN KEY (localAuthorId) REFERENCES localAuthors (authorId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE groups (groupId _HASH NOT NULL, clientId _STRING NOT NULL, majorVersion INT NOT NULL, descriptor _BINARY NOT NULL, PRIMARY KEY (groupId))"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE groupMetadata (groupId _HASH NOT NULL, metaKey _STRING NOT NULL, value _BINARY NOT NULL, PRIMARY KEY (groupId, metaKey), FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE groupVisibilities (contactId INT NOT NULL, groupId _HASH NOT NULL, shared BOOLEAN NOT NULL, PRIMARY KEY (contactId, groupId), FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE messages (messageId _HASH NOT NULL, groupId _HASH NOT NULL, timestamp BIGINT NOT NULL, state INT NOT NULL, shared BOOLEAN NOT NULL, length INT NOT NULL, raw BLOB, PRIMARY KEY (messageId), FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE messageMetadata (messageId _HASH NOT NULL, groupId _HASH NOT NULL, state INT NOT NULL, metaKey _STRING NOT NULL, value _BINARY NOT NULL, PRIMARY KEY (messageId, metaKey), FOREIGN KEY (messageId) REFERENCES messages (messageId) ON DELETE CASCADE, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE messageDependencies (groupId _HASH NOT NULL, messageId _HASH NOT NULL, dependencyId _HASH NOT NULL, messageState INT NOT NULL, dependencyState INT, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE, FOREIGN KEY (messageId) REFERENCES messages (messageId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE offers (messageId _HASH NOT NULL, contactId INT NOT NULL, PRIMARY KEY (messageId, contactId), FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE statuses (messageId _HASH NOT NULL, contactId INT NOT NULL, groupId _HASH NOT NULL, timestamp BIGINT NOT NULL, length INT NOT NULL, state INT NOT NULL, groupShared BOOLEAN NOT NULL, messageShared BOOLEAN NOT NULL, deleted BOOLEAN NOT NULL, ack BOOLEAN NOT NULL, seen BOOLEAN NOT NULL, requested BOOLEAN NOT NULL, expiry BIGINT NOT NULL, txCount INT NOT NULL, eta BIGINT NOT NULL, PRIMARY KEY (messageId, contactId), FOREIGN KEY (messageId) REFERENCES messages (messageId) ON DELETE CASCADE, FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE, FOREIGN KEY (groupId) REFERENCES groups (groupId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE transports (transportId _STRING NOT NULL, maxLatency INT NOT NULL, PRIMARY KEY (transportId))"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE outgoingKeys (transportId _STRING NOT NULL, keySetId _COUNTER, rotationPeriod BIGINT NOT NULL, contactId INT NOT NULL, tagKey _SECRET NOT NULL, headerKey _SECRET NOT NULL, stream BIGINT NOT NULL, active BOOLEAN NOT NULL, PRIMARY KEY (transportId, keySetId), FOREIGN KEY (transportId) REFERENCES transports (transportId) ON DELETE CASCADE, UNIQUE (keySetId), FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    const-string v1, "CREATE TABLE incomingKeys (transportId _STRING NOT NULL, keySetId INT NOT NULL, rotationPeriod BIGINT NOT NULL, contactId INT NOT NULL, tagKey _SECRET NOT NULL, headerKey _SECRET NOT NULL, base BIGINT NOT NULL, bitmap _BINARY NOT NULL, periodOffset INT NOT NULL, PRIMARY KEY (transportId, keySetId, periodOffset), FOREIGN KEY (transportId) REFERENCES transports (transportId) ON DELETE CASCADE, FOREIGN KEY (keySetId) REFERENCES outgoingKeys (keySetId) ON DELETE CASCADE, FOREIGN KEY (contactId) REFERENCES contacts (contactId) ON DELETE CASCADE)"

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/db/DatabaseTypes;->replaceTypes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 503
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 p1, 0x0

    .line 505
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 506
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getMessagesInState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId FROM messages WHERE state = ? AND raw IS NOT NULL"

    .line 2041
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2042
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2043
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2044
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2045
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2046
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 2047
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 2050
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2051
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2052
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private initialiseSettings(Ljava/sql/Connection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 455
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "schemaVersion"

    const/16 v2, 0x29

    .line 456
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    const-string v1, "lastCompacted"

    .line 457
    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->putLong(Ljava/lang/String;J)V

    const-string v1, "db"

    .line 458
    invoke-virtual {p0, p1, v0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->mergeSettings(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method private isCompactionDue(Lorg/briarproject/bramble/api/settings/Settings;)Z
    .locals 4

    const-string v0, "lastCompacted"

    const-wide/16 v1, 0x0

    .line 434
    invoke-virtual {p1, v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 435
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 436
    sget-object p1, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 437
    sget-object p1, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms since last compaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 438
    :cond_0
    sget-wide v0, Lorg/briarproject/bramble/db/DatabaseConstants;->MAX_COMPACTION_INTERVAL_MS:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private migrateSchema(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Lorg/briarproject/bramble/api/db/MigrationListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const-string v0, "schemaVersion"

    const/4 v1, -0x1

    .line 400
    invoke-virtual {p2, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v1, :cond_7

    const/16 v0, 0x29

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lt v0, p2, :cond_6

    .line 406
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMigrations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/db/Migration;

    .line 407
    invoke-interface {v2}, Lorg/briarproject/bramble/db/Migration;->getStartVersion()I

    move-result v3

    invoke-interface {v2}, Lorg/briarproject/bramble/db/Migration;->getEndVersion()I

    move-result v4

    if-ne v3, p2, :cond_1

    .line 409
    sget-object p2, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 410
    sget-object p2, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrating from schema "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 411
    invoke-interface {p3}, Lorg/briarproject/bramble/api/db/MigrationListener;->onDatabaseMigration()V

    .line 413
    :cond_3
    invoke-interface {v2, p1}, Lorg/briarproject/bramble/db/Migration;->migrate(Ljava/lang/Object;)V

    .line 415
    invoke-direct {p0, p1, v4}, Lorg/briarproject/bramble/db/JdbcDatabase;->storeSchemaVersion(Ljava/sql/Connection;I)V

    move p2, v4

    goto :goto_0

    :cond_4
    if-ne p2, v0, :cond_5

    const/4 p1, 0x1

    return p1

    .line 420
    :cond_5
    new-instance p1, Lorg/briarproject/bramble/api/db/DataTooOldException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DataTooOldException;-><init>()V

    throw p1

    .line 404
    :cond_6
    new-instance p1, Lorg/briarproject/bramble/api/db/DataTooNewException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DataTooNewException;-><init>()V

    throw p1

    .line 401
    :cond_7
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method private removeOfferedMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM offers WHERE contactId = ? AND messageId = ?"

    .line 2661
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2662
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 2663
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2664
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 2666
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2665
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2669
    :goto_1
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2670
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private removeOrUpdateMetadata(Ljava/sql/Connection;[BLorg/briarproject/bramble/api/db/Metadata;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "[B",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2399
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2400
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2401
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/db/Metadata;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2402
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/briarproject/bramble/api/db/Metadata;->REMOVE:[B

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2403
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2406
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p3, :cond_7

    .line 2407
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " WHERE "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = ? AND metaKey = ?"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2409
    invoke-interface {p1, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2410
    :try_start_1
    invoke-interface {p3, v5, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2411
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2412
    invoke-interface {p3, v3, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2413
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_1

    .line 2415
    :cond_2
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object v0

    .line 2416
    array-length v6, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v6, v1, :cond_6

    .line 2418
    array-length v1, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_5

    aget v7, v0, v6

    if-ltz v7, :cond_4

    if-gt v7, v5, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2420
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 2419
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 2422
    :cond_5
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->close()V

    move-object v0, p3

    goto :goto_3

    .line 2417
    :cond_6
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    move-object v0, p3

    goto/16 :goto_7

    .line 2424
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2426
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " SET value = ? WHERE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " = ? AND metaKey = ?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2428
    invoke-interface {p1, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2429
    :try_start_3
    invoke-interface {p1, v3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2430
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 2431
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-interface {p1, v5, p4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p4, 0x3

    .line 2432
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p4, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2433
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_4

    .line 2435
    :cond_9
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2436
    array-length p3, p2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p4

    if-ne p3, p4, :cond_f

    .line 2438
    array-length p3, p2

    const/4 p4, 0x0

    :goto_5
    if-ge p4, p3, :cond_c

    aget p5, p2, p4

    if-ltz p5, :cond_b

    if-gt p5, v5, :cond_a

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 2440
    :cond_a
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2439
    :cond_b
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2442
    :cond_c
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    .line 2444
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 2446
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    add-int/lit8 v0, v4, 0x1

    .line 2447
    aget v1, p2, v4

    if-nez v1, :cond_d

    .line 2448
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move v4, v0

    goto :goto_6

    :cond_e
    return-object p3

    .line 2437
    :cond_f
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 2452
    :goto_7
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2453
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private storeLastCompacted(Ljava/sql/Connection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 449
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "lastCompacted"

    .line 450
    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v2}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->putLong(Ljava/lang/String;J)V

    const-string v1, "db"

    .line 451
    invoke-virtual {p0, p1, v0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->mergeSettings(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method private storeSchemaVersion(Ljava/sql/Connection;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 443
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "schemaVersion"

    .line 444
    invoke-virtual {v0, v1, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    const-string p2, "db"

    .line 445
    invoke-virtual {p0, p1, v0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->mergeSettings(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method private tryToClose(Ljava/sql/ResultSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 463
    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 465
    sget-object v0, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic abortTransaction(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->abortTransaction(Ljava/sql/Connection;)V

    return-void
.end method

.method public abortTransaction(Ljava/sql/Connection;)V
    .locals 3

    .line 558
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->rollback()V

    .line 559
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :try_start_1
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsChanged:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :try_start_2
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 565
    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 568
    sget-object v1, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 570
    :try_start_3
    invoke-interface {p1}, Ljava/sql/Connection;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 572
    sget-object v0, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 575
    :goto_0
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 577
    :try_start_4
    iget p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    .line 578
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsChanged:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 580
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 581
    throw p1
.end method

.method public bridge synthetic addContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual/range {p0 .. p5}, Lorg/briarproject/bramble/db/JdbcDatabase;->addContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    return-object p1
.end method

.method public addContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO contacts (authorId, formatVersion, name, publicKey, localAuthorId, verified, active) VALUES (?, ?, ?, ?, ?, ?, ?)"

    .line 639
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 640
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x2

    .line 641
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getFormatVersion()I

    move-result v4

    invoke-interface {v1, v2, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x3

    .line 642
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x4

    .line 643
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x5

    .line 644
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p3

    invoke-interface {v1, p2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x6

    .line 645
    invoke-interface {v1, p2, p4}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 p2, 0x7

    .line 646
    invoke-interface {v1, p2, p5}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 647
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v3, :cond_2

    .line 649
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string p2, "SELECT contactId FROM contacts ORDER BY contactId DESC LIMIT 1"

    .line 653
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 654
    :try_start_2
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 655
    :try_start_3
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 656
    new-instance p3, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p4

    invoke-direct {p3, p4}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    .line 657
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p4

    if-nez p4, :cond_0

    .line 658
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 659
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-object p3

    .line 657
    :cond_0
    new-instance p3, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p3}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p3

    .line 655
    :cond_1
    new-instance p3, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p3}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p3
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p3

    move-object v1, p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p3

    move-object v1, p1

    goto :goto_0

    .line 648
    :cond_2
    :try_start_4
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p3

    goto :goto_0

    :catch_3
    move-exception p3

    move-object v1, v0

    .line 662
    :goto_0
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 663
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 664
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic addGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->addGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public addGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO groups (groupId, clientId, majorVersion, descriptor) VALUES (?, ?, ?, ?)"

    .line 675
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x2

    .line 677
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 678
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getMajorVersion()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x4

    .line 679
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 680
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 682
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 681
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 684
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 685
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic addGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->addGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-void
.end method

.method public addGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO groupVisibilities (contactId, groupId, shared) VALUES (?, ?, ?)"

    .line 697
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 698
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x2

    .line 699
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x3

    .line 700
    invoke-interface {v1, v0, p4}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 701
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 703
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 705
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->addStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-void

    .line 702
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 707
    :goto_0
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 708
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic addLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->addLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    return-void
.end method

.method public addLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO localAuthors (authorId, formatVersion, name, publicKey, privateKey, created) VALUES (?, ?, ?, ?, ?, ?)"

    .line 753
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 754
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x2

    .line 755
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getFormatVersion()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v0, 0x3

    .line 756
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 757
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPublicKey()[B

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x5

    .line 758
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v0, 0x6

    .line 759
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getTimeCreated()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 760
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 762
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 761
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 764
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 765
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic addMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ValidationManager$State;ZLorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual/range {p0 .. p5}, Lorg/briarproject/bramble/db/JdbcDatabase;->addMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ValidationManager$State;ZLorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public addMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ValidationManager$State;ZLorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "INSERT INTO messages (messageId, groupId, timestamp, state, shared, length, raw) VALUES (?, ?, ?, ?, ?, ?, ?)"

    .line 778
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v13
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 779
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    const/4 v12, 0x1

    invoke-interface {v13, v12, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    const/4 v11, 0x2

    invoke-interface {v13, v11, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v1

    const/4 v10, 0x3

    invoke-interface {v13, v10, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 v1, 0x4

    .line 782
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v2

    invoke-interface {v13, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    move/from16 v9, p4

    .line 783
    invoke-interface {v13, v1, v9}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 784
    iget-object v1, v14, Lorg/briarproject/bramble/db/JdbcDatabase;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    move-object/from16 v8, p2

    invoke-interface {v1, v8}, Lorg/briarproject/bramble/api/sync/MessageFactory;->getRawMessage(Lorg/briarproject/bramble/api/sync/Message;)[B

    move-result-object v6

    const/4 v1, 0x6

    .line 785
    array-length v2, v6

    invoke-interface {v13, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x7

    .line 786
    invoke-interface {v13, v1, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 787
    invoke-interface {v13}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v1

    if-ne v1, v12, :cond_4

    .line 789
    invoke-interface {v13}, Ljava/sql/PreparedStatement;->close()V

    .line 792
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->getGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object v1

    .line 793
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 794
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/briarproject/bramble/api/contact/ContactId;

    .line 795
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-direct {v14, v0, v4, v2}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeOfferedMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_1

    if-eqz v15, :cond_0

    .line 796
    :try_start_2
    invoke-virtual {v4, v15}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v13

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v17, 0x1

    .line 797
    :goto_2
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v18

    array-length v7, v6

    .line 798
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v6, v18

    move/from16 v8, v23

    move-object/from16 v9, p3

    move/from16 v10, v20

    const/4 v15, 0x2

    move/from16 v11, p4

    const/4 v15, 0x1

    move/from16 v12, v21

    move-object/from16 v18, v13

    move/from16 v13, v17

    .line 797
    :try_start_4
    invoke-direct/range {v1 .. v13}, Lorg/briarproject/bramble/db/JdbcDatabase;->addStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;JILorg/briarproject/bramble/api/sync/ValidationManager$State;ZZZZ)V

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v13, v18

    move-object/from16 v6, v22

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v15, p5

    goto :goto_0

    :cond_2
    move-object/from16 v18, v13

    const/4 v15, 0x1

    const-string v1, "UPDATE messageDependencies SET dependencyState = ? WHERE groupId = ? AND dependencyId = ?"

    .line 805
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 806
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v0

    invoke-interface {v1, v15, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 809
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ltz v0, :cond_3

    .line 811
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 810
    :cond_3
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    move-object/from16 v18, v13

    .line 788
    :try_start_6
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v13

    :goto_3
    move-object/from16 v1, v18

    goto :goto_4

    :catch_3
    move-exception v0

    .line 813
    :goto_4
    invoke-virtual {v14, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 814
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic addMessageDependency(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->addMessageDependency(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    return-void
.end method

.method public addMessageDependency(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT state FROM messages WHERE messageId = ? AND groupId = ?"

    .line 890
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 891
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 892
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 893
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 895
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 896
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v0

    .line 897
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 899
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 900
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v5, "INSERT INTO messageDependencies (groupId, messageId, dependencyId, messageState, dependencyState) VALUES (?, ?, ?, ? ,?)"

    .line 906
    invoke-interface {p1, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 907
    :try_start_3
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 908
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x3

    .line 909
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 910
    invoke-virtual {p4}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p2

    const/4 p3, 0x4

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x5

    if-nez v0, :cond_2

    .line 911
    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 912
    :cond_2
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 913
    :goto_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v3, :cond_3

    .line 915
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 914
    :cond_3
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 917
    :goto_2
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 918
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 919
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic addOfferedMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->addOfferedMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public addOfferedMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM offers WHERE messageId = ? AND contactId = ?"

    .line 826
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 827
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 828
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v2

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 829
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 830
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    .line 831
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_2

    .line 832
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 833
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "INSERT INTO offers (messageId, contactId) VALUES (?, ?)"

    .line 836
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 837
    :try_start_3
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 838
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p1

    invoke-interface {v0, v4, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 839
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 841
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 840
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    .line 831
    :cond_2
    :try_start_4
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 843
    :goto_0
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 844
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 845
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic addTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->addTransport(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;I)V

    return-void
.end method

.method public addTransport(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO transports (transportId, maxLatency) VALUES (?, ?)"

    .line 930
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 931
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    int-to-long v1, p3

    .line 932
    invoke-interface {p1, p2, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 933
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 935
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 934
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 937
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 938
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic addTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->addTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object p1

    return-object p1
.end method

.method public addTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "INSERT INTO outgoingKeys (contactId, transportId, rotationPeriod, tagKey, headerKey, stream, active) VALUES (?, ?, ?, ?, ?, ?, ?)"

    .line 952
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 953
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 954
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 955
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-result-object v2

    .line 956
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getRotationPeriod()J

    move-result-wide v5

    const/4 v7, 0x3

    invoke-interface {v1, v7, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 957
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v1, v6, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 958
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v5

    const/4 v8, 0x5

    invoke-interface {v1, v8, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 959
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getStreamCounter()J

    move-result-wide v9

    const/4 v5, 0x6

    invoke-interface {v1, v5, v9, v10}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 960
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->isActive()Z

    move-result v2

    const/4 v9, 0x7

    invoke-interface {v1, v9, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 961
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 963
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v2, "SELECT keySetId FROM outgoingKeys ORDER BY keySetId DESC LIMIT 1"

    .line 967
    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 968
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 969
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 970
    new-instance v0, Lorg/briarproject/bramble/api/transport/KeySetId;

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v10

    invoke-direct {v0, v10}, Lorg/briarproject/bramble/api/transport/KeySetId;-><init>(I)V

    .line 971
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v10

    if-nez v10, :cond_3

    .line 972
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 973
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    const-string v10, "INSERT INTO incomingKeys (keySetId, contactId, transportId, rotationPeriod, tagKey, headerKey, base, bitmap, periodOffset) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 979
    invoke-interface {p1, v10}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 980
    :try_start_4
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result v2

    invoke-interface {p1, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 981
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 982
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v7, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 984
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getPreviousIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object p2

    .line 985
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v10

    invoke-interface {p1, v6, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 986
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v8, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 987
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 988
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v10

    invoke-interface {p1, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 989
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object p2

    const/16 v2, 0x8

    invoke-interface {p1, v2, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, -0x1

    const/16 v4, 0x9

    .line 990
    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 991
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 993
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object p2

    .line 994
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v10

    invoke-interface {p1, v6, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 995
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v10

    invoke-virtual {v10}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v10

    invoke-interface {p1, v8, v10}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 996
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v10

    invoke-virtual {v10}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v10

    invoke-interface {p1, v5, v10}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 997
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v10

    invoke-interface {p1, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 998
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x0

    .line 999
    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1000
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 1002
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getNextIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object p3

    .line 1003
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v10

    invoke-interface {p1, v6, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1004
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v6}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v6

    invoke-interface {p1, v8, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1005
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v6}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1006
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v5

    invoke-interface {p1, v9, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1007
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object p3

    invoke-interface {p1, v2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1008
    invoke-interface {p1, v4, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1009
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 1010
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p3

    .line 1011
    array-length v2, p3

    if-ne v2, v7, :cond_2

    .line 1012
    array-length v2, p3

    :goto_0
    if-ge p2, v2, :cond_1

    aget v4, p3, p2

    if-ne v4, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 1014
    :cond_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-object v0

    .line 1011
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    .line 971
    :cond_3
    :try_start_5
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 969
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    move-object v1, v0

    :goto_1
    move-object p1, v2

    goto :goto_2

    .line 962
    :cond_5
    :try_start_6
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p2

    move-object p1, v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1017
    :goto_2
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1018
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1019
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method closeAllConnections()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 605
    :try_start_0
    iput-boolean v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->closed:Z

    .line 606
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->close()V

    goto :goto_0

    .line 607
    :cond_0
    iget v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    .line 608
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    .line 609
    :goto_1
    iget v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_2

    .line 611
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsChanged:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 613
    :catch_0
    :try_start_2
    sget-object v1, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Interrupted while closing connections"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 616
    :goto_2
    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    goto :goto_3

    .line 617
    :cond_1
    iget v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    iget-object v3, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    .line 618
    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 621
    :cond_2
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v1, :cond_3

    .line 624
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 621
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 622
    throw v0
.end method

.method public bridge synthetic commitTransaction(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->commitTransaction(Ljava/sql/Connection;)V

    return-void
.end method

.method public commitTransaction(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 588
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->commit()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 594
    :try_start_1
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsChanged:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 598
    throw p1

    :catch_0
    move-exception p1

    .line 590
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract compactAndClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public bridge synthetic containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    return p1
.end method

.method public containsContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM contacts WHERE contactId = ?"

    .line 1054
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1055
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1056
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1057
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    .line 1058
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1060
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return v0

    .line 1058
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1063
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1064
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1065
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public containsContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM contacts WHERE authorId = ? AND localAuthorId = ?"

    .line 1031
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1032
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x2

    .line 1033
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1034
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1035
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    .line 1036
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1038
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return p3

    .line 1036
    :cond_0
    new-instance p3, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p3}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    move-object p2, v0

    goto :goto_0

    :catch_2
    move-exception p3

    move-object p1, v0

    move-object p2, p1

    .line 1041
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1042
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1043
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result p1

    return p1
.end method

.method public containsGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM groups WHERE groupId = ?"

    .line 1076
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1077
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1078
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1079
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    .line 1080
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1081
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1082
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return v0

    .line 1080
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1085
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1086
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1087
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    return p1
.end method

.method public containsLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM localAuthors WHERE authorId = ?"

    .line 1098
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1099
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1100
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1101
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    .line 1102
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1103
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1104
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return v0

    .line 1102
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1107
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1108
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1109
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result p1

    return p1
.end method

.method public containsMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM messages WHERE messageId = ?"

    .line 1120
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1121
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1122
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1123
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    .line 1124
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1126
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return v0

    .line 1124
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1129
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1130
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1131
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsTransport(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result p1

    return p1
.end method

.method public containsTransport(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM transports WHERE transportId = ?"

    .line 1142
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1143
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1144
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1145
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    .line 1146
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1148
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return v0

    .line 1146
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1151
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1152
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1153
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic containsVisibleMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->containsVisibleMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result p1

    return p1
.end method

.method public containsVisibleMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT NULL FROM statuses WHERE messageId = ? AND contactId = ? AND messageShared = TRUE"

    .line 1166
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 1167
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, v1, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p3, 0x2

    .line 1168
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1169
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1170
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    .line 1171
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1173
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return p3

    .line 1171
    :cond_0
    new-instance p3, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p3}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    move-object p2, v0

    goto :goto_0

    :catch_2
    move-exception p3

    move-object p1, v0

    move-object p2, p1

    .line 1176
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1177
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1178
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic countOfferedMessages(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->countOfferedMessages(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)I

    move-result p1

    return p1
.end method

.method public countOfferedMessages(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT COUNT (messageId) FROM offers  WHERE contactId = ?"

    .line 1190
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1191
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1192
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1193
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    .line 1195
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1196
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1197
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return v0

    .line 1195
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw v0

    .line 1193
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1200
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1201
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1202
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected abstract createConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public bridge synthetic deleteMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->deleteMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public deleteMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE messages SET raw = NULL WHERE messageId = ?"

    .line 1211
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1212
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1213
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ltz v0, :cond_2

    if-gt v0, v2, :cond_1

    .line 1216
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v0, "UPDATE statuses SET deleted = TRUE WHERE messageId = ?"

    .line 1219
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1220
    :try_start_2
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1221
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-ltz p1, :cond_0

    .line 1223
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 1222
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1215
    :cond_1
    :try_start_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 1214
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 1225
    :goto_0
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1226
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic deleteMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->deleteMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public deleteMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM messageMetadata WHERE messageId = ?"

    .line 1236
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 1237
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1238
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    .line 1240
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 1239
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 1242
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1243
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    return-object p1
.end method

.method public getContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT authorId, formatVersion, name, alias, publicKey, localAuthorId, verified, active FROM contacts WHERE contactId = ?"

    .line 1256
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1257
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1258
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1259
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorId;

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    const/4 v2, 0x2

    .line 1261
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    .line 1262
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 1263
    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x5

    .line 1264
    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    .line 1265
    new-instance v8, Lorg/briarproject/bramble/api/identity/AuthorId;

    const/4 v5, 0x6

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    const/4 v5, 0x7

    .line 1266
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v10

    const/16 v5, 0x8

    .line 1267
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v11

    .line 1268
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1269
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    .line 1270
    new-instance v7, Lorg/briarproject/bramble/api/identity/Author;

    invoke-direct {v7, v0, v2, v3, v4}, Lorg/briarproject/bramble/api/identity/Author;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B)V

    .line 1272
    new-instance v0, Lorg/briarproject/bramble/api/contact/Contact;

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v5 .. v11}, Lorg/briarproject/bramble/api/contact/Contact;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Ljava/lang/String;ZZ)V

    return-object v0

    .line 1259
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1275
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1276
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1277
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getContacts(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->getContacts(Ljava/sql/Connection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContacts(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getContacts(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getContacts(Ljava/sql/Connection;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT contactId, authorId, formatVersion, name, alias, publicKey, localAuthorId, verified, active FROM contacts"

    .line 1290
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1291
    :try_start_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1292
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    new-instance v4, Lorg/briarproject/bramble/api/contact/ContactId;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    invoke-direct {v4, v2}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    .line 1295
    new-instance v2, Lorg/briarproject/bramble/api/identity/AuthorId;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    const/4 v3, 0x3

    .line 1296
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    const/4 v5, 0x4

    .line 1297
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 1298
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x6

    .line 1299
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    .line 1300
    new-instance v8, Lorg/briarproject/bramble/api/identity/Author;

    invoke-direct {v8, v2, v3, v5, v6}, Lorg/briarproject/bramble/api/identity/Author;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B)V

    .line 1302
    new-instance v6, Lorg/briarproject/bramble/api/identity/AuthorId;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    const/16 v2, 0x8

    .line 1303
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v2

    const/16 v3, 0x9

    .line 1304
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v9

    .line 1305
    new-instance v10, Lorg/briarproject/bramble/api/contact/Contact;

    move-object v3, v10

    move-object v5, v8

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/bramble/api/contact/Contact;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1308
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1309
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 1312
    :goto_1
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1313
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1314
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getContacts(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT contactId FROM contacts WHERE localAuthorId = ?"

    .line 1326
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1327
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1328
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1329
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1331
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1332
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1335
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1336
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1337
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getContactsByAuthorId(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getContactsByAuthorId(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getContactsByAuthorId(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT contactId, formatVersion, name, alias, publicKey, localAuthorId, verified, active FROM contacts WHERE authorId = ?"

    .line 1351
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1352
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1353
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1354
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1356
    new-instance v5, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    invoke-direct {v5, v3}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    const/4 v3, 0x2

    .line 1357
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    .line 1358
    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    .line 1359
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x5

    .line 1360
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    .line 1361
    new-instance v7, Lorg/briarproject/bramble/api/identity/AuthorId;

    const/4 v9, 0x6

    invoke-interface {v1, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    const/4 v9, 0x7

    .line 1362
    invoke-interface {v1, v9}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v9

    const/16 v10, 0x8

    .line 1363
    invoke-interface {v1, v10}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v10

    .line 1364
    new-instance v11, Lorg/briarproject/bramble/api/identity/Author;

    invoke-direct {v11, p2, v3, v4, v6}, Lorg/briarproject/bramble/api/identity/Author;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B)V

    .line 1366
    new-instance v3, Lorg/briarproject/bramble/api/contact/Contact;

    move-object v4, v3

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lorg/briarproject/bramble/api/contact/Contact;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1369
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1370
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1373
    :goto_1
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1374
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1375
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public getGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT clientId, majorVersion, descriptor FROM groups WHERE groupId = ?"

    .line 1386
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1387
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1388
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1389
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 1391
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    .line 1392
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    .line 1393
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1394
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    .line 1395
    new-instance v4, Lorg/briarproject/bramble/api/sync/Group;

    invoke-direct {v4, p2, v0, v2, v3}, Lorg/briarproject/bramble/api/sync/Group;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/ClientId;I[B)V

    return-object v4

    .line 1389
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1397
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1398
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1399
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getGroupMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getGroupMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT metaKey, value FROM groupMetadata WHERE groupId = ?"

    .line 1689
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1690
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1691
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1692
    :try_start_2
    new-instance v0, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    .line 1693
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/briarproject/bramble/api/db/Metadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1694
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1695
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1698
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1699
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1700
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT contactId, shared FROM groupVisibilities WHERE groupId = ?"

    .line 1465
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1466
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1467
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1468
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1469
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1470
    new-instance v2, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1471
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1472
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1475
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1476
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1477
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object p1

    return-object p1
.end method

.method public getGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT shared FROM groupVisibilities WHERE contactId = ? AND groupId = ?"

    .line 1439
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1440
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 1441
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1442
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1444
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    goto :goto_0

    .line 1445
    :cond_1
    sget-object p3, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    .line 1446
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1447
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1448
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-object p3

    .line 1446
    :cond_2
    new-instance p3, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p3}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p3

    goto :goto_1

    :catch_1
    move-exception p3

    move-object p2, v0

    goto :goto_1

    :catch_2
    move-exception p3

    move-object p1, v0

    move-object p2, p1

    .line 1451
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1452
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1453
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getGroups(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getGroups(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/ClientId;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT groupId, descriptor FROM groups WHERE clientId = ? AND majorVersion = ?"

    .line 1411
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1412
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 1413
    invoke-interface {p1, v1, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1414
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1415
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1417
    new-instance v4, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 1418
    invoke-interface {v3, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    .line 1419
    new-instance v6, Lorg/briarproject/bramble/api/sync/Group;

    invoke-direct {v6, v4, p2, p3, v5}, Lorg/briarproject/bramble/api/sync/Group;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/ClientId;I[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1421
    :cond_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 1422
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v3, p1

    .line 1425
    :goto_1
    invoke-direct {p0, v3}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1426
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1427
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    return-object p1
.end method

.method public getLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT formatVersion, name, publicKey, privateKey, created FROM localAuthors WHERE authorId = ?"

    .line 1491
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1492
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1493
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1494
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1495
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    const/4 v0, 0x2

    .line 1496
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    .line 1497
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    const/4 v0, 0x4

    .line 1498
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v8

    const/4 v0, 0x5

    .line 1499
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v9

    .line 1500
    new-instance v0, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v3 .. v10}, Lorg/briarproject/bramble/api/identity/LocalAuthor;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B[BJ)V

    .line 1502
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1503
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1504
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-object v0

    .line 1502
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 1494
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1507
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1508
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1509
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getLocalAuthors(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->getLocalAuthors(Ljava/sql/Connection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getLocalAuthors(Ljava/sql/Connection;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT authorId, formatVersion, name, publicKey, privateKey, created FROM localAuthors"

    .line 1522
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1523
    :try_start_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1524
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    new-instance v4, Lorg/briarproject/bramble/api/identity/AuthorId;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    const/4 v2, 0x2

    .line 1527
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    const/4 v2, 0x3

    .line 1528
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    .line 1529
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    const/4 v2, 0x5

    .line 1530
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v8

    const/4 v2, 0x6

    .line 1531
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v9

    .line 1532
    new-instance v2, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/briarproject/bramble/api/identity/LocalAuthor;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B[BJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1535
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1536
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 1539
    :goto_1
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1540
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1541
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT groupId, timestamp, raw FROM messages WHERE messageId = ?"

    .line 1552
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1553
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1554
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1555
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1556
    new-instance v5, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v0, 0x2

    .line 1557
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x3

    .line 1558
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    .line 1559
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1560
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1561
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    if-eqz v0, :cond_1

    .line 1563
    array-length v2, v0

    const/16 v3, 0x28

    if-le v2, v3, :cond_0

    .line 1564
    array-length v2, v0

    sub-int/2addr v2, v3

    new-array v8, v2, [B

    const/4 v2, 0x0

    .line 1565
    array-length v4, v8

    invoke-static {v0, v3, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1566
    new-instance v0, Lorg/briarproject/bramble/api/sync/Message;

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/briarproject/bramble/api/sync/Message;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;J[B)V

    return-object v0

    .line 1563
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    .line 1562
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/api/db/MessageDeletedException;

    invoke-direct {p2}, Lorg/briarproject/bramble/api/db/MessageDeletedException;-><init>()V

    throw p2

    .line 1559
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 1555
    :cond_3
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1568
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1569
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1570
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageDependencies(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageDependencies(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getMessageDependencies(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT dependencyId, dependencyState FROM messageDependencies WHERE messageId = ?"

    .line 1824
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1825
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1826
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1827
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1828
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1829
    new-instance v2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v3, 0x2

    .line 1830
    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v3

    .line 1831
    invoke-interface {p2}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1832
    sget-object v3, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->UNKNOWN:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    .line 1833
    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1835
    :cond_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1836
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1839
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1840
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1841
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageDependents(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageDependents(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getMessageDependents(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId, messageState FROM messageDependencies WHERE dependencyId = ? AND dependencyState IS NOT NULL"

    .line 1857
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1858
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1859
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1860
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1861
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1862
    new-instance v2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v3, 0x2

    .line 1863
    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v3

    .line 1864
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1866
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1867
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1870
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1871
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1872
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageIds(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageIds(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMessageIds(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageIds(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessageIds(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId FROM messages WHERE groupId = ? AND state = ?"

    .line 1582
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1583
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x2

    .line 1584
    sget-object v2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1585
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1586
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1588
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1589
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1592
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1593
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1594
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getMessageIds(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 1602
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/db/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageIds(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId FROM messageMetadata WHERE groupId = ? AND state = ? AND metaKey = ? AND value = ?"

    .line 1611
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/db/Metadata;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v0

    move-object v3, v2

    :goto_0
    :try_start_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1612
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1613
    :try_start_2
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v5, v6, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v2, 0x2

    .line 1614
    sget-object v7, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v7

    invoke-interface {v5, v2, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x3

    .line 1615
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v2, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x4

    .line 1616
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v5, v2, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1617
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1618
    :try_start_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1619
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1620
    :cond_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 1621
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_2

    .line 1623
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1625
    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :cond_3
    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    return-object v0

    .line 1627
    :cond_5
    :try_start_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    move-object v5, v2

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v3, v0

    move-object v5, v3

    .line 1630
    :goto_3
    invoke-direct {p0, v3}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1631
    invoke-virtual {p0, v5}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1632
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId, metaKey, value FROM messageMetadata WHERE groupId = ? AND state = ?"

    .line 1645
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1646
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1647
    sget-object p2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p2

    const/4 v2, 0x2

    invoke-interface {p1, v2, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1648
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1649
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1650
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1651
    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 1652
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/db/Metadata;

    if-nez v4, :cond_0

    .line 1654
    new-instance v4, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v4}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    .line 1655
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    :cond_0
    invoke-interface {p2, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/briarproject/bramble/api/db/Metadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1659
    :cond_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1660
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1663
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1664
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1665
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 1673
    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageIds(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Collection;

    move-result-object p2

    .line 1674
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1676
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1677
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public bridge synthetic getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public getMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT metaKey, value FROM messageMetadata WHERE state = ? AND messageId = ?"

    .line 1712
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1713
    :try_start_1
    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1714
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1715
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1716
    :try_start_2
    new-instance v0, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    .line 1717
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/briarproject/bramble/api/db/Metadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1718
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1719
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1722
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1723
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1724
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageMetadataForValidator(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageMetadataForValidator(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public getMessageMetadataForValidator(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT metaKey, value FROM messageMetadata WHERE (state = ? OR state = ?) AND messageId = ?"

    .line 1737
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1738
    :try_start_1
    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1739
    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v1

    const/4 v3, 0x2

    invoke-interface {p1, v3, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 1740
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1741
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1742
    :try_start_2
    new-instance v0, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    .line 1743
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/briarproject/bramble/api/db/Metadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1744
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1745
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 1748
    :goto_1
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1749
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1750
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object p1

    return-object p1
.end method

.method public getMessageState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT state FROM messages WHERE messageId = ?"

    .line 1883
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1884
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1885
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1886
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v0

    .line 1888
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1889
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1890
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-object v0

    .line 1888
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0

    .line 1886
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 1893
    :goto_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1894
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1895
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageStatus(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessageStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId, txCount > 0, seen FROM statuses WHERE groupId = ? AND contactId = ? AND state = ?"

    .line 1762
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1763
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p3

    const/4 v1, 0x1

    invoke-interface {p1, v1, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1764
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p3

    const/4 v2, 0x2

    invoke-interface {p1, v2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1765
    sget-object p3, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p3

    const/4 v3, 0x3

    invoke-interface {p1, v3, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1766
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1767
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    :goto_0
    invoke-interface {p3}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1769
    new-instance v4, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p3, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 1770
    invoke-interface {p3, v2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v5

    .line 1771
    invoke-interface {p3, v3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v6

    .line 1772
    new-instance v7, Lorg/briarproject/bramble/api/sync/MessageStatus;

    invoke-direct {v7, v4, p2, v5, v6}, Lorg/briarproject/bramble/api/sync/MessageStatus;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1774
    :cond_0
    invoke-interface {p3}, Ljava/sql/ResultSet;->close()V

    .line 1775
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p3, v0

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object p3, p1

    .line 1778
    :goto_1
    invoke-direct {p0, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1779
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1780
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessageStatus(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessageStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;

    move-result-object p1

    return-object p1
.end method

.method public getMessageStatus(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT txCount > 0, seen FROM statuses WHERE messageId = ? AND contactId = ? AND state = ?"

    .line 1793
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1794
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 1795
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v1

    const/4 v3, 0x2

    invoke-interface {p1, v3, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 1796
    sget-object v4, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v4

    invoke-interface {p1, v1, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1797
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1799
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1800
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v0

    .line 1801
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v2

    .line 1802
    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageStatus;

    invoke-direct {v3, p3, p2, v0, v2}, Lorg/briarproject/bramble/api/sync/MessageStatus;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)V

    move-object v0, v3

    .line 1804
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1805
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1806
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-object v0

    .line 1804
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    .line 1809
    :goto_0
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1810
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1811
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessagesToAck(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesToAck(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToAck(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId FROM statuses WHERE contactId = ? AND ack = TRUE LIMIT ?"

    .line 1908
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1909
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 1910
    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1911
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1912
    :try_start_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1914
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1915
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    goto :goto_1

    :catch_1
    move-exception p3

    move-object p2, v0

    goto :goto_1

    :catch_2
    move-exception p3

    move-object p1, v0

    move-object p2, p1

    .line 1918
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1919
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1920
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessagesToOffer(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesToOffer(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToOffer(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, v0

    const/4 p4, 0x0

    :try_start_0
    const-string v4, "SELECT messageId FROM statuses WHERE contactId = ? AND state = ? AND groupShared = TRUE AND messageShared = TRUE AND deleted = FALSE AND seen = FALSE AND requested = FALSE AND (expiry <= ? OR eta > ?) ORDER BY timestamp LIMIT ?"

    .line 1939
    invoke-interface {p1, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1940
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v4, 0x1

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 1941
    sget-object v5, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v5}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v5

    invoke-interface {p1, p2, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x3

    .line 1942
    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p2, 0x4

    .line 1943
    invoke-interface {p1, p2, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p2, 0x5

    .line 1944
    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1945
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1946
    :try_start_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-direct {p4, v0}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1948
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1949
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    move-object p4, p2

    goto :goto_1

    :catch_1
    move-exception p3

    goto :goto_1

    :catch_2
    move-exception p3

    move-object p1, p4

    .line 1952
    :goto_1
    invoke-direct {p0, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1953
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1954
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessagesToRequest(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesToRequest(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToRequest(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT messageId FROM offers WHERE contactId = ? LIMIT ?"

    .line 1967
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1968
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 1969
    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 1970
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1971
    :try_start_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1973
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1974
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    goto :goto_1

    :catch_1
    move-exception p3

    move-object p2, v0

    goto :goto_1

    :catch_2
    move-exception p3

    move-object p1, v0

    move-object p2, p1

    .line 1977
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 1978
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 1979
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessagesToSend(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesToSend(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToSend(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 1986
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, v0

    const/4 p4, 0x0

    :try_start_0
    const-string v4, "SELECT length, messageId FROM statuses WHERE contactId = ? AND state = ? AND groupShared = TRUE AND messageShared = TRUE AND deleted = FALSE AND seen = FALSE AND (expiry <= ? OR eta > ?) ORDER BY timestamp"

    .line 1998
    invoke-interface {p1, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1999
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v4, 0x1

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2000
    sget-object p2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p2

    const/4 v5, 0x2

    invoke-interface {p1, v5, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x3

    .line 2001
    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p2, 0x4

    .line 2002
    invoke-interface {p1, p2, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 2003
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2004
    :try_start_2
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2006
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2007
    invoke-interface {p2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p3, :cond_0

    goto :goto_1

    .line 2009
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2012
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 2013
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    move-exception p3

    goto :goto_2

    :catch_1
    move-exception p3

    move-object p2, p4

    goto :goto_2

    :catch_2
    move-exception p3

    move-object p1, p4

    move-object p2, p1

    .line 2016
    :goto_2
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2017
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2018
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessagesToShare(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesToShare(Ljava/sql/Connection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToShare(Ljava/sql/Connection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT m.messageId FROM messages AS m JOIN messageDependencies AS d ON m.messageId = d.dependencyId JOIN messages AS m1 ON d.messageId = m1.messageId WHERE m.state = ? AND m.shared = FALSE AND m1.shared = TRUE"

    .line 2069
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2070
    :try_start_1
    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2071
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2072
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2074
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 2075
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 2078
    :goto_1
    invoke-direct {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2079
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2080
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getMessagesToValidate(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesToValidate(Ljava/sql/Connection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToValidate(Ljava/sql/Connection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 2025
    sget-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->UNKNOWN:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesInState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method getMigrations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/db/Migration<",
            "Ljava/sql/Connection;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 426
    new-array v0, v0, [Lorg/briarproject/bramble/db/Migration;

    new-instance v1, Lorg/briarproject/bramble/db/Migration38_39;

    invoke-direct {v1}, Lorg/briarproject/bramble/db/Migration38_39;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/db/Migration39_40;

    invoke-direct {v1}, Lorg/briarproject/bramble/db/Migration39_40;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/db/Migration40_41;

    iget-object v2, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->dbTypes:Lorg/briarproject/bramble/db/DatabaseTypes;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/db/Migration40_41;-><init>(Lorg/briarproject/bramble/db/DatabaseTypes;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNextSendTime(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getNextSendTime(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNextSendTime(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT expiry FROM statuses WHERE contactId = ? AND state = ? AND groupShared = TRUE AND messageShared = TRUE AND deleted = FALSE AND seen = FALSE ORDER BY expiry LIMIT 1"

    .line 2095
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2096
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x2

    .line 2097
    sget-object v2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2098
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide v2, 0x7fffffffffffffffL

    .line 2100
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2101
    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    .line 2102
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2104
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 2105
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 2108
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2109
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2110
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getPendingMessages(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->getPendingMessages(Ljava/sql/Connection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getPendingMessages(Ljava/sql/Connection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 2031
    sget-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->getMessagesInState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRequestedMessagesToSend(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->getRequestedMessagesToSend(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedMessagesToSend(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, v0

    const/4 p4, 0x0

    :try_start_0
    const-string v4, "SELECT length, messageId FROM statuses WHERE contactId = ? AND state = ? AND groupShared = TRUE AND messageShared = TRUE AND deleted = FALSE AND seen = FALSE AND requested = TRUE AND (expiry <= ? OR eta > ?) ORDER BY timestamp"

    .line 2129
    invoke-interface {p1, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2130
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v4, 0x1

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2131
    sget-object p2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p2

    const/4 v5, 0x2

    invoke-interface {p1, v5, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x3

    .line 2132
    invoke-interface {p1, p2, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p2, 0x4

    .line 2133
    invoke-interface {p1, p2, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 2134
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2135
    :try_start_2
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2137
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2138
    invoke-interface {p2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p3, :cond_0

    goto :goto_1

    .line 2140
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-interface {p2, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2143
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 2144
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    move-exception p3

    goto :goto_2

    :catch_1
    move-exception p3

    move-object p2, p4

    goto :goto_2

    :catch_2
    move-exception p3

    move-object p1, p4

    move-object p2, p1

    .line 2147
    :goto_2
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2148
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2149
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getSettings(Ljava/lang/Object;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getSettings(Ljava/sql/Connection;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    return-object p1
.end method

.method public getSettings(Ljava/sql/Connection;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT settingKey, value FROM settings WHERE namespace = ?"

    .line 2161
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    .line 2162
    :try_start_1
    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2163
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2164
    :try_start_2
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    .line 2165
    :goto_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2166
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 2167
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 2170
    :goto_1
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2171
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2172
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic getTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT rotationPeriod, tagKey, headerKey, base, bitmap FROM incomingKeys WHERE transportId = ? ORDER BY keySetId, periodOffset"

    .line 2188
    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2189
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v5, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2190
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2191
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2192
    :goto_0
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v6, :cond_0

    .line 2193
    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v14

    .line 2194
    new-instance v12, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-interface {v4, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    invoke-direct {v12, v6}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 2195
    new-instance v13, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-interface {v4, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    invoke-direct {v13, v6}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 2196
    invoke-interface {v4, v8}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v16

    .line 2197
    invoke-interface {v4, v7}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v18

    .line 2198
    new-instance v6, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-object v11, v6

    invoke-direct/range {v11 .. v18}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJ[B)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2201
    :cond_0
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V

    .line 2202
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    const-string v6, "SELECT keySetId, contactId, rotationPeriod, tagKey, headerKey, stream, active FROM outgoingKeys WHERE transportId = ? ORDER BY keySetId"

    .line 2209
    invoke-interface {v0, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2210
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2211
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2212
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 2213
    :goto_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v12, v4, 0x1

    mul-int/lit8 v13, v12, 0x3

    if-lt v11, v13, :cond_1

    .line 2216
    new-instance v11, Lorg/briarproject/bramble/api/transport/KeySetId;

    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v13

    invoke-direct {v11, v13}, Lorg/briarproject/bramble/api/transport/KeySetId;-><init>(I)V

    .line 2217
    new-instance v13, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v3, v9}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v14

    invoke-direct {v13, v14}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    .line 2218
    invoke-interface {v3, v10}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v18

    .line 2219
    new-instance v14, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-interface {v3, v8}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 2220
    new-instance v15, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-interface {v3, v7}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-direct {v15, v5}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    const/4 v5, 0x6

    .line 2221
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v20

    const/4 v5, 0x7

    .line 2222
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v22

    .line 2223
    new-instance v28, Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-object v5, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v14

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v22}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJZ)V

    mul-int/lit8 v4, v4, 0x3

    .line 2225
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    add-int/lit8 v5, v4, 0x1

    .line 2226
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    add-int/lit8 v4, v4, 0x2

    .line 2227
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    .line 2228
    new-instance v4, Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-object/from16 v23, v4

    move-object/from16 v24, p2

    invoke-direct/range {v23 .. v28}, Lorg/briarproject/bramble/api/transport/TransportKeys;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V

    .line 2230
    new-instance v5, Lorg/briarproject/bramble/api/transport/KeySet;

    invoke-direct {v5, v11, v13, v4}, Lorg/briarproject/bramble/api/transport/KeySet;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v12

    const/4 v5, 0x1

    goto :goto_1

    .line 2215
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw v0

    .line 2232
    :cond_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 2233
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v3

    :goto_2
    move-object v3, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v6, v3

    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v6, v3

    .line 2236
    :goto_3
    invoke-direct {v1, v3}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2237
    invoke-virtual {v1, v6}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2238
    new-instance v2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic incrementStreamCounter(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->incrementStreamCounter(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    return-void
.end method

.method public incrementStreamCounter(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE outgoingKeys SET stream = stream + 1 WHERE transportId = ? AND keySetId = ?"

    .line 2249
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2250
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    .line 2251
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2252
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 2254
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2253
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2256
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2257
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic lowerAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->lowerAckFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    return-void
.end method

.method public lowerAckFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE statuses SET ack = FALSE WHERE messageId = ? AND contactId = ?"

    .line 2268
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x2

    .line 2269
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2270
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 2271
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2272
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 2274
    :cond_0
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2275
    array-length v0, p2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    if-ne v0, p3, :cond_4

    .line 2277
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    aget v2, p2, v0

    if-ltz v2, :cond_2

    if-gt v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2279
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2278
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2281
    :cond_3
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2276
    :cond_4
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2283
    :goto_2
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2284
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic lowerRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->lowerRequestedFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    return-void
.end method

.method public lowerRequestedFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE statuses SET requested = FALSE WHERE messageId = ? AND contactId = ?"

    .line 2295
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x2

    .line 2296
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2297
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 2298
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2299
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 2301
    :cond_0
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2302
    array-length v0, p2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    if-ne v0, p3, :cond_4

    .line 2304
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    aget v2, p2, v0

    if-ltz v2, :cond_2

    if-gt v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2306
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2305
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2308
    :cond_3
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2303
    :cond_4
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2310
    :goto_2
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2311
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic mergeGroupMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->mergeGroupMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void
.end method

.method public mergeGroupMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2321
    :try_start_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v3

    const-string v5, "groupMetadata"

    const-string v6, "groupId"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 2320
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeOrUpdateMetadata(Ljava/sql/Connection;[BLorg/briarproject/bramble/api/db/Metadata;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    .line 2322
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "INSERT INTO groupMetadata (groupId, metaKey, value) VALUES (?, ?, ?)"

    .line 2326
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2327
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2328
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x2

    .line 2329
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 2330
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2331
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 2333
    :cond_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2334
    array-length v1, p2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    if-ne v1, p3, :cond_4

    .line 2336
    array-length p3, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_3

    aget v2, p2, v1

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2337
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2338
    :cond_3
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2335
    :cond_4
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2340
    :goto_2
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2341
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic mergeMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->mergeMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void
.end method

.method public mergeMessageMetadata(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2352
    :try_start_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v3

    const-string v5, "messageMetadata"

    const-string v6, "messageId"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 2351
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeOrUpdateMetadata(Ljava/sql/Connection;[BLorg/briarproject/bramble/api/db/Metadata;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    .line 2353
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "SELECT groupId, state FROM messages WHERE messageId = ?"

    .line 2357
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2358
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2359
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2360
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2361
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    const/4 v4, 0x2

    .line 2362
    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v5

    .line 2363
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 2364
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v6, "INSERT INTO messageMetadata (messageId, groupId, state, metaKey, value) VALUES (?, ?, ?, ?, ?)"

    .line 2369
    invoke-interface {p1, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2370
    :try_start_3
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2371
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x3

    .line 2372
    invoke-virtual {v5}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2373
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x4

    .line 2374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v1, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x5

    .line 2375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2376
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 2378
    :cond_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2379
    array-length v0, p2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    if-ne v0, p3, :cond_4

    .line 2381
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    aget v1, p2, v0

    if-ne v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2382
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2383
    :cond_3
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2380
    :cond_4
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    goto :goto_3

    .line 2360
    :cond_5
    :try_start_4
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v2, v0

    :goto_2
    move-object p1, v1

    goto :goto_3

    :catch_3
    move-exception p2

    move-object p1, v0

    move-object v2, p1

    .line 2385
    :goto_3
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2386
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2387
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic mergeSettings(Ljava/lang/Object;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->mergeSettings(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method public mergeSettings(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE settings SET value = ? WHERE namespace = ? AND settingKey = ?"

    .line 2465
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2466
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/settings/Settings;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2467
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2468
    invoke-interface {v1, v4, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2469
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2470
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 2472
    :cond_0
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object v0

    .line 2473
    array-length v2, v0

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/settings/Settings;->size()I

    move-result v6

    if-ne v2, v6, :cond_9

    .line 2474
    array-length v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_3

    aget v8, v0, v7

    if-ltz v8, :cond_2

    if-gt v8, v5, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2476
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 2475
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    :cond_3
    const-string v2, "INSERT INTO settings (namespace, settingKey, value) VALUES (?, ?, ?)"

    .line 2481
    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2483
    :try_start_2
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/settings/Settings;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2484
    aget v8, v0, v1

    if-nez v8, :cond_4

    .line 2485
    invoke-interface {p1, v5, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2486
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v4, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2487
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v3, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2488
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2493
    :cond_5
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2494
    array-length p3, p2

    if-ne p3, v2, :cond_8

    .line 2495
    array-length p3, p2

    :goto_3
    if-ge v6, p3, :cond_7

    aget v0, p2, v6

    if-ne v0, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2496
    :cond_6
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2497
    :cond_7
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2494
    :cond_8
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_4

    .line 2473
    :cond_9
    :try_start_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 2499
    :goto_4
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2500
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected open(Ljava/lang/String;ZLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 343
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 349
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->startTransaction()Ljava/sql/Connection;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    :try_start_1
    const-string p2, "db"

    .line 352
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->getSettings(Ljava/sql/Connection;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p2

    .line 353
    invoke-direct {p0, p1, p2, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->migrateSchema(Ljava/sql/Connection;Lorg/briarproject/bramble/api/settings/Settings;Lorg/briarproject/bramble/api/db/MigrationListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->isCompactionDue(Lorg/briarproject/bramble/api/settings/Settings;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    .line 355
    :cond_1
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->createTables(Ljava/sql/Connection;)V

    .line 356
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->initialiseSettings(Ljava/sql/Connection;)V

    :cond_2
    const/4 p2, 0x0

    .line 359
    :goto_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->createIndexes(Ljava/sql/Connection;)V

    .line 360
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->commitTransaction(Ljava/sql/Connection;)V
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    .line 367
    invoke-interface {p4}, Lorg/briarproject/bramble/api/db/MigrationListener;->onDatabaseCompaction()V

    .line 368
    :cond_3
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide p1

    .line 369
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->compactAndClose()V

    .line 370
    sget-object p4, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Compacting database"

    invoke-static {p4, v0, p1, p2}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 372
    iget-object p1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    monitor-enter p1

    .line 373
    :try_start_2
    iput-boolean p3, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->closed:Z

    .line 374
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->startTransaction()Ljava/sql/Connection;

    move-result-object p1

    .line 377
    :try_start_3
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->storeLastCompacted(Ljava/sql/Connection;)V

    .line 378
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->commitTransaction(Ljava/sql/Connection;)V
    :try_end_3
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 380
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->abortTransaction(Ljava/sql/Connection;)V

    .line 381
    throw p2

    :catchall_0
    move-exception p2

    .line 374
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2

    :cond_4
    :goto_1
    return-void

    .line 362
    :goto_2
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->abortTransaction(Ljava/sql/Connection;)V

    .line 363
    throw p2

    :catch_2
    move-exception p1

    .line 345
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic raiseAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->raiseAckFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public raiseAckFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE statuses SET ack = TRUE WHERE messageId = ? AND contactId = ?"

    .line 2511
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2512
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p3, 0x2

    .line 2513
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2514
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2516
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2515
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2518
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2519
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic raiseRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->raiseRequestedFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public raiseRequestedFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE statuses SET requested = TRUE WHERE messageId = ? AND contactId = ?"

    .line 2530
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2531
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p3, 0x2

    .line 2532
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2533
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2535
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2534
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2537
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2538
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic raiseSeenFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->raiseSeenFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public raiseSeenFlag(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE statuses SET seen = TRUE WHERE messageId = ? AND contactId = ?"

    .line 2549
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2550
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p3, 0x2

    .line 2551
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2552
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2554
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2553
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2556
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2557
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public removeContact(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM contacts WHERE contactId = ?"

    .line 2567
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2568
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2569
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 2571
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2570
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2573
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2574
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public removeGroup(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM groups WHERE groupId = ?"

    .line 2583
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2584
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2585
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 2587
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2586
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2589
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2590
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public removeGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM groupVisibilities WHERE contactId = ? AND groupId = ?"

    .line 2601
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2602
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2603
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v1, v3, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2604
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2606
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v0, "DELETE FROM statuses WHERE contactId = ? AND groupId = ?"

    .line 2610
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2611
    :try_start_2
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2612
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2613
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-ltz p1, :cond_0

    .line 2615
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2614
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2605
    :cond_1
    :try_start_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2617
    :goto_0
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2618
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic removeLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    return-void
.end method

.method public removeLocalAuthor(Ljava/sql/Connection;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM localAuthors WHERE authorId = ?"

    .line 2628
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2629
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2630
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 2632
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2631
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2634
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2635
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public removeMessage(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM messages WHERE messageId = ?"

    .line 2644
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2645
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2646
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 2648
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2647
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2650
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2651
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeOfferedMessages(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeOfferedMessages(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    return-void
.end method

.method public removeOfferedMessages(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Connection;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM offers WHERE contactId = ? AND messageId = ?"

    .line 2681
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2682
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2683
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/MessageId;

    const/4 v2, 0x2

    .line 2684
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2685
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    .line 2687
    :cond_0
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object p2

    .line 2688
    array-length v1, p2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    if-ne v1, p3, :cond_3

    .line 2690
    array-length p3, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    aget v2, p2, v1

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2691
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 2692
    :cond_2
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2689
    :cond_3
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2694
    :goto_2
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2695
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeTransport(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-void
.end method

.method public removeTransport(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM transports WHERE transportId = ?"

    .line 2705
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2706
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2707
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 2709
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2708
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2711
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2712
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic removeTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->removeTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    return-void
.end method

.method public removeTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM outgoingKeys WHERE transportId = ? AND keySetId = ?"

    .line 2725
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 2726
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    .line 2727
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2728
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    .line 2730
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2729
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2732
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2733
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic resetExpiryTime(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->resetExpiryTime(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public resetExpiryTime(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE statuses SET expiry = 0, txCount = 0 WHERE messageId = ? AND contactId = ?"

    .line 2744
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2745
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p3, 0x2

    .line 2746
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2747
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2749
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2748
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2751
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2752
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setContactActive(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->setContactActive(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    return-void
.end method

.method public setContactActive(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE contacts SET active = ? WHERE contactId = ?"

    .line 2780
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 2781
    :try_start_1
    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 p3, 0x2

    .line 2782
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2783
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2785
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2784
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2787
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2788
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setContactAlias(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->setContactAlias(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    return-void
.end method

.method public setContactAlias(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE contacts SET alias = ? WHERE contactId = ?"

    .line 2798
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const/16 p3, 0xc

    .line 2799
    :try_start_1
    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 2800
    :cond_0
    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x2

    .line 2801
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2802
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 2804
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2803
    :cond_1
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2806
    :goto_1
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2807
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setContactVerified(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->setContactVerified(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public setContactVerified(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE contacts SET verified = ? WHERE contactId = ?"

    .line 2762
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 2763
    :try_start_1
    invoke-interface {p1, v0, v0}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v1, 0x2

    .line 2764
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2765
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2767
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2766
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2769
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2770
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->setGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-void
.end method

.method public setGroupVisibility(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE groupVisibilities SET shared = ? WHERE contactId = ? AND groupId = ?"

    .line 2818
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    .line 2819
    :try_start_1
    invoke-interface {v1, v0, p4}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 2820
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2821
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2822
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2

    if-ltz v2, :cond_1

    if-gt v2, v0, :cond_1

    .line 2824
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v2, "UPDATE statuses SET groupShared = ? WHERE contactId = ? AND groupId = ?"

    .line 2828
    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2829
    :try_start_2
    invoke-interface {p1, v0, p4}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 2830
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, v3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2831
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2832
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    .line 2834
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2833
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    .line 2823
    :cond_1
    :try_start_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    move-object v1, v0

    .line 2836
    :goto_0
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2837
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setMessageShared(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->setMessageShared(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method public setMessageShared(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE messages SET shared = TRUE WHERE messageId = ?"

    .line 2848
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2849
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2850
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    .line 2852
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v0, "UPDATE statuses SET messageShared = TRUE WHERE messageId = ?"

    .line 2856
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2857
    :try_start_2
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2858
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-ltz p1, :cond_0

    .line 2860
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2859
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2851
    :cond_1
    :try_start_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2862
    :goto_0
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2863
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic setMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->setMessageState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    return-void
.end method

.method public setMessageState(Ljava/sql/Connection;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE messages SET state = ? WHERE messageId = ?"

    .line 2873
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2874
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2875
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v1, v3, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2876
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    .line 2878
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v0, "UPDATE messageMetadata SET state = ? WHERE messageId = ?"

    .line 2881
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2882
    :try_start_2
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2883
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2884
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v1

    if-ltz v1, :cond_3

    .line 2886
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    const-string v1, "UPDATE statuses SET state = ? WHERE messageId = ?"

    .line 2889
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2890
    :try_start_3
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2891
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2892
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    if-ltz v0, :cond_2

    .line 2894
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v0, "UPDATE messageDependencies SET messageState = ? WHERE messageId = ?"

    .line 2898
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2899
    :try_start_4
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2900
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2901
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v1

    if-ltz v1, :cond_1

    .line 2903
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    const-string v1, "UPDATE messageDependencies SET dependencyState = ? WHERE dependencyId = ? AND dependencyState IS NOT NULL"

    .line 2908
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2909
    :try_start_5
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->getValue()I

    move-result p3

    invoke-interface {p1, v2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2910
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2911
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    .line 2913
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2912
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    .line 2902
    :cond_1
    :try_start_6
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2893
    :cond_2
    :try_start_7
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2885
    :cond_3
    :try_start_8
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    .line 2877
    :cond_4
    :try_start_9
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception p2

    .line 2915
    :goto_0
    invoke-virtual {p0, v0}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2916
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setReorderingWindow(Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual/range {p0 .. p8}, Lorg/briarproject/bramble/db/JdbcDatabase;->setReorderingWindow(Ljava/sql/Connection;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V

    return-void
.end method

.method public setReorderingWindow(Ljava/sql/Connection;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE incomingKeys SET base = ?, bitmap = ? WHERE transportId = ? AND keySetId = ? AND rotationPeriod = ?"

    .line 2928
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 2929
    :try_start_1
    invoke-interface {p1, v0, p6, p7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p6, 0x2

    .line 2930
    invoke-interface {p1, p6, p8}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p6, 0x3

    .line 2931
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p6, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p3, 0x4

    .line 2932
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x5

    .line 2933
    invoke-interface {p1, p2, p4, p5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 2934
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2936
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2935
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2938
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2939
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic setTransportKeysActive(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/JdbcDatabase;->setTransportKeysActive(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    return-void
.end method

.method public setTransportKeysActive(Ljava/sql/Connection;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE outgoingKeys SET active = true WHERE transportId = ? AND keySetId = ?"

    .line 2950
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2951
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    .line 2952
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2953
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 2955
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2954
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 2957
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2958
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic startTransaction()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->startTransaction()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public startTransaction()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->closed:Z

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 535
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v0, :cond_0

    .line 540
    :try_start_1
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/JdbcDatabase;->createConnection()Ljava/sql/Connection;

    move-result-object v0

    const/4 v1, 0x0

    .line 541
    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 542
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    :try_start_2
    iget v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->openConnections:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    :try_start_3
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 547
    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 550
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-object v0

    .line 532
    :cond_1
    :try_start_4
    new-instance v0, Lorg/briarproject/bramble/api/db/DbClosedException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/DbClosedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 535
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->connectionsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 536
    throw v0
.end method

.method protected tryToClose(Ljava/sql/Connection;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 479
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 481
    sget-object v0, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected tryToClose(Ljava/sql/Statement;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 471
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 473
    sget-object v0, Lorg/briarproject/bramble/db/JdbcDatabase;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic updateExpiryTimeAndEta(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/JdbcDatabase;->updateExpiryTimeAndEta(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V

    return-void
.end method

.method public updateExpiryTimeAndEta(Ljava/sql/Connection;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT txCount FROM statuses WHERE messageId = ? AND contactId = ?"

    .line 2970
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2971
    :try_start_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 2972
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v2

    const/4 v4, 0x2

    invoke-interface {v1, v4, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2973
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2974
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2975
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    .line 2976
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2977
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 2978
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v5, "UPDATE statuses SET expiry = ?, txCount = txCount + 1, eta = ? WHERE messageId = ? AND contactId = ?"

    .line 2982
    invoke-interface {p1, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2983
    :try_start_3
    iget-object v1, p0, Lorg/briarproject/bramble/db/JdbcDatabase;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v7, p4

    add-long/2addr v7, v5

    .line 2985
    invoke-static {v5, v6, p4, v0}, Lorg/briarproject/bramble/db/ExponentialBackoff;->calculateExpiry(JII)J

    move-result-wide v0

    invoke-interface {p1, v3, v0, v1}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 2986
    invoke-interface {p1, v4, v7, v8}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p4, 0x3

    .line 2987
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p3

    invoke-interface {p1, p4, p3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p3, 0x4

    .line 2988
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 2989
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-ne p2, v3, :cond_0

    .line 2991
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 2990
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    .line 2976
    :cond_1
    :try_start_4
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1

    .line 2974
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    move-object v2, v0

    goto :goto_0

    :catch_3
    move-exception p2

    move-object v1, v0

    move-object v2, v1

    .line 2993
    :goto_0
    invoke-direct {p0, v2}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/ResultSet;)V

    .line 2994
    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 2995
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic updateTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/sql/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/db/JdbcDatabase;->updateTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/transport/KeySet;)V

    return-void
.end method

.method public updateTransportKeys(Ljava/sql/Connection;Lorg/briarproject/bramble/api/transport/KeySet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE outgoingKeys SET rotationPeriod = ?, tagKey = ?, headerKey = ?, stream = ? WHERE transportId = ? AND keySetId = ?"

    .line 3008
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3009
    :try_start_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/KeySet;->getTransportKeys()Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v0

    .line 3010
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-result-object v2

    .line 3011
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getRotationPeriod()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v1, v5, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3012
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3013
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v3

    const/4 v6, 0x3

    invoke-interface {v1, v6, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3014
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getStreamCounter()J

    move-result-wide v2

    const/4 v7, 0x4

    invoke-interface {v1, v7, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3015
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3016
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/KeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result v2

    const/4 v8, 0x6

    invoke-interface {v1, v8, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 3017
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2

    if-ltz v2, :cond_3

    if-gt v2, v5, :cond_3

    .line 3019
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    const-string v2, "UPDATE incomingKeys SET rotationPeriod = ?, tagKey = ?, headerKey = ?, base = ?, bitmap = ? WHERE transportId = ? AND keySetId = ? AND periodOffset = ?"

    .line 3025
    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3026
    :try_start_2
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v8, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x7

    .line 3027
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/KeySet;->getKeySetId()Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 3029
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getPreviousIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object p2

    .line 3030
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v1

    invoke-interface {p1, v5, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3031
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v4, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3032
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3033
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v1

    invoke-interface {p1, v7, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3034
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, -0x1

    const/16 v1, 0x8

    .line 3035
    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 3036
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 3038
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object p2

    .line 3039
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v8

    invoke-interface {p1, v5, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3040
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3041
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v6, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3042
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v8

    invoke-interface {p1, v7, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3043
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p2, 0x0

    .line 3044
    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 3045
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 3047
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getNextIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v0

    .line 3048
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v8

    invoke-interface {p1, v5, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3049
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3050
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v6, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3051
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v8

    invoke-interface {p1, v7, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 3052
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 3053
    invoke-interface {p1, v1, v5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 3054
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->addBatch()V

    .line 3055
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeBatch()[I

    move-result-object v0

    .line 3056
    array-length v1, v0

    if-ne v1, v6, :cond_2

    .line 3057
    array-length v1, v0

    :goto_0
    if-ge p2, v1, :cond_1

    aget v2, v0, p2

    if-ltz v2, :cond_0

    if-gt v2, v5, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3058
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2

    .line 3059
    :cond_1
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->close()V

    return-void

    .line 3056
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p2}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 3018
    :cond_3
    :try_start_3
    new-instance p1, Lorg/briarproject/bramble/db/DbStateException;

    invoke-direct {p1}, Lorg/briarproject/bramble/db/DbStateException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p2

    move-object p1, v1

    goto :goto_1

    :catch_2
    move-exception p2

    move-object p1, v0

    .line 3061
    :goto_1
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/JdbcDatabase;->tryToClose(Ljava/sql/Statement;)V

    .line 3062
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
