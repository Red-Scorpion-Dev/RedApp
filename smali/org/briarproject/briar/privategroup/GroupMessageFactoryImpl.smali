.class Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;
.super Ljava/lang/Object;
.source "GroupMessageFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method

.method private createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .locals 10

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    const/4 v1, 0x4

    .line 54
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object v0, v2, v4

    const/4 v6, 0x3

    aput-object p5, v2, v6

    .line 54
    invoke-static {v2}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    .line 60
    iget-object v7, p0, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v8, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->SIGNING_LABEL_JOIN:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v9

    .line 60
    invoke-interface {v7, v8, v2, v9}, Lorg/briarproject/bramble/api/client/ClientHelper;->sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B

    move-result-object v2

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v7, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    .line 65
    invoke-virtual {v7}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v3

    aput-object v0, v1, v5

    aput-object p5, v1, v4

    aput-object v2, v1, v6

    .line 64
    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p5

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2, p3, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 71
    new-instance p2, Lorg/briarproject/briar/api/privategroup/GroupMessage;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p4}, Lorg/briarproject/briar/api/privategroup/GroupMessage;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 73
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public createGroupMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 85
    :try_start_0
    iget-object v6, v1, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v6, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v6

    const/4 v7, 0x6

    .line 86
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    .line 88
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    const/4 v10, 0x2

    aput-object v6, v8, v10

    const/4 v12, 0x3

    aput-object v2, v8, v12

    const/4 v13, 0x4

    aput-object p7, v8, v13

    const/4 v14, 0x5

    aput-object p6, v8, v14

    .line 86
    invoke-static {v8}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v8

    .line 94
    iget-object v15, v1, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v14, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v13

    .line 94
    invoke-interface {v15, v14, v8, v13}, Lorg/briarproject/bramble/api/client/ClientHelper;->sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B

    move-result-object v8

    .line 98
    new-array v7, v7, [Ljava/lang/Object;

    sget-object v13, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    .line 99
    invoke-virtual {v13}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v7, v9

    aput-object v6, v7, v11

    aput-object v2, v7, v10

    aput-object p7, v7, v12

    const/4 v5, 0x4

    aput-object p6, v7, v5

    const/4 v4, 0x5

    aput-object v8, v7, v4

    .line 98
    invoke-static {v7}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    .line 106
    iget-object v5, v1, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    move-wide/from16 v6, p2

    invoke-interface {v5, v0, v6, v7, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 107
    new-instance v4, Lorg/briarproject/briar/api/privategroup/GroupMessage;

    invoke-direct {v4, v0, v2, v3}, Lorg/briarproject/briar/api/privategroup/GroupMessage;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 111
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catch_1
    move-exception v0

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/privategroup/GroupMessage;

    move-result-object p1

    return-object p1
.end method

.method public createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;J[B)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .locals 7

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, v0, p6

    const/4 p5, 0x1

    aput-object p7, v0, p5

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 46
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;->createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/privategroup/GroupMessage;

    move-result-object p1

    return-object p1
.end method
