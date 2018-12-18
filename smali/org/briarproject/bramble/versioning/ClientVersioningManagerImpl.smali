.class Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;
.super Ljava/lang/Object;
.source "ClientVersioningManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/lifecycle/Service;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;,
        Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;,
        Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;,
        Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;,
        Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final hooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;",
            ">;"
        }
    .end annotation
.end field

.field private final localGroup:Lorg/briarproject/bramble/api/sync/Group;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clients:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->hooks:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 73
    iput-object p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 74
    iput-object p3, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 75
    iput-object p4, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 76
    sget-object p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    return-void
.end method

.method private callVisibilityHook(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->hooks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;

    if-eqz p2, :cond_0

    .line 468
    invoke-interface {p2, p1, p3, p4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;->onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    :cond_0
    return-void
.end method

.method private callVisibilityHooks(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 453
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 454
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 455
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    .line 456
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-nez v3, :cond_1

    .line 458
    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->callVisibilityHook(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 459
    invoke-virtual {v2, v3}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    :cond_2
    invoke-direct {p0, p1, v1, p2, v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->callVisibilityHook(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private clientVersionsUpdated(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 298
    :try_start_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->findLatestUpdates(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;

    move-result-object v1

    .line 301
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 302
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v2

    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object v2

    .line 303
    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object v3

    .line 304
    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)J

    move-result-wide v4

    .line 307
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v2

    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object v2

    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object v2

    .line 311
    :goto_0
    invoke-direct {p0, v3, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->updateStatesFromLocalVersions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 312
    invoke-direct {p0, p3, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->updateStatesFromRemoteStates(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 314
    invoke-interface {v3, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    iget-object v6, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v7

    invoke-static {v7}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 317
    iget-object v6, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v6, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 319
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v8

    const-wide/16 v0, 0x1

    add-long v10, v4, v0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p3

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->storeUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/List;J)V

    .line 324
    :cond_1
    invoke-direct {p0, v3, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getVisibilities(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 326
    invoke-direct {p0, p3, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getVisibilities(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    .line 328
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->callVisibilityHooks(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .line 301
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 330
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private encodeClientState(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 3

    const/4 v0, 0x4

    .line 430
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 431
    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->getMajorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 430
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method private encodeClientVersion(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 3

    const/4 v0, 0x3

    .line 246
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 247
    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->getMajorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$800(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 246
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method private encodeClientVersions(Ljava/util/List;)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;)",
            "Lorg/briarproject/bramble/api/data/BdfList;"
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->encodeClientVersion(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private encodeUpdate(Ljava/util/List;J)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;J)",
            "Lorg/briarproject/bramble/api/data/BdfList;"
        }
    .end annotation

    .line 424
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->encodeClientState(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 426
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method private findLatestUpdates(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 342
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    const-string v4, "version"

    .line 346
    invoke-virtual {v3, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "local"

    .line 347
    invoke-virtual {v3, v6}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    new-instance v0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, v2, v4, v5, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    goto :goto_0

    .line 349
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v1, v2, v4, v5, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    goto :goto_0

    .line 351
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;

    invoke-direct {p1, v0, v1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;-><init>(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    return-object p1
.end method

.method private getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 483
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 484
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    const-string v0, "contactId"

    .line 485
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    .line 486
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-direct {v1, p2}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 488
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 335
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method private getVisibilities(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    .line 440
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    if-nez v2, :cond_1

    .line 441
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 442
    :cond_1
    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 444
    :cond_2
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public static synthetic lambda$startService$0(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;Ljava/util/List;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p2, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->updateClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/Contact;

    .line 129
    invoke-direct {p0, p2, v1, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientVersionsUpdated(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->parseClientVersions(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 275
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 356
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->parseUpdate(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 358
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private parseClientState(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 382
    new-instance v1, Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 383
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v2

    const/4 v0, 0x2

    .line 384
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    const/4 v0, 0x3

    .line 385
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getBoolean(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 386
    new-instance p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;IIZLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    return-object p1
.end method

.method private parseClientStates(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/data/BdfList;",
            ")",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v1

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    .line 375
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->parseClientState(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private parseClientVersions(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/data/BdfList;",
            ")",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v0

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 284
    invoke-virtual {p1, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    .line 285
    new-instance v5, Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v4, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 286
    invoke-virtual {v4, v6}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    const/4 v7, 0x2

    .line 287
    invoke-virtual {v4, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 288
    new-instance v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v6, v4, v8}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private parseUpdate(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 363
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->parseClientStates(Lorg/briarproject/bramble/api/data/BdfList;)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->parseUpdateVersion(Lorg/briarproject/bramble/api/data/BdfList;)J

    move-result-wide v1

    .line 365
    new-instance p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;-><init>(Ljava/util/List;JLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    return-object p1
.end method

.method private parseUpdateVersion(Lorg/briarproject/bramble/api/data/BdfList;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private storeClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->encodeClientVersions(Ljava/util/List;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 231
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    .line 233
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 235
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private storeFirstUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    .line 475
    new-instance v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-static {v0}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v2

    invoke-static {v0}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$800(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v4, v5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 478
    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->storeUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/List;J)V

    return-void
.end method

.method private storeUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 411
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->encodeUpdate(Ljava/util/List;J)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p3

    .line 412
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 413
    iget-object v2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, p2, v0, v1, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    .line 414
    new-instance p3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v0, "version"

    .line 415
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "local"

    const/4 p5, 0x1

    .line 416
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object p4, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p4, p1, p2, p3, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 419
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private updateClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageIds(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->storeClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    return v2

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 262
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 263
    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/List;

    move-result-object v1

    .line 264
    invoke-interface {v1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 265
    :cond_1
    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 266
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->storeClientVersions(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    return v2

    .line 261
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method private updateStatesFromLocalVersions(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 397
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 398
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    .line 400
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    if-eqz v2, :cond_1

    .line 401
    invoke-static {v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 402
    :goto_2
    new-instance v3, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v4

    .line 403
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->access$800(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v2, v5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    .line 402
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private updateStatesFromRemoteStates(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 495
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 497
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    .line 499
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 500
    new-instance v3, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    move-result-object v4

    .line 501
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->access$1700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v2, v5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    .line 500
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2
.end method


# virtual methods
.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 146
    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    sget-object v4, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 148
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "contactId"

    .line 149
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {p2, p1, v2, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clients:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 158
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->storeFirstUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 118
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    .line 93
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    .line 96
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->findLatestUpdates(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;

    move-result-object p2

    .line 98
    invoke-static {p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    invoke-static {p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object p1

    .line 100
    :cond_1
    invoke-static {p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object v0

    .line 101
    invoke-static {p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object p2

    invoke-static {p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object p1

    .line 103
    invoke-static {v0}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getVisibilities(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 104
    new-instance p2, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {p2, p3, p4}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    .line 106
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-nez p1, :cond_2

    .line 107
    sget-object p1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    :cond_2
    return-object p1

    .line 98
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 171
    :try_start_0
    iget-object v1, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    move-object/from16 v8, p2

    invoke-interface {v1, v8}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->parseUpdate(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object v9

    .line 173
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)J

    move-result-wide v1

    .line 175
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-direct {v7, v0, v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->findLatestUpdates(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;

    move-result-object v3

    .line 177
    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v4

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    .line 178
    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v4

    invoke-static {v4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$600(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 179
    iget-object v1, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 180
    iget-object v1, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return v10

    .line 184
    :cond_0
    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 185
    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object v1

    .line 186
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object v11

    .line 187
    invoke-static {v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)J

    move-result-wide v1

    .line 190
    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v4

    if-nez v4, :cond_1

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_0
    move-object v12, v4

    goto :goto_1

    .line 194
    :cond_1
    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v4

    invoke-static {v4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-direct {v7, v0, v4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->loadUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;

    move-result-object v4

    invoke-static {v4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;

    move-result-object v4

    .line 196
    iget-object v5, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v6

    invoke-static {v6}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 197
    iget-object v5, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v6

    invoke-static {v6}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    goto :goto_0

    .line 200
    :goto_1
    invoke-direct {v7, v11, v9}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->updateStatesFromRemoteStates(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 202
    invoke-interface {v11, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 204
    iget-object v4, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v5

    invoke-static {v5}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 205
    iget-object v4, v7, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    move-result-object v3

    invoke-static {v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    const-wide/16 v4, 0x1

    add-long v14, v1, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v13

    move-wide v5, v14

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->storeUpdate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Ljava/util/List;J)V

    .line 212
    :cond_2
    invoke-direct {v7, v11, v12}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getVisibilities(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 214
    invoke-direct {v7, v13, v9}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getVisibilities(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 216
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-direct {v7, v0, v3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v3

    .line 218
    invoke-direct {v7, v0, v3, v1, v2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->callVisibilityHooks(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3
    return v10

    .line 184
    :cond_4
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V
    .locals 2

    .line 83
    new-instance v0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    .line 84
    iget-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clients:Ljava/util/List;

    new-instance p2, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;ILorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->hooks:Ljava/util/Map;

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-direct {p0, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public startService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->clients:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x0

    new-instance v3, Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;

    invoke-direct {v3, p0, v0}, Lorg/briarproject/bramble/versioning/-$$Lambda$ClientVersioningManagerImpl$zsNZC8qaxutilGgxFGf38TT-J34;-><init>(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lorg/briarproject/bramble/api/lifecycle/ServiceException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/lifecycle/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopService()V
    .locals 0

    return-void
.end method
