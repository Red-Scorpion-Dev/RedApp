.class Lorg/briarproject/briar/blog/BlogManagerImpl;
.super Lorg/briarproject/briar/client/BdfIncomingMessageHook;
.source "BlogManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/briar/api/blog/BlogManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

.field private final blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final removeHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/briar/api/blog/BlogPostFactory;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p4, p5}, Lorg/briarproject/briar/client/BdfIncomingMessageHook;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;)V

    .line 85
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 86
    iput-object p3, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 87
    iput-object p6, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    .line 88
    iput-object p7, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    .line 89
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->removeHooks:Ljava/util/List;

    return-void
.end method

.method private canBeRemoved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 189
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p2

    .line 190
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getMessageType(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/MessageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "type"

    .line 605
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/briarproject/briar/api/blog/MessageType;->valueOf(I)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object p1

    return-object p1
.end method

.method private getOriginalMessageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 299
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getType()Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    .line 300
    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 302
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    .line 301
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 303
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string v0, "originalMessageId"

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    return-object p2

    .line 300
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    return-object p1
.end method

.method private getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 556
    invoke-interface {v0, p1, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 557
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    return-object p1
.end method

.method private getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 564
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 563
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    return-object p1
.end method

.method private getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            "Lorg/briarproject/bramble/api/identity/AuthorInfo;",
            ">;)",
            "Lorg/briarproject/briar/api/blog/BlogPostHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 572
    invoke-direct {v0, v2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getMessageType(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v4

    const-string v5, "timestamp"

    .line 574
    invoke-virtual {v2, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v5, "timeReceived"

    .line 575
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v5, "author"

    .line 577
    invoke-virtual {v2, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v5

    .line 578
    iget-object v6, v0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v6, v5}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v11

    const-string v5, "rssFeed"

    const/4 v6, 0x0

    .line 579
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 582
    new-instance v3, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object v5, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->NONE:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-direct {v3, v5}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V

    :goto_0
    move-object v13, v3

    goto :goto_1

    .line 583
    :cond_0
    invoke-virtual {v11}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 584
    invoke-virtual {v11}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    goto :goto_0

    .line 586
    :cond_1
    iget-object v3, v0, Lorg/briarproject/briar/blog/BlogManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v11}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v3

    goto :goto_0

    :goto_1
    const-string v3, "read"

    .line 589
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 591
    sget-object v3, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-eq v4, v3, :cond_3

    sget-object v3, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v4, v3, :cond_2

    goto :goto_2

    .line 599
    :cond_2
    new-instance v15, Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-object v1, v15

    move-object v2, v4

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v5, v7

    move-wide v7, v9

    move-object v9, v11

    move-object v10, v13

    move v11, v12

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lorg/briarproject/briar/api/blog/BlogPostHeader;-><init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZZ)V

    return-object v15

    :cond_3
    :goto_2
    const-string v3, "comment"

    .line 592
    invoke-virtual {v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 593
    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string v6, "parentMessageId"

    invoke-virtual {v2, v6}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object/from16 v6, p2

    .line 595
    invoke-direct {v0, v1, v6, v3}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v12

    .line 596
    new-instance v15, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    move-object v1, v15

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p3

    move-object v12, v13

    move v13, v14

    invoke-direct/range {v1 .. v13}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;-><init>(Lorg/briarproject/briar/api/blog/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-object v15
.end method

.method private getPostText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/api/blog/MessageType;->valueOf(I)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    .line 473
    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 476
    :cond_0
    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 479
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 481
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private wrapMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 310
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    return-object p1

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v7

    .line 318
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimestamp()J

    move-result-wide v5

    .line 321
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 322
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getType()Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v1

    .line 323
    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v1, v2, :cond_1

    .line 325
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object v4

    .line 327
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->wrapPost(Lorg/briarproject/bramble/api/sync/GroupId;[BJLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    const-string v1, "type"

    .line 329
    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v2}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rssFeed"

    .line 330
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->isRssFeed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 331
    :cond_1
    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v1, v2, :cond_3

    .line 333
    move-object v1, p3

    check-cast v1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    .line 334
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getParent()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v2

    .line 336
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getOriginalMessageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 338
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/briarproject/briar/blog/BlogManagerImpl;->wrapMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v9

    .line 340
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object v4

    .line 342
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-object v3, p2

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->wrapComment(Lorg/briarproject/bramble/api/sync/GroupId;[BJLorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    const-string v2, "type"

    .line 344
    sget-object v3, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v3}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "comment"

    .line 346
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "parentMessageId"

    .line 347
    invoke-virtual {v0, v1, v9}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :cond_3
    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v1, v2, :cond_4

    .line 350
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    invoke-interface {v1, p2, v7}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->rewrapWrappedPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    const-string v1, "type"

    .line 351
    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v2}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rssFeed"

    .line 352
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->isRssFeed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 353
    :cond_4
    sget-object v2, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v1, v2, :cond_6

    .line 355
    move-object v1, p3

    check-cast v1, Lorg/briarproject/briar/api/blog/BlogCommentHeader;

    .line 356
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getParent()Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v2

    .line 358
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getOriginalMessageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 360
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/briarproject/briar/blog/BlogManagerImpl;->wrapMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    invoke-interface {v3, p2, v7, v2}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->rewrapWrappedComment(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    const-string v3, "type"

    .line 364
    sget-object v4, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v4}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "comment"

    .line 366
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/BlogCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "parentMessageId"

    .line 367
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "originalMessageId"

    .line 372
    invoke-virtual {v0, v1, p4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "author"

    .line 373
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "timestamp"

    .line 374
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "timeReceived"

    .line 375
    invoke-virtual {p3}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getTimeReceived()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object p3, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 p4, 0x1

    invoke-interface {p3, p1, p2, v0, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 379
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    return-object p1

    .line 369
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown Message Type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public addBlog(Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/Blog;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 164
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 167
    throw p1
.end method

.method public addLocalComment(Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;Lorg/briarproject/briar/api/blog/BlogPostHeader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 255
    invoke-virtual {p4}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getType()Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    .line 256
    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Comment on unknown type!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 263
    :try_start_0
    invoke-direct {p0, v0, p4}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getOriginalMessageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPostHeader;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    .line 265
    invoke-direct {p0, v0, p2, p4, v7}, Lorg/briarproject/briar/blog/BlogManagerImpl;->wrapMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p4

    .line 268
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v7

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->createBlogComment(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 270
    new-instance v2, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v3, "type"

    .line 271
    sget-object v4, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v4}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    const-string v3, "comment"

    .line 272
    invoke-virtual {v2, v3, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p3, "timestamp"

    .line 273
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "originalMessageId"

    .line 274
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "originalParentMessageId"

    .line 275
    invoke-virtual {v2, p3, v7}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "parentMessageId"

    .line 276
    invoke-virtual {v2, p3, p4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "author"

    .line 277
    iget-object p4, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p4, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 p3, 0x1

    invoke-interface {p1, v0, v1, v2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 284
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    .line 283
    invoke-direct {p0, v0, p2, p1, v2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    .line 285
    new-instance p4, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    invoke-direct {p4, p2, p1, p3}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    .line 286
    invoke-virtual {v0, p4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 287
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid key of author"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 289
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :goto_1
    iget-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 294
    throw p1
.end method

.method public addLocalPost(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPost;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 228
    :try_start_0
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 229
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v1

    .line 231
    new-instance v2, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v3, "type"

    .line 232
    sget-object v4, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v4}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "timestamp"

    .line 233
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "author"

    .line 234
    iget-object v4, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPost;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "read"

    const/4 v4, 0x1

    .line 235
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rssFeed"

    .line 236
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/Blog;->isRssFeed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-interface {v1, p1, v3, v2, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 240
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    .line 242
    invoke-direct {p0, p1, v0, p2, v2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p2

    .line 243
    new-instance v1, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    invoke-direct {v1, v0, p2, v4}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    .line 244
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 246
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addLocalPost(Lorg/briarproject/briar/api/blog/BlogPost;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 218
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/blog/BlogManagerImpl;->addLocalPost(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPost;)V

    .line 219
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 222
    throw p1
.end method

.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 0

    return-void
.end method

.method public canBeRemoved(Lorg/briarproject/briar/api/blog/Blog;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 179
    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/blog/BlogManagerImpl;->canBeRemoved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)Z

    move-result p1

    .line 180
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 184
    throw p1
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v1, v0}, Lorg/briarproject/briar/api/blog/BlogFactory;->createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/Blog;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public getBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 398
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 399
    iget-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/api/blog/BlogFactory;->parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 401
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getBlog(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 387
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    .line 388
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 391
    throw p1
.end method

.method public getBlogs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 427
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :try_start_1
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v3, Lorg/briarproject/briar/blog/BlogManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object v2

    .line 432
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/sync/Group;

    .line 433
    iget-object v4, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v4, v3}, Lorg/briarproject/briar/api/blog/BlogFactory;->parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :try_start_2
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 438
    throw v0
    :try_end_2
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 441
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBlogs(Lorg/briarproject/bramble/api/identity/LocalAuthor;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getBlogs()Ljava/util/Collection;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/api/blog/Blog;

    .line 412
    invoke-virtual {v2}, Lorg/briarproject/briar/api/blog/Blog;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/blog/BlogFactory;->createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    return-object p1
.end method

.method public getPostHeader(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/blog/BlogPostHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 451
    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 452
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p1

    .line 453
    iget-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 456
    :try_start_1
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :goto_0
    iget-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 459
    throw p1
.end method

.method public getPostHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/blog/BlogPostHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 490
    new-array v1, v0, [Ljava/util/Map$Entry;

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "type"

    sget-object v4, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    .line 491
    invoke-virtual {v4}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 490
    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 493
    new-array v2, v0, [Ljava/util/Map$Entry;

    new-instance v4, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v5, "type"

    sget-object v6, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    .line 494
    invoke-virtual {v6}, Lorg/briarproject/briar/api/blog/MessageType;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 493
    invoke-static {v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    .line 497
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v4, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v4, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 500
    :try_start_0
    iget-object v4, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 501
    invoke-interface {v4, v0, p1, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v1

    .line 502
    iget-object v4, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 503
    invoke-interface {v4, v0, p1, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v2

    .line 504
    new-instance v4, Ljava/util/HashMap;

    .line 505
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 506
    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 507
    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 509
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 510
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 511
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/briarproject/bramble/api/data/BdfDictionary;

    const-string v6, "author"

    invoke-virtual {v5, v6}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v5

    .line 512
    iget-object v6, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v6, v5}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    .line 513
    invoke-virtual {v5}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 517
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/briarproject/bramble/api/identity/AuthorId;

    .line 518
    iget-object v6, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 519
    invoke-interface {v6, v0, v5}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v6

    .line 518
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 522
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 523
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 525
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/briarproject/bramble/api/sync/MessageId;

    move-object v5, p0

    move-object v6, v0

    move-object v7, p1

    move-object v10, v2

    .line 524
    invoke-direct/range {v5 .. v10}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object v4

    .line 526
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 528
    :cond_2
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 531
    :try_start_1
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :goto_3
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 534
    throw p1
.end method

.method public getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 465
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 467
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 115
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p3

    .line 116
    invoke-direct {p0, p4}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getMessageType(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/MessageType;

    move-result-object v0

    .line 118
    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    sget-object p2, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, p2, :cond_2

    .line 145
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string p3, "parentMessageId"

    .line 146
    invoke-virtual {p4, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 147
    iget-object p3, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 148
    invoke-interface {p3, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p2, "originalMessageId"

    .line 149
    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p1

    const-string p2, "originalParentMessageId"

    .line 150
    invoke-virtual {p4, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p2

    .line 151
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return v2

    .line 120
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2, p4}, Lorg/briarproject/briar/blog/BlogManagerImpl;->getPostHeaderFromMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/blog/BlogPostHeader;

    move-result-object p2

    .line 123
    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    if-ne v0, v1, :cond_6

    .line 124
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/BlogPostHeader;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 126
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 127
    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "originalMessageId"

    .line 128
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "originalParentMessageId"

    .line 129
    invoke-virtual {p4, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p4

    .line 130
    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    .line 131
    :cond_4
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 125
    :cond_5
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 136
    :cond_6
    :goto_2
    new-instance p4, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;

    invoke-direct {p4, p3, p2, v2}, Lorg/briarproject/briar/api/blog/event/BlogPostAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V

    .line 138
    invoke-virtual {p1, p4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerRemoveBlogHook(Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->removeHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->canBeRemoved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->removeHooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;

    .line 210
    invoke-interface {v1, p1, p2}, Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;->removingBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeBlog(Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 198
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/blog/BlogManagerImpl;->removeBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V

    .line 199
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object p1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 202
    throw p1
.end method

.method public removingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/briarproject/briar/api/blog/BlogFactory;->createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p2

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/blog/BlogManagerImpl;->removeBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V

    :cond_0
    return-void
.end method

.method public setReadFlag(Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 540
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "read"

    .line 541
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object p2, p0, Lorg/briarproject/briar/blog/BlogManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p2, p1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 544
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
