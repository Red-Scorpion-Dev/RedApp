.class Lorg/briarproject/briar/messaging/ConversationManagerImpl;
.super Ljava/lang/Object;
.source "ConversationManagerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/conversation/ConversationManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 31
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->clients:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getGroupCount(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->clients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;

    .line 63
    invoke-interface {v6, v0, p1}, Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;->getGroupCount(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object v6

    .line 64
    invoke-virtual {v6}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getMsgCount()I

    move-result v7

    add-int/2addr v2, v7

    .line 65
    invoke-virtual {v6}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getUnreadCount()I

    move-result v7

    add-int/2addr v3, v7

    .line 66
    invoke-virtual {v6}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_0

    .line 67
    invoke-virtual {v6}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide v4

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 73
    new-instance p1, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    invoke-direct {p1, v2, v3, v4, v5}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;-><init>(IIJ)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 71
    iget-object v1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 72
    throw p1
.end method

.method public getMessageHeaders(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1

    .line 46
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->clients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;

    .line 47
    invoke-interface {v3, v1, p1}, Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;->getMessageHeaders(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object p1, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 52
    throw p1
.end method

.method public registerConversationClient(Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/messaging/ConversationManagerImpl;->clients:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Client is already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
