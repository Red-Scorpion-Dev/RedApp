.class Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;
.super Lorg/briarproject/briar/client/BdfIncomingMessageHook;
.source "PrivateGroupManagerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

.field private final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/client/MessageTracker;)V
    .locals 0

    .line 96
    invoke-direct {p0, p3, p1, p2}, Lorg/briarproject/briar/client/BdfIncomingMessageHook;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;)V

    .line 97
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 98
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 99
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 100
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 101
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->hooks:Ljava/util/List;

    return-void
.end method

.method private addMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "members"

    .line 596
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    const/4 v2, 0x2

    .line 597
    new-array v2, v2, [Ljava/util/Map$Entry;

    new-instance v3, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v4, "member"

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 598
    invoke-interface {v5, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v4, "visibility"

    .line 599
    invoke-virtual {p4}, Lorg/briarproject/briar/api/privategroup/Visibility;->getInt()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v3, v4, p4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p4, 0x1

    aput-object v3, v2, p4

    .line 597
    invoke-static {v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p4

    invoke-virtual {v1, p4}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p4, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    .line 602
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;

    .line 603
    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;->addingMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addMessageMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/api/privategroup/GroupMessage;)V
    .locals 3

    const-string v0, "member"

    .line 242
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    .line 243
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "read"

    const/4 v0, 0x1

    .line 244
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private attachGroupMessageAddedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 576
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 577
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 576
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getGroupMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object p3

    .line 578
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getMessageText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {v1, p2, p3, v0, p4}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method private attachJoinMessageAddedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;ZLorg/briarproject/briar/api/privategroup/Visibility;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 586
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 587
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, p5

    .line 586
    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getJoinMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;Lorg/briarproject/briar/api/privategroup/Visibility;)Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;

    move-result-object p3

    .line 588
    new-instance p5, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p5, p2, p3, v0, p4}, Lorg/briarproject/briar/api/privategroup/event/GroupMessageAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Ljava/lang/String;Z)V

    invoke-virtual {p1, p5}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method private getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const-string v1, "member"

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p1

    return-object p1
.end method

.method private getGroupMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
    .locals 10
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
            "Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "parentMsgId"

    .line 366
    invoke-virtual {p4, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string v1, "parentMsgId"

    invoke-virtual {p4, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    const-string v0, "timestamp"

    .line 369
    invoke-virtual {p4, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 371
    invoke-direct {p0, p4}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v7

    .line 373
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    :goto_1
    move-object v8, p1

    goto :goto_2

    .line 376
    :cond_1
    iget-object p5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-interface {p5, p1, v0}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-string p1, "read"

    .line 378
    invoke-virtual {p4, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 380
    new-instance p1, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v9}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-object p1
.end method

.method private getJoinMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;Lorg/briarproject/briar/api/privategroup/Visibility;)Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;
    .locals 0
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
            ">;",
            "Lorg/briarproject/briar/api/privategroup/Visibility;",
            ")",
            "Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 390
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getGroupMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object p1

    const-string p2, "initialJoinMsg"

    .line 391
    invoke-virtual {p4, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 392
    new-instance p3, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;

    invoke-direct {p3, p1, p6, p2}, Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;-><init>(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;Lorg/briarproject/briar/api/privategroup/Visibility;Z)V

    return-object p3
.end method

.method private getMembers(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "Lorg/briarproject/briar/api/privategroup/Visibility;",
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
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 428
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p2, "members"

    .line 429
    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 430
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    .line 431
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 433
    invoke-direct {p0, v1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    .line 434
    invoke-direct {p0, v1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getVisibility(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v1

    .line 435
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 439
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getMessageText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 315
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPreviousMsgId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p2, "previousMsgId"

    .line 182
    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p1

    .line 183
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    return-object p2
.end method

.method private getVisibility(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "visibility"

    .line 614
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/briarproject/briar/api/privategroup/Visibility;->valueOf(I)Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object p1

    return-object p1
.end method

.method private handleGroupMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const-string v0, "timestamp"

    .line 540
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "parentMsgId"

    .line 541
    invoke-virtual {p3, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 543
    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v3, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 544
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 545
    invoke-interface {v2, p1, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    const-string v3, "timestamp"

    .line 546
    invoke-virtual {v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    const-string v3, "type"

    .line 549
    invoke-virtual {v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/briarproject/briar/api/privategroup/MessageType;->valueOf(I)Lorg/briarproject/briar/api/privategroup/MessageType;

    move-result-object v2

    .line 550
    sget-object v3, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 547
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const-string v2, "previousMsgId"

    .line 554
    invoke-virtual {p3, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v2

    .line 555
    new-instance v3, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v3, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 556
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 557
    invoke-interface {v2, p1, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    const-string v3, "timestamp"

    .line 558
    invoke-virtual {v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    .line 561
    invoke-direct {p0, p3}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "type"

    .line 565
    invoke-virtual {v2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/api/privategroup/MessageType;->valueOf(I)Lorg/briarproject/briar/api/privategroup/MessageType;

    move-result-object v0

    .line 566
    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    if-eq v0, v1, :cond_4

    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 567
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 569
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/client/MessageTracker;->trackIncomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->attachGroupMessageAddedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    return-void

    .line 562
    :cond_5
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 559
    :cond_6
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private handleJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 520
    invoke-direct {p0, p3}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 522
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    const-string v2, "ourGroup"

    .line 523
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 524
    sget-object v3, Lorg/briarproject/briar/api/privategroup/Visibility;->VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    if-nez v2, :cond_0

    .line 526
    new-instance v2, Lorg/briarproject/bramble/api/identity/AuthorId;

    const-string v4, "creatorId"

    .line 527
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/api/identity/AuthorId;-><init>([B)V

    .line 528
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    sget-object v3, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    :cond_0
    move-object v9, v3

    .line 531
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0, v9}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->addMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/api/privategroup/Visibility;)V

    .line 533
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/client/MessageTracker;->trackIncomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 534
    invoke-direct/range {v4 .. v9}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->attachJoinMessageAddedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;ZLorg/briarproject/briar/api/privategroup/Visibility;)V

    return-void
.end method

.method private joinPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 137
    new-instance v3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v0, "type"

    .line 138
    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "initialJoinMsg"

    .line 139
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v3, v0, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-direct {p0, v3, p2}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->addMessageMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/api/privategroup/GroupMessage;)V

    .line 141
    iget-object p3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, p1, v0, v3, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 142
    iget-object p3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 143
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p3

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p3

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-direct {p0, p1, p3, v0, v1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->addMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/api/privategroup/Visibility;)V

    .line 144
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p3

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p3

    .line 145
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    .line 144
    invoke-direct {p0, p1, p3, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->setPreviousMsgId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 146
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v2

    sget-object v5, Lorg/briarproject/briar/api/privategroup/Visibility;->VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->attachJoinMessageAddedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;ZLorg/briarproject/briar/api/privategroup/Visibility;)V

    return-void
.end method

.method private setPreviousMsgId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 188
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "previousMsgId"

    invoke-direct {v1, v2, p3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    aput-object v1, v0, p3

    .line 189
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 190
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-void
.end method


# virtual methods
.method public addLocalMessage(Lorg/briarproject/briar/api/privategroup/GroupMessage;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 214
    :try_start_0
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "type"

    .line 215
    sget-object v3, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v3}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getParent()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "parentMsgId"

    .line 217
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getParent()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->addMessageMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/api/privategroup/GroupMessage;)V

    .line 219
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v0, v4, v1, v5}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 223
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->setPreviousMsgId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 224
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 227
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1, v5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->attachGroupMessageAddedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 229
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 235
    new-instance v9, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-direct {v9, v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V

    .line 236
    new-instance v0, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 237
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getParent()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 238
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessage;->getMember()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v8

    const/4 v10, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    :try_start_1
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 234
    throw p1
.end method

.method public addPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 121
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    const/4 v1, 0x4

    .line 122
    new-array v1, v1, [Ljava/util/Map$Entry;

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "members"

    new-instance v4, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {v4}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-instance v4, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v5, "creatorId"

    invoke-direct {v4, v5, v0}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v0, 0x2

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v4, "ourGroup"

    .line 125
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v4, "dissolved"

    .line 126
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 122
    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    .line 129
    invoke-direct {p0, p1, p3, p4}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->joinPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 131
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addPrivateGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 109
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->addPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V

    .line 110
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 113
    throw p1
.end method

.method public getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1

    .line 324
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 325
    invoke-interface {v2, v1, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object v2

    .line 327
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 328
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 329
    invoke-direct {p0, v5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    invoke-virtual {v5}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 333
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/identity/AuthorId;

    .line 334
    iget-object v5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v5, v1, v4}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 337
    :cond_1
    invoke-direct {p0, v1, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getMembers(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object v11

    .line 339
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/briarproject/bramble/api/data/BdfDictionary;

    const-string v4, "type"

    .line 341
    invoke-virtual {v7, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v6}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v4, v8

    if-nez v6, :cond_2

    .line 342
    invoke-direct {p0, v7}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    .line 343
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lorg/briarproject/briar/api/privategroup/Visibility;

    .line 344
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/briarproject/bramble/api/sync/MessageId;

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v8, v10

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getJoinMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;Lorg/briarproject/briar/api/privategroup/Visibility;)Lorg/briarproject/briar/api/privategroup/JoinMessageHeader;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 347
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/briarproject/bramble/api/sync/MessageId;

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getGroupMessageHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 351
    :cond_3
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 354
    :try_start_1
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :goto_3
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 357
    throw p1
.end method

.method public getMembers(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/GroupMember;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 399
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getMembers(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object v2

    .line 401
    iget-object v3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v3, v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v3

    .line 402
    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object p1

    .line 403
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lorg/briarproject/bramble/api/identity/Author;

    .line 405
    iget-object v5, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v8

    .line 406
    invoke-virtual {v8}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object v5

    .line 407
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lorg/briarproject/briar/api/privategroup/Visibility;

    const/4 v4, 0x0

    .line 409
    sget-object v6, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    if-eq v11, v6, :cond_1

    sget-object v6, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->VERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-eq v5, v6, :cond_0

    sget-object v6, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNVERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-ne v5, v6, :cond_1

    .line 411
    :cond_0
    iget-object v4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v6

    invoke-interface {v4, v0, v5, v6}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v4

    .line 412
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v4

    :cond_1
    move-object v10, v4

    .line 414
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 415
    new-instance v4, Lorg/briarproject/briar/api/privategroup/GroupMember;

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/api/privategroup/GroupMember;-><init>(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;ZLorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_2
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 421
    throw p1
.end method

.method public getMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getMessageText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 308
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPreviousMsgId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 169
    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getPreviousMsgId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    .line 170
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    :try_start_1
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 175
    throw p1
.end method

.method public getPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->parsePrivateGroup(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 267
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getPrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 252
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object p1

    .line 253
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 256
    throw p1
.end method

.method public getPrivateGroups()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v2, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 282
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 283
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/Group;

    .line 285
    iget-object v3, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    invoke-interface {v3, v2}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->parsePrivateGroup(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 279
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 280
    throw v1
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string p3, "type"

    .line 503
    invoke-virtual {p4, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->intValue()I

    move-result p3

    invoke-static {p3}, Lorg/briarproject/briar/api/privategroup/MessageType;->valueOf(I)Lorg/briarproject/briar/api/privategroup/MessageType;

    move-result-object p3

    .line 504
    sget-object v0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl$1;->$SwitchMap$org$briarproject$briar$api$privategroup$MessageType:[I

    invoke-virtual {p3}, Lorg/briarproject/briar/api/privategroup/MessageType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    .line 513
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown MessageType"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :pswitch_0
    invoke-direct {p0, p1, p2, p4}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->handleGroupMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return v0

    .line 506
    :pswitch_1
    invoke-direct {p0, p1, p2, p4}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->handleJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 296
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string v0, "dissolved"

    .line 297
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 299
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 446
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getMembers(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/identity/Author;

    .line 447
    invoke-virtual {p2, p3}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public markGroupDissolved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 196
    new-array v1, v0, [Ljava/util/Map$Entry;

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "dissolved"

    .line 197
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 196
    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    new-instance v0, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/briar/api/privategroup/event/GroupDissolvedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 205
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    :catch_0
    move-exception p1

    .line 202
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public registerPrivateGroupHook(Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/AuthorId;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "members"

    .line 467
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 468
    sget-object v2, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 470
    :goto_0
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 471
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v5

    .line 472
    invoke-direct {p0, v5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v7

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v7

    invoke-virtual {p3, v7}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 475
    invoke-direct {p0, v5}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->getVisibility(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v1

    sget-object v4, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    if-ne v1, v4, :cond_3

    if-eqz p4, :cond_0

    .line 477
    sget-object p4, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_CONTACT:Lorg/briarproject/briar/api/privategroup/Visibility;

    :goto_1
    move-object v2, p4

    goto :goto_2

    :cond_0
    sget-object p4, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_US:Lorg/briarproject/briar/api/privategroup/Visibility;

    goto :goto_1

    :goto_2
    const-string p4, "visibility"

    .line 478
    invoke-virtual {v2}, Lorg/briarproject/briar/api/privategroup/Visibility;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p4, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_3
    if-eqz v6, :cond_5

    if-eqz v3, :cond_4

    .line 485
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p4, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    .line 486
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {p4, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p4

    .line 487
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {p4}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p4

    invoke-interface {v0, p1, p3, p4}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p4

    invoke-virtual {p4}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p4

    .line 488
    new-instance v0, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;

    invoke-direct {v0, p2, p3, p4, v2}, Lorg/briarproject/briar/api/privategroup/event/ContactRelationshipRevealedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/Visibility;)V

    .line 489
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_4
    return-void

    .line 483
    :cond_5
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1
.end method

.method public removePrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;

    .line 154
    invoke-interface {v2, v0, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;->removingGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 157
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 158
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 161
    throw p1
.end method

.method public setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/briar/api/client/MessageTracker;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    return-void
.end method
