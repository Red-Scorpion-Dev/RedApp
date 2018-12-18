.class Lorg/briarproject/bramble/db/DatabaseComponentImpl;
.super Ljava/lang/Object;
.source "DatabaseComponentImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DatabaseComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/bramble/api/db/DatabaseComponent;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final db:Lorg/briarproject/bramble/db/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/bramble/db/Database<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final shutdown:Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

.field private final txnClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/db/Database;Ljava/lang/Class;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/Database<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 103
    iput-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    .line 104
    iput-object p2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->txnClass:Ljava/lang/Class;

    .line 105
    iput-object p3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    .line 106
    iput-object p4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->shutdown:Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    return-void
.end method

.method public static synthetic lambda$open$0(Lorg/briarproject/bramble/db/DatabaseComponentImpl;)V
    .locals 3

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->close()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            ")TT;"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->txnClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->unbox()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, v2, p3}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-interface {v0, v2, v1, p3}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/bramble/db/Database;->addContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    .line 229
    new-instance p3, Lorg/briarproject/bramble/api/contact/event/ContactAddedEvent;

    invoke-direct {p3, p2, p5}, Lorg/briarproject/bramble/api/contact/event/ContactAddedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    if-eqz p5, :cond_0

    .line 230
    new-instance p3, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_0
    return-object p2

    .line 227
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/ContactExistsException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/ContactExistsException;-><init>()V

    throw p1

    .line 225
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/ContactExistsException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/ContactExistsException;-><init>()V

    throw p1

    .line 223
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;-><init>()V

    throw p1

    .line 220
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->addGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 240
    new-instance v0, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/event/GroupAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/Group;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_0
    return-void

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->addLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    .line 251
    new-instance v0, Lorg/briarproject/bramble/api/identity/event/LocalAuthorAddedEvent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/identity/event/LocalAuthorAddedEvent;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_0
    return-void

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    sget-object v4, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p2

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/bramble/db/Database;->addMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ValidationManager$State;ZLorg/briarproject/bramble/api/contact/ContactId;)V

    .line 264
    new-instance v1, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 265
    new-instance v1, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-direct {v1, v2, v3, v4}, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;ZLorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    if-eqz p4, :cond_0

    .line 267
    new-instance p4, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {p4, v1}, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;)V

    invoke-virtual {p1, p4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 269
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-interface {p1, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->mergeMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void

    .line 261
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addMessageDependencies(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/Message;",
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

    .line 934
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 935
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 936
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/db/Database;->getMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v0

    .line 939
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 940
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v2, p1, p2, v1, v0}, Lorg/briarproject/bramble/db/Database;->addMessageDependency(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    goto :goto_0

    :cond_0
    return-void

    .line 937
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 934
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addTransport(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->addTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;I)V

    :cond_0
    return-void

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->addTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw p1

    .line 287
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 284
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0}, Lorg/briarproject/bramble/db/Database;->close()V

    return-void
.end method

.method public commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->txnClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->unbox()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->setCommitted()V

    .line 156
    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/db/Database;->commitTransaction(Ljava/lang/Object;)V

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public containsContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p3}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    return p1

    .line 298
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;-><init>()V

    throw p1
.end method

.method public containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result p1

    return p1
.end method

.method public containsLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    return p1
.end method

.method public deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->deleteMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void

    .line 322
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 331
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->deleteMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void

    .line 332
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 329
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->txnClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->unbox()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/db/Database;->abortTransaction(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 168
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->getEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/Event;

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 165
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 166
    :cond_3
    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 167
    :goto_2
    throw v0
.end method

.method public generateAck(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;I)Lorg/briarproject/bramble/api/sync/Ack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 342
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getMessagesToAck(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;

    move-result-object p3

    .line 345
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->lowerAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    .line 347
    new-instance p1, Lorg/briarproject/bramble/api/sync/Ack;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/sync/Ack;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 343
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 340
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public generateBatch(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    .line 359
    invoke-interface {v1, v0, p2, p3, p4}, Lorg/briarproject/bramble/db/Database;->getMessagesToSend(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;

    move-result-object p3

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 362
    iget-object v4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v4, v0, v3}, Lorg/briarproject/bramble/db/Database;->getMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v4, v0, p2, v3, p4}, Lorg/briarproject/bramble/db/Database;->updateExpiryTimeAndEta(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 366
    :cond_1
    iget-object p4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {p4, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->lowerRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    .line 367
    new-instance p4, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;

    invoke-direct {p4, p2, p3}, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    invoke-virtual {p1, p4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-object v1

    .line 357
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 354
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public generateOffer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;II)Lorg/briarproject/bramble/api/sync/Offer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 377
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    .line 380
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/briarproject/bramble/db/Database;->getMessagesToOffer(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;

    move-result-object p3

    .line 381
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 382
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 383
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v2, p1, p2, v1, p4}, Lorg/briarproject/bramble/db/Database;->updateExpiryTimeAndEta(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V

    goto :goto_0

    .line 384
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/sync/Offer;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/sync/Offer;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 378
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 375
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public generateRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;I)Lorg/briarproject/bramble/api/sync/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 391
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getMessagesToRequest(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;

    move-result-object p3

    .line 397
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->removeOfferedMessages(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    .line 399
    new-instance p1, Lorg/briarproject/bramble/api/sync/Request;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/sync/Request;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 394
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 391
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public generateRequestedBatch(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 406
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    .line 411
    invoke-interface {v1, v0, p2, p3, p4}, Lorg/briarproject/bramble/db/Database;->getRequestedMessagesToSend(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;

    move-result-object p3

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 414
    iget-object v4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v4, v0, v3}, Lorg/briarproject/bramble/db/Database;->getMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v4, v0, p2, v3, p4}, Lorg/briarproject/bramble/db/Database;->updateExpiryTimeAndEta(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 418
    :cond_1
    iget-object p4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {p4, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->lowerRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    .line 419
    new-instance p4, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;

    invoke-direct {p4, p2, p3}, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    invoke-virtual {p1, p4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-object v1

    .line 409
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 406
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    return-object p1

    .line 428
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1
.end method

.method public getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 435
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 436
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/db/Database;->getContacts(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getContacts(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 449
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 450
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getContacts(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 451
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;-><init>()V

    throw p1
.end method

.method public getContactsByAuthorId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 442
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getContactsByAuthorId(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 459
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1

    .line 460
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1
.end method

.method public getGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 468
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getGroupMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    return-object p1

    .line 469
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1
.end method

.method public getGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 483
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object p1

    return-object p1

    .line 485
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1
.end method

.method public getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 476
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 477
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getGroups(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 492
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 493
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    return-object p1

    .line 494
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;-><init>()V

    throw p1
.end method

.method public getLocalAuthors(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 501
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/db/Database;->getLocalAuthors(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 508
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 509
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    return-object p1

    .line 510
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1
.end method

.method public getMessageDependencies(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 624
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 625
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageDependencies(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 626
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1
.end method

.method public getMessageDependents(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 633
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 634
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageDependents(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 635
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1
.end method

.method public getMessageIds(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 517
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 518
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageIds(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 519
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1
.end method

.method public getMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 547
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 548
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 549
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1
.end method

.method public getMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 556
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 557
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 558
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1
.end method

.method public getMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 565
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    return-object p1

    .line 567
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1
.end method

.method public getMessageMetadataForValidator(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 575
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 576
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageMetadataForValidator(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;

    move-result-object p1

    return-object p1

    .line 577
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1
.end method

.method public getMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 584
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 585
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object p1

    return-object p1

    .line 586
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1
.end method

.method public getMessageStatus(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 593
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 594
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p3}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-ne v0, v1, :cond_1

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, p1, p3}, Lorg/briarproject/bramble/db/Database;->getMessageIds(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 602
    new-instance v1, Lorg/briarproject/bramble/api/sync/MessageStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2, v2}, Lorg/briarproject/bramble/api/sync/MessageStatus;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getMessageStatus(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 597
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1

    .line 595
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1
.end method

.method public getMessageStatus(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 611
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 612
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p3}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->getMessageStatus(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;

    move-result-object p1

    if-nez p1, :cond_0

    .line 617
    new-instance p1, Lorg/briarproject/bramble/api/sync/MessageStatus;

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0, v0}, Lorg/briarproject/bramble/api/sync/MessageStatus;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)V

    return-object p1

    :cond_0
    return-object p1

    .line 615
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 613
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1
.end method

.method public getMessagesToShare(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 540
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/db/Database;->getMessagesToShare(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesToValidate(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 526
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 527
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/db/Database;->getMessagesToValidate(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getNextSendTime(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 642
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 643
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getNextSendTime(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPendingMessages(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 533
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 534
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/db/Database;->getPendingMessages(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSettings(Lorg/briarproject/bramble/api/db/Transaction;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 649
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 650
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getSettings(Ljava/lang/Object;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    return-object p1
.end method

.method public getTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 656
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 657
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->getTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 658
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw p1
.end method

.method public incrementStreamCounter(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 665
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 667
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->incrementStreamCounter(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    return-void

    .line 668
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw p1

    .line 665
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 675
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 677
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->mergeGroupMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void

    .line 678
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1

    .line 675
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 685
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 687
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->mergeMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V

    return-void

    .line 688
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 685
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public mergeSettings(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 695
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p3}, Lorg/briarproject/bramble/db/Database;->getSettings(Ljava/lang/Object;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v1

    .line 698
    new-instance v2, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v2}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    .line 699
    invoke-virtual {v2, v1}, Lorg/briarproject/bramble/api/settings/Settings;->putAll(Ljava/util/Map;)V

    .line 700
    invoke-virtual {v2, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putAll(Ljava/util/Map;)V

    .line 701
    invoke-virtual {v2, v1}, Lorg/briarproject/bramble/api/settings/Settings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->mergeSettings(Ljava/lang/Object;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    .line 703
    new-instance p2, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    invoke-direct {p2, p3, v2}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;-><init>(Ljava/lang/String;Lorg/briarproject/bramble/api/settings/Settings;)V

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_0
    return-void

    .line 695
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public open(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->open(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)Z

    move-result p1

    .line 113
    iget-object p2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->shutdown:Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    new-instance v0, Lorg/briarproject/bramble/db/-$$Lambda$DatabaseComponentImpl$iynlmSfq9Covmh6J6YdsbygRVQc;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/db/-$$Lambda$DatabaseComponentImpl$iynlmSfq9Covmh6J6YdsbygRVQc;-><init>(Lorg/briarproject/bramble/db/DatabaseComponentImpl;)V

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;->addShutdownHook(Ljava/lang/Runnable;)I

    return p1
.end method

.method public receiveAck(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Ack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 710
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 711
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Ack;->getMessageIds()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 716
    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v3, v0, p2, v2}, Lorg/briarproject/bramble/db/Database;->containsVisibleMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v3, v0, p2, v2}, Lorg/briarproject/bramble/db/Database;->raiseSeenFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 718
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 722
    new-instance p3, Lorg/briarproject/bramble/api/sync/event/MessagesAckedEvent;

    invoke-direct {p3, p2, v1}, Lorg/briarproject/bramble/api/sync/event/MessagesAckedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_2
    return-void

    .line 713
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 710
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public receiveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 729
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 730
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v2

    .line 731
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, v2, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v2, p2, v1}, Lorg/briarproject/bramble/db/Database;->getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-eq v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v2, p2, v1}, Lorg/briarproject/bramble/db/Database;->raiseSeenFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 736
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-interface {v0, v2, p2, p3}, Lorg/briarproject/bramble/db/Database;->raiseAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    goto :goto_0

    .line 738
    :cond_0
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    sget-object v4, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->UNKNOWN:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const/4 v5, 0x0

    move-object v3, p3

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/bramble/db/Database;->addMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ValidationManager$State;ZLorg/briarproject/bramble/api/contact/ContactId;)V

    .line 739
    new-instance v0, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;

    invoke-direct {v0, p3, p2}, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;-><init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 741
    :goto_0
    new-instance p3, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;

    invoke-direct {p3, p2}, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_1
    return-void

    .line 732
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 729
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public receiveOffer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Offer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 748
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    .line 749
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->countOfferedMessages(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)I

    move-result v1

    .line 754
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Offer;->getMessageIds()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 755
    iget-object v5, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v5, v0, p2, v4}, Lorg/briarproject/bramble/db/Database;->containsVisibleMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 756
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v2, v0, p2, v4}, Lorg/briarproject/bramble/db/Database;->raiseSeenFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 757
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v2, v0, p2, v4}, Lorg/briarproject/bramble/db/Database;->raiseAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x3e8

    if-ge v1, v5, :cond_0

    .line 760
    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v3, v0, p2, v4}, Lorg/briarproject/bramble/db/Database;->addOfferedMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 765
    new-instance p3, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;

    invoke-direct {p3, p2}, Lorg/briarproject/bramble/api/sync/event/MessageToAckEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 766
    new-instance p3, Lorg/briarproject/bramble/api/sync/event/MessageToRequestEvent;

    invoke-direct {p3, p2}, Lorg/briarproject/bramble/api/sync/event/MessageToRequestEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_4
    return-void

    .line 751
    :cond_5
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 748
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public receiveRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 772
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 773
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 777
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Request;->getMessageIds()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 778
    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v3, v0, p2, v2}, Lorg/briarproject/bramble/db/Database;->containsVisibleMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2, v2}, Lorg/briarproject/bramble/db/Database;->raiseRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 780
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2, v2}, Lorg/briarproject/bramble/db/Database;->resetExpiryTime(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 784
    new-instance p3, Lorg/briarproject/bramble/api/sync/event/MessageRequestedEvent;

    invoke-direct {p3, p2}, Lorg/briarproject/bramble/api/sync/event/MessageRequestedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    :cond_2
    return-void

    .line 775
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 772
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 790
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->removeContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 795
    new-instance v0, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 793
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 790
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 801
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 803
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    .line 804
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v2, v0, v1}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    .line 807
    invoke-interface {v2, v0, v1}, Lorg/briarproject/bramble/db/Database;->getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 808
    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v3, v0, v1}, Lorg/briarproject/bramble/db/Database;->removeGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 809
    new-instance v0, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/event/GroupRemovedEvent;-><init>(Lorg/briarproject/bramble/api/sync/Group;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 810
    new-instance p2, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;

    invoke-direct {p2, v2}, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 805
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1

    .line 801
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 816
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 817
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->removeLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    .line 821
    new-instance v0, Lorg/briarproject/bramble/api/identity/event/LocalAuthorRemovedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/identity/event/LocalAuthorRemovedEvent;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 819
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchLocalAuthorException;-><init>()V

    throw p1

    .line 816
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 827
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 829
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->removeMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void

    .line 830
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 827
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeTransport(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 838
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 840
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->removeTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    return-void

    .line 841
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw p1

    .line 838
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public removeTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 848
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 850
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->removeTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    return-void

    .line 851
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw p1

    .line 848
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setContactActive(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 869
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->setContactActive(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    .line 874
    new-instance v0, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;

    invoke-direct {v0, p2, p3}, Lorg/briarproject/bramble/api/contact/event/ContactStatusChangedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 872
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 869
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setContactAlias(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 880
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 881
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 882
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->setContactAlias(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    return-void

    .line 883
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 880
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setContactVerified(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 858
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->setContactVerified(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 863
    new-instance v0, Lorg/briarproject/bramble/api/contact/event/ContactVerifiedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/contact/event/ContactVerifiedEvent;-><init>(Lorg/briarproject/bramble/api/contact/ContactId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 861
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 858
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 890
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7

    .line 891
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 894
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p3}, Lorg/briarproject/bramble/db/Database;->containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 896
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    if-ne v1, p4, :cond_0

    return-void

    .line 898
    :cond_0
    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-ne p4, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v0, p2, p3, v3}, Lorg/briarproject/bramble/db/Database;->addGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    goto :goto_0

    .line 899
    :cond_2
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-ne p4, v1, :cond_3

    iget-object p4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {p4, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->removeGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    goto :goto_0

    .line 900
    :cond_3
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-ne p4, v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-interface {v1, v0, p2, p3, v3}, Lorg/briarproject/bramble/db/Database;->setGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    .line 901
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 902
    new-instance p3, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;

    invoke-direct {p3, p2}, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 895
    :cond_5
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchGroupException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchGroupException;-><init>()V

    throw p1

    .line 893
    :cond_6
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1

    .line 890
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMessageShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 908
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 909
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->getMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    if-ne v1, v2, :cond_0

    .line 915
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->setMessageShared(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 916
    new-instance v0, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 913
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Shared undelivered message"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 911
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 908
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setMessageState(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 922
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 923
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v0

    .line 924
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2}, Lorg/briarproject/bramble/db/Database;->containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, v0, p2, p3}, Lorg/briarproject/bramble/db/Database;->setMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    .line 927
    new-instance v0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3}, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;ZLorg/briarproject/bramble/api/sync/ValidationManager$State;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void

    .line 925
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchMessageException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchMessageException;-><init>()V

    throw p1

    .line 922
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setReorderingWindow(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v0, p0

    .line 949
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    .line 950
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object v3

    .line 951
    iget-object v1, v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    move-object v5, p3

    invoke-interface {v1, v3, p3}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    iget-object v2, v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lorg/briarproject/bramble/db/Database;->setReorderingWindow(Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V

    return-void

    .line 952
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw v1

    .line 949
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setTransportKeysActive(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 959
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 960
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 961
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/Database;->setTransportKeysActive(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V

    return-void

    .line 962
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchTransportException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchTransportException;-><init>()V

    throw p1

    .line 959
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 133
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 134
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 136
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 137
    sget-object v2, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Waiting for read lock"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 140
    sget-object v2, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Waiting for write lock"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 143
    :goto_0
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/db/Transaction;

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1}, Lorg/briarproject/bramble/db/Database;->startTransaction()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/briarproject/bramble/api/db/Transaction;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 146
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 147
    :goto_1
    throw v0

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(Z",
            "Lorg/briarproject/bramble/api/db/DbRunnable<",
            "TE;>;)V^",
            "Lorg/briarproject/bramble/api/db/DbException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object p1

    .line 177
    :try_start_0
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/db/DbRunnable;->run(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 178
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 181
    throw p2
.end method

.method public transactionWithNullableResult(ZLorg/briarproject/bramble/api/db/NullableDbCallable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(Z",
            "Lorg/briarproject/bramble/api/db/NullableDbCallable<",
            "TR;TE;>;)TR;^",
            "Lorg/briarproject/bramble/api/db/DbException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object p1

    .line 203
    :try_start_0
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/db/NullableDbCallable;->call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p2

    .line 204
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 208
    throw p2
.end method

.method public transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(Z",
            "Lorg/briarproject/bramble/api/db/DbCallable<",
            "TR;TE;>;)TR;^",
            "Lorg/briarproject/bramble/api/db/DbException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object p1

    .line 189
    :try_start_0
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/db/DbCallable;->call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p2

    .line 190
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 194
    throw p2
.end method

.method public updateTransportKeys(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 969
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Transaction;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 970
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->unbox(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;

    move-result-object p1

    .line 971
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/transport/KeySet;

    .line 972
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/KeySet;->getTransportKeys()Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v1

    .line 973
    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v2, p1, v1}, Lorg/briarproject/bramble/db/Database;->containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->db:Lorg/briarproject/bramble/db/Database;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/db/Database;->updateTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeySet;)V

    goto :goto_0

    :cond_1
    return-void

    .line 969
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
