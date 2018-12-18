.class Lorg/briarproject/briar/blog/BlogPostValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "BlogPostValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

.field private final groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 62
    invoke-direct {p0, p4, p5, p6}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    .line 65
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 66
    iput-object p3, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    return-void
.end method

.method private addMessageMetadata(Lorg/briarproject/bramble/api/client/BdfMessageContext;J)V
    .locals 2

    .line 285
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    const-string p3, "timeReceived"

    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p2, "read"

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private validateComment(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 132
    invoke-static {p3, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x7c00

    .line 136
    invoke-static {v2, v3, v4}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 140
    invoke-virtual {p3, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v4

    const/16 v5, 0x20

    .line 141
    invoke-static {v4, v5}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 142
    new-instance v6, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v6, v4}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v4, 0x2

    .line 148
    invoke-virtual {p3, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v7

    .line 149
    invoke-static {v7, v5}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 150
    new-instance v5, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v5, v7}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v7, 0x3

    .line 153
    invoke-virtual {p3, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p3

    const/16 v8, 0x40

    .line 154
    invoke-static {p3, v3, v8}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    const/4 v8, 0x5

    .line 155
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    aput-object v6, v8, v7

    aput-object v5, v8, v0

    invoke-static {v8}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v1, p2}, Lorg/briarproject/briar/api/blog/BlogFactory;->parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p2

    .line 158
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p2

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v3, Lorg/briarproject/briar/api/blog/BlogPostFactory;->SIGNING_LABEL_COMMENT:Ljava/lang/String;

    .line 161
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v4

    .line 160
    invoke-interface {v1, p3, v3, v0, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    new-instance p3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    if-eqz v2, :cond_0

    const-string v0, "comment"

    .line 168
    invoke-virtual {p3, v0, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "originalMessageId"

    .line 169
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "originalParentMessageId"

    .line 170
    invoke-virtual {p3, p1, v6}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "parentMessageId"

    .line 171
    invoke-virtual {p3, p1, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "author"

    .line 172
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 174
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p3, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 163
    new-instance p2, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private validatePost(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 103
    invoke-static {p3, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7c00

    .line 105
    invoke-static {v2, v1, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v3, 0x1

    .line 108
    invoke-virtual {p3, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p3

    const/16 v4, 0x40

    .line 109
    invoke-static {p3, v3, v4}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    const/4 v4, 0x3

    .line 110
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v3

    aput-object v2, v4, v0

    invoke-static {v4}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v1, p2}, Lorg/briarproject/briar/api/blog/BlogFactory;->parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    .line 114
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v3, Lorg/briarproject/briar/api/blog/BlogPostFactory;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 115
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v4

    .line 114
    invoke-interface {v2, p3, v3, v0, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    new-instance p3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v0, "originalMessageId"

    .line 122
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "author"

    .line 123
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rssFeed"

    .line 124
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->isRssFeed()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance p1, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private validateWrappedComment(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x7

    .line 224
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v3

    const/4 v4, 0x1

    .line 230
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    const/4 v7, 0x2

    .line 234
    invoke-virtual {v1, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7c00

    .line 235
    invoke-static {v8, v4, v9}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v9, 0x3

    .line 238
    invoke-virtual {v1, v9}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v10

    const/16 v11, 0x20

    .line 239
    invoke-static {v10, v11}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 240
    new-instance v12, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v12, v10}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v10, 0x4

    .line 243
    invoke-virtual {v1, v10}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v13

    .line 244
    invoke-static {v13, v11}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 245
    new-instance v14, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v14, v13}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const/4 v13, 0x5

    .line 248
    invoke-virtual {v1, v13}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v15

    const/16 v10, 0x40

    .line 249
    invoke-static {v15, v4, v10}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    const/4 v10, 0x6

    .line 257
    invoke-virtual {v1, v10}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    .line 258
    invoke-static {v1, v11}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 259
    new-instance v10, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v10, v1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 262
    iget-object v1, v0, Lorg/briarproject/briar/blog/BlogPostValidator;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    sget-object v11, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v1, v11, v2, v3}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    .line 264
    new-array v3, v13, [Ljava/lang/Object;

    sget-object v11, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v11}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v2

    aput-object v8, v3, v4

    aput-object v12, v3, v7

    aput-object v14, v3, v9

    const/4 v4, 0x4

    aput-object v15, v3, v4

    invoke-static {v3}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v3

    .line 266
    iget-object v4, v0, Lorg/briarproject/briar/blog/BlogPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v4, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object v4

    .line 267
    iget-object v7, v0, Lorg/briarproject/briar/blog/BlogPostValidator;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 268
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v9

    invoke-interface {v7, v9, v5, v6, v4}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v2}, Lorg/briarproject/bramble/api/data/BdfList;->remove(I)Ljava/lang/Object;

    .line 270
    invoke-direct {v0, v4, v1, v3}, Lorg/briarproject/briar/blog/BlogPostValidator;->validateComment(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object v1

    .line 273
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 274
    new-instance v3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v7, "originalMessageId"

    .line 275
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "originalParentMessageId"

    .line 276
    invoke-virtual {v3, v4, v12}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "parentMessageId"

    .line 277
    invoke-virtual {v3, v4, v10}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timestamp"

    .line 278
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_0

    const-string v4, "comment"

    .line 279
    invoke-virtual {v3, v4, v8}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v4, "author"

    .line 280
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    const-string v5, "author"

    invoke-virtual {v1, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {v1, v3, v2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object v1

    .line 231
    :cond_1
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1
.end method

.method private validateWrappedPost(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 182
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    const/4 v5, 0x2

    .line 192
    invoke-virtual {p1, v5}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7c00

    .line 193
    invoke-static {v6, v0, v7}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v7, 0x3

    .line 196
    invoke-virtual {p1, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p1

    const/16 v8, 0x40

    .line 197
    invoke-static {p1, v2, v8}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 200
    iget-object v8, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    sget-object v9, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v8, v9, v0, v1}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    .line 202
    iget-object v8, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v8, v1}, Lorg/briarproject/briar/api/blog/BlogFactory;->parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v8

    .line 203
    new-array v7, v7, [Ljava/lang/Object;

    sget-object v9, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v9}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v0

    aput-object v6, v7, v2

    aput-object p1, v7, v5

    invoke-static {v7}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 204
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object v2

    .line 205
    iget-object v5, p0, Lorg/briarproject/briar/blog/BlogPostValidator;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 206
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    invoke-interface {v5, v6, v3, v4, v2}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v2

    .line 207
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->remove(I)Ljava/lang/Object;

    .line 208
    invoke-direct {p0, v2, v1, p1}, Lorg/briarproject/briar/blog/BlogPostValidator;->validatePost(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    .line 211
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "originalMessageId"

    .line 212
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestamp"

    .line 213
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "author"

    .line 214
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string v2, "author"

    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rssFeed"

    .line 215
    invoke-virtual {v8}, Lorg/briarproject/briar/api/blog/Blog;->isRssFeed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance p1, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p1, v0}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p1

    .line 189
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 76
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfList;->remove(I)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/briarproject/briar/blog/BlogPostValidator$1;->$SwitchMap$org$briarproject$briar$api$blog$MessageType:[I

    invoke-static {v1}, Lorg/briarproject/briar/api/blog/MessageType;->valueOf(I)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/briar/api/blog/MessageType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance p1, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    const-string p2, "Unknown Message Type"

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :pswitch_0
    invoke-direct {p0, p3}, Lorg/briarproject/briar/blog/BlogPostValidator;->validateWrappedComment(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    goto :goto_1

    .line 87
    :pswitch_1
    invoke-direct {p0, p3}, Lorg/briarproject/briar/blog/BlogPostValidator;->validateWrappedPost(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    goto :goto_1

    .line 83
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/blog/BlogPostValidator;->validateComment(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p2

    .line 84
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lorg/briarproject/briar/blog/BlogPostValidator;->addMessageMetadata(Lorg/briarproject/bramble/api/client/BdfMessageContext;J)V

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/blog/BlogPostValidator;->validatePost(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p2

    .line 80
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lorg/briarproject/briar/blog/BlogPostValidator;->addMessageMetadata(Lorg/briarproject/bramble/api/client/BdfMessageContext;J)V

    :goto_0
    move-object p1, p2

    .line 95
    :goto_1
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    const-string p3, "type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
