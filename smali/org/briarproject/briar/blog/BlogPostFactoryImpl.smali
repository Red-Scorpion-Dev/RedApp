.class Lorg/briarproject/briar/blog/BlogPostFactoryImpl;
.super Ljava/lang/Object;
.source "BlogPostFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/blog/BlogPostFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 40
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private getType(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/MessageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/briarproject/briar/api/blog/MessageType;->valueOf(I)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createBlogComment(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_2

    .line 73
    invoke-static/range {p3 .. p3}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_1

    const/16 v5, 0x7c00

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 79
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v4}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x5

    .line 82
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    const/4 v9, 0x2

    aput-object p3, v7, v9

    const/4 v11, 0x3

    aput-object p4, v7, v11

    const/4 v12, 0x4

    aput-object p5, v7, v12

    invoke-static {v7}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v7

    .line 84
    iget-object v13, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v14, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->SIGNING_LABEL_COMMENT:Ljava/lang/String;

    .line 85
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v12

    invoke-interface {v13, v14, v7, v12}, Lorg/briarproject/bramble/api/client/ClientHelper;->sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B

    move-result-object v7

    .line 88
    new-array v6, v6, [Ljava/lang/Object;

    sget-object v12, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v12}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v8

    aput-object p3, v6, v10

    aput-object p4, v6, v9

    aput-object p5, v6, v11

    const/4 v2, 0x4

    aput-object v7, v6, v2

    invoke-static {v6}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    .line 90
    iget-object v3, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v3, v1, v4, v5, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    return-object v1
.end method

.method public createBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/blog/BlogPost;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    invoke-static {p6}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x7c00

    if-gt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 54
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object p6, v1, v3

    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 57
    iget-object v5, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v6, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 58
    invoke-virtual {p5}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v7

    invoke-interface {v5, v6, v1, v7}, Lorg/briarproject/bramble/api/client/ClientHelper;->sign(Ljava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)[B

    move-result-object v1

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v5, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v5}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    aput-object p6, v0, v4

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p6

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2, p3, p6}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 63
    new-instance p2, Lorg/briarproject/briar/api/blog/BlogPost;

    invoke-direct {p2, p1, p4, p5}, Lorg/briarproject/briar/api/blog/BlogPost;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;)V

    return-object p2

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public rewrapWrappedComment(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 151
    invoke-direct {v0, v1}, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->getType(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v3

    const/4 v4, 0x2

    .line 157
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x3

    .line 158
    invoke-virtual {v1, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    .line 159
    invoke-virtual {v1, v9}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v10

    const/4 v11, 0x5

    .line 160
    invoke-virtual {v1, v11}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v12

    const/4 v13, 0x6

    .line 161
    invoke-virtual {v1, v13}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/16 v14, 0x8

    .line 162
    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual/range {v16 .. v16}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    aput-object v3, v14, v2

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v14, v4

    aput-object v8, v14, v7

    aput-object v10, v14, v9

    aput-object v12, v14, v11

    aput-object v1, v14, v13

    const/4 v1, 0x7

    aput-object p3, v14, v1

    .line 162
    invoke-static {v14}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 165
    iget-object v2, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 166
    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v5, p1

    invoke-interface {v2, v5, v3, v4, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Needs to wrap a WRAPPED_COMMENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rewrapWrappedPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->getType(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 118
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x3

    .line 119
    invoke-virtual {p2, v5}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 120
    invoke-virtual {p2, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p2

    const/4 v8, 0x5

    .line 121
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v10}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v1, v8, v0

    .line 122
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v2

    aput-object v6, v8, v5

    aput-object p2, v8, v7

    .line 121
    invoke-static {v8}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 123
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 124
    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Needs to wrap a WRAPPED_POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrapComment(Lorg/briarproject/bramble/api/sync/GroupId;[BJLorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    .line 132
    invoke-direct {p0, v1}, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->getType(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 137
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v5

    const/4 v6, 0x3

    .line 138
    invoke-virtual {v1, v6}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v7

    const/4 v8, 0x4

    .line 139
    invoke-virtual {v1, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/16 v9, 0x8

    .line 140
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v11}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object p2, v9, v2

    .line 141
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    const/4 v2, 0x5

    aput-object v7, v9, v2

    const/4 v2, 0x6

    aput-object v1, v9, v2

    const/4 v1, 0x7

    aput-object p6, v9, v1

    .line 140
    invoke-static {v9}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 143
    iget-object v2, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, v0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 144
    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    invoke-interface {v2, p1, v3, v4, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    return-object v1

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Needs to wrap a COMMENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public wrapPost(Lorg/briarproject/bramble/api/sync/GroupId;[BJLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p5}, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->getType(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p5, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 102
    invoke-virtual {p5, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p5

    const/4 v3, 0x5

    .line 103
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v5}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v0

    .line 104
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, v2

    const/4 p2, 0x3

    aput-object v1, v3, p2

    const/4 p2, 0x4

    aput-object p5, v3, p2

    .line 103
    invoke-static {v3}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 105
    iget-object p3, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object p4, p0, Lorg/briarproject/briar/blog/BlogPostFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 106
    invoke-interface {p4}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-interface {p3, p1, p4, p5, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Needs to wrap a POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
