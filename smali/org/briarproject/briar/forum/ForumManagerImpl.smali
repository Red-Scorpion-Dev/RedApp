.class Lorg/briarproject/briar/forum/ForumManagerImpl;
.super Lorg/briarproject/briar/client/BdfIncomingMessageHook;
.source "ForumManagerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/forum/ForumManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

.field private final forumPostFactory:Lorg/briarproject/briar/api/forum/ForumPostFactory;

.field private final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

.field private final removeHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/forum/ForumFactory;Lorg/briarproject/briar/api/forum/ForumPostFactory;Lorg/briarproject/briar/api/client/MessageTracker;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p3, p4}, Lorg/briarproject/briar/client/BdfIncomingMessageHook;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;)V

    .line 71
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 72
    iput-object p5, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

    .line 73
    iput-object p6, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->forumPostFactory:Lorg/briarproject/briar/api/forum/ForumPostFactory;

    .line 74
    iput-object p7, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 75
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->removeHooks:Ljava/util/List;

    return-void
.end method

.method private getForumPostHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/forum/ForumPostHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/briarproject/briar/forum/ForumManagerImpl;->getForumPostHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object p1

    return-object p1
.end method

.method private getForumPostHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/forum/ForumPostHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            "Lorg/briarproject/bramble/api/identity/AuthorInfo;",
            ">;)",
            "Lorg/briarproject/briar/api/forum/ForumPostHeader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "timestamp"

    .line 259
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "parent"

    .line 261
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string v1, "parent"

    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const-string v0, "author"

    .line 263
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    if-nez p4, :cond_1

    .line 267
    iget-object p4, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v6}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-interface {p4, p1, v0}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p1

    move-object v7, p1

    goto :goto_1

    :cond_1
    move-object v7, p4

    :goto_1
    const-string p1, "read"

    .line 268
    invoke-virtual {p3, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 270
    new-instance p1, Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lorg/briarproject/briar/api/forum/ForumPostHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-object p1
.end method

.method private getPostText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 189
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$addForum$0(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/Forum;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public static synthetic lambda$addLocalPost$2(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/ForumPost;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 132
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "timestamp"

    .line 133
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getParent()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "parent"

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getParent()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    const-string v2, "author"

    .line 136
    iget-object v3, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v3, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "local"

    const/4 v2, 0x1

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "read"

    .line 138
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-interface {v1, p2, v3, v0, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 140
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public static synthetic lambda$getForum$3(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/briar/forum/ForumManagerImpl;->getForum(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getForums$4(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v1, Lorg/briarproject/briar/forum/ForumManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getPostHeaders$5(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 199
    invoke-interface {v1, p2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    .line 201
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    const-string v4, "author"

    invoke-virtual {v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v4, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/identity/AuthorId;

    .line 211
    iget-object v4, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v4, p2, v3}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 215
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p0, p2, v1, v3, v2}, Lorg/briarproject/briar/forum/ForumManagerImpl;->getForumPostHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;)Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$removeForum$1(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/Forum;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->removeHooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;

    .line 110
    invoke-interface {v1, p2, p1}, Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;->removingForum(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/forum/Forum;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method private parseForum(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object v0

    .line 246
    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 247
    new-instance v1, Lorg/briarproject/briar/api/forum/Forum;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lorg/briarproject/briar/api/forum/Forum;-><init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;[B)V

    return-object v1
.end method


# virtual methods
.method public addForum(Ljava/lang/String;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/forum/ForumFactory;->createForum(Ljava/lang/String;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;-><init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/Forum;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-object p1
.end method

.method public addForum(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/api/forum/Forum;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public addLocalPost(Lorg/briarproject/briar/api/forum/ForumPost;)Lorg/briarproject/briar/api/forum/ForumPostHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$omnzcKLYThi9UxhvrJUML0nJKA8;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$omnzcKLYThi9UxhvrJUML0nJKA8;-><init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/ForumPost;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    .line 145
    new-instance v9, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-direct {v9, v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V

    .line 146
    new-instance v0, Lorg/briarproject/briar/api/forum/ForumPostHeader;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getParent()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 147
    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/ForumPost;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v8

    const/4 v10, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lorg/briarproject/briar/api/forum/ForumPostHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V

    return-object v0
.end method

.method public createLocalPost(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/briar/api/forum/ForumPost;
    .locals 7

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->forumPostFactory:Lorg/briarproject/briar/api/forum/ForumPostFactory;

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/briarproject/briar/api/forum/ForumPostFactory;->createPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/forum/ForumPost;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 123
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public getForum(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lorg/briarproject/briar/forum/ForumManagerImpl;->parseForum(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 161
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getForum(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;-><init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/forum/Forum;

    return-object p1
.end method

.method public getForums()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$Zbwg7XjxKRhy4bV8HWp7LyARKI8;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$Zbwg7XjxKRhy4bV8HWp7LyARKI8;-><init>(Lorg/briarproject/briar/forum/ForumManagerImpl;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 170
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/Group;

    invoke-direct {p0, v2}, Lorg/briarproject/briar/forum/ForumManagerImpl;->parseForum(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object p1

    return-object p1
.end method

.method public getPostHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/forum/ForumPostHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    new-instance v2, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$_5g1YhaMa71_ppc-UBvUEMqWa1o;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$_5g1YhaMa71_ppc-UBvUEMqWa1o;-><init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 223
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPostText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/forum/ForumManagerImpl;->getPostText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 183
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/client/MessageTracker;->trackIncomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 84
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/briarproject/briar/forum/ForumManagerImpl;->getForumPostHeader(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/forum/ForumPostHeader;

    move-result-object p4

    .line 85
    invoke-direct {p0, p3}, Lorg/briarproject/briar/forum/ForumManagerImpl;->getPostText(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/lang/String;

    move-result-object p3

    .line 86
    new-instance v0, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;

    .line 87
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {v0, p2, p4, p3}, Lorg/briarproject/briar/api/forum/event/ForumPostReceivedEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/forum/ForumPostHeader;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerRemoveForumHook(Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->removeHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeForum(Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$fIG1G7-NRSg35Q_bqETVlGyw8tE;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$fIG1G7-NRSg35Q_bqETVlGyw8tE;-><init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/Forum;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method

.method public setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/briar/api/client/MessageTracker;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    return-void
.end method
