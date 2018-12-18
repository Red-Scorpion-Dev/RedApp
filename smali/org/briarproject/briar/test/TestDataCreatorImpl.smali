.class public Lorg/briarproject/briar/test/TestDataCreatorImpl;
.super Ljava/lang/Object;
.source "TestDataCreatorImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/test/TestDataCreator;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final LOG:Ljava/util/logging/Logger;

.field private final authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

.field private final blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field private final blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final cryptoComponent:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final ioExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end field

.field private final localAuthors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            ">;"
        }
    .end annotation
.end field

.field private final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

.field private final messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

.field private final privateMessageFactory:Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

.field private final random:Ljava/util/Random;

.field private final transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/briar/api/messaging/MessagingManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/forum/ForumManager;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p15    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    move-object v0, p0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v1, Lorg/briarproject/briar/test/TestDataCreatorImpl;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    .line 90
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->localAuthors:Ljava/util/Map;

    move-object v1, p1

    .line 103
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-object v1, p2

    .line 104
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    move-object v1, p3

    .line 105
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->privateMessageFactory:Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-object v1, p4

    .line 106
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    move-object v1, p5

    .line 107
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    move-object v1, p6

    .line 108
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-object v1, p7

    .line 109
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->cryptoComponent:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    move-object v1, p8

    .line 110
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-object v1, p9

    .line 111
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-object v1, p10

    .line 112
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    move-object v1, p11

    .line 113
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-object v1, p12

    .line 114
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    move-object v1, p13

    .line 115
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    move-object/from16 v1, p14

    .line 116
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    move-object/from16 v1, p15

    .line 117
    iput-object v1, v0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private addBlogPost(Lorg/briarproject/bramble/api/identity/LocalAuthor;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v3, p2

    sub-long v7, v1, v3

    .line 370
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomText()Ljava/lang/String;

    move-result-object v11

    .line 372
    :try_start_0
    iget-object v5, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    const/4 v9, 0x0

    move-object v10, p1

    invoke-interface/range {v5 .. v11}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->createBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/blog/BlogPost;

    move-result-object p1

    .line 374
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {p2, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->addLocalPost(Lorg/briarproject/briar/api/blog/BlogPost;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 376
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private addContact(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v4

    .line 165
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 166
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v8

    .line 170
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomTransportProperties()Ljava/util/Map;

    move-result-object v10

    .line 173
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v11

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v1, v11

    move-object v2, p2

    move-object v3, p1

    .line 176
    invoke-interface/range {v0 .. v9}, Lorg/briarproject/bramble/api/contact/ContactManager;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 180
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v11, p1, v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->setContactAlias(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    invoke-interface {v0, v11, p1, v10}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->addRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Map;)V

    .line 183
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v11, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v11}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v11}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 189
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with transport properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->localAuthors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    .line 186
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v11}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 187
    throw p1
.end method

.method private createBlogPosts(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 358
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/Contact;

    .line 359
    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->localAuthors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 360
    invoke-direct {p0, v1, v0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->addBlogPost(Lorg/briarproject/bramble/api/identity/LocalAuthor;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 363
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " blog posts."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private createContacts(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v3

    .line 154
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->addContact(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v3

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createForums(Ljava/util/List;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;II)",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 385
    sget-object v3, Lorg/briarproject/briar/test/TestData;->GROUP_NAMES:[Ljava/lang/String;

    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    sget-object v5, Lorg/briarproject/briar/test/TestData;->GROUP_NAMES:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    .line 386
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-interface {v4, v3}, Lorg/briarproject/briar/api/forum/ForumManager;->addForum(Ljava/lang/String;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object v3

    .line 389
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v4, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v4

    .line 391
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/briarproject/bramble/api/contact/Contact;

    .line 392
    iget-object v7, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v6}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v6

    invoke-virtual {v3}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v8

    sget-object v9, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-interface {v7, v4, v6, v8, v9}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    goto :goto_1

    .line 395
    :cond_0
    iget-object v5, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v5, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iget-object v5, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v5, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 399
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 397
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 398
    throw p1

    .line 401
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 402
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " forums with "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " posts each."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->privateMessageFactory:Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;->createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Ljava/util/List;)Lorg/briarproject/briar/api/messaging/PrivateMessage;

    move-result-object p1

    .line 332
    new-instance p2, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v0, "timestamp"

    .line 333
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "local"

    .line 334
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "read"

    .line 335
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object p3, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object p3

    .line 339
    :try_start_0
    iget-object p4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p4, p3, v0, p2, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    if-eqz p5, :cond_0

    .line 340
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackIncomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 342
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 345
    throw p1
.end method

.method private createPrivateMessages(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/Contact;

    .line 305
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    invoke-interface {v1, v0}, Lorg/briarproject/briar/api/messaging/MessagingManager;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 308
    :try_start_0
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createRandomPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;I)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 314
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " private messages per contact."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private createRandomForumPosts(Lorg/briarproject/briar/api/forum/Forum;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    .line 412
    iget-object v3, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/contact/Contact;

    .line 413
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->localAuthors:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    .line 414
    iget-object v3, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v3}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit8 v5, v2, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    sub-long v7, v3, v5

    .line 415
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomText()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    .line 417
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 418
    iget-object v3, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/briar/api/forum/ForumPost;

    .line 420
    invoke-virtual {v3}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    :cond_0
    move-object v9, v3

    .line 422
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-interface/range {v4 .. v10}, Lorg/briarproject/briar/api/forum/ForumManager;->createLocalPost(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/briar/api/forum/ForumPost;

    move-result-object v3

    .line 424
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-interface {v4, v3}, Lorg/briarproject/briar/api/forum/ForumManager;->addLocalPost(Lorg/briarproject/briar/api/forum/ForumPost;)Lorg/briarproject/briar/api/forum/ForumPostHeader;

    .line 426
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/forum/Forum;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    .line 428
    invoke-virtual {v3}, Lorg/briarproject/briar/api/forum/ForumPost;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 427
    invoke-interface {v4, v5, v3, v1}, Lorg/briarproject/briar/api/forum/ForumManager;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private createRandomPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    sub-long v7, v0, v2

    .line 323
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomText()Ljava/lang/String;

    move-result-object v6

    .line 324
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result v9

    move-object v4, p0

    move-object v5, p1

    .line 325
    invoke-direct/range {v4 .. v9}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;JZ)V

    return-void
.end method

.method private createTestDataOnIoExecutor(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createContacts(I)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createPrivateMessages(Ljava/util/List;I)V

    .line 141
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createBlogPosts(Ljava/util/List;I)V

    .line 142
    invoke-direct {p0, p1, p4, p5}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createForums(Ljava/util/List;II)Ljava/util/List;

    move-result-object p2

    .line 144
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/briar/api/forum/Forum;

    .line 145
    invoke-direct {p0, p3, p1, p5}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createRandomForumPosts(Lorg/briarproject/briar/api/forum/Forum;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAuthor(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->cryptoComponent:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateSignatureKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 207
    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    invoke-interface {v2, p1, v1, v0}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createLocalAuthor(Ljava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    return-object p1
.end method

.method private getRandomAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 1

    .line 216
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getAuthor(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    return-object v0
.end method

.method private getRandomAuthorName()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    sget-object v1, Lorg/briarproject/briar/test/TestData;->AUTHOR_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 212
    sget-object v1, Lorg/briarproject/briar/test/TestData;->AUTHOR_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private getRandomBluetoothAddress()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x6

    .line 256
    new-array v0, v0, [B

    .line 257
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 260
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, v0, v4

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v6, "%02X"

    const/4 v7, 0x1

    .line 262
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRandomLanAddress()Ljava/lang/String;
    .locals 5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x100

    const/16 v3, 0x2e

    const/4 v4, 0x2

    if-nez v1, :cond_0

    const-string v1, "10."

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "192.168."

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ":"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    const v2, 0xc350

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRandomText()Ljava/lang/String;
    .locals 4

    .line 434
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/briarproject/bramble/util/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " \ud83d\udc96 \ud83e\udd84 \ud83c\udf08"

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRandomTorAddress()Ljava/lang/String;
    .locals 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 296
    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRandomTransportProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    new-instance v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    .line 230
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    .line 232
    invoke-virtual {v1, v4, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uuid"

    .line 233
    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v2, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomLanAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "ipPorts"

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v2, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    .line 248
    invoke-direct {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getRandomTorAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onion"

    .line 249
    invoke-virtual {v1, v3, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v2, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getRandomUUID()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 268
    new-array v0, v0, [B

    .line 269
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 270
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 2

    const/16 v0, 0x20

    .line 220
    new-array v0, v0, [B

    .line 221
    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 222
    new-instance v1, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    return-object v1
.end method

.method public static synthetic lambda$createTestData$0(Lorg/briarproject/briar/test/TestDataCreatorImpl;IIIII)V
    .locals 0

    .line 127
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createTestDataOnIoExecutor(IIIII)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 130
    iget-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Creating test data failed"

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->getAuthor(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->addContact(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    return-object p1
.end method

.method public addPrivateMessage(Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/api/messaging/MessagingManager;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/test/TestDataCreatorImpl;->createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;Ljava/lang/String;JZ)V

    return-void
.end method

.method public createTestData(IIIII)V
    .locals 9

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lorg/briarproject/briar/test/-$$Lambda$TestDataCreatorImpl$d2FNqcuMcrhq2Ruw4Fc1gYqPfIE;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/test/-$$Lambda$TestDataCreatorImpl$d2FNqcuMcrhq2Ruw4Fc1gYqPfIE;-><init>(Lorg/briarproject/briar/test/TestDataCreatorImpl;IIIII)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of contacts must be >= 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
