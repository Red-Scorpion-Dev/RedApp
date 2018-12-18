.class abstract Lorg/briarproject/briar/sharing/SharingManagerImpl;
.super Lorg/briarproject/briar/client/ConversationClientImpl;
.source "SharingManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;
.implements Lorg/briarproject/briar/api/sharing/SharingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Lorg/briarproject/briar/client/ConversationClientImpl;",
        "Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;",
        "Lorg/briarproject/bramble/api/sync/Client;",
        "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;",
        "Lorg/briarproject/briar/api/sharing/SharingManager<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field private final engine:Lorg/briarproject/briar/sharing/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "TS;*>;"
        }
    .end annotation
.end field

.field private final messageParser:Lorg/briarproject/briar/sharing/MessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final sessionEncoder:Lorg/briarproject/briar/sharing/SessionEncoder;

.field private final sessionParser:Lorg/briarproject/briar/sharing/SessionParser;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "TS;>;",
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            "Lorg/briarproject/briar/sharing/SessionParser;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "TS;>;",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "TS;*>;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p4, p8}, Lorg/briarproject/briar/client/ConversationClientImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;)V

    .line 77
    iput-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 78
    iput-object p5, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    .line 79
    iput-object p6, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionEncoder:Lorg/briarproject/briar/sharing/SessionEncoder;

    .line 80
    iput-object p7, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    .line 81
    iput-object p9, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 82
    iput-object p10, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    .line 83
    iput-object p11, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    return-void
.end method

.method private canBeShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 457
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v2

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getShareableMajorVersion()I

    move-result v3

    .line 456
    invoke-interface {v0, p1, v1, v2, v3}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v0

    .line 458
    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 459
    :cond_0
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p3

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p3

    .line 460
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    .line 462
    :try_start_0
    invoke-direct {p0, p1, p3, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 466
    :cond_1
    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    .line 467
    invoke-static {p1}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/briarproject/briar/sharing/SessionParser;->parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    .line 468
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/State;->canInvite()Z

    move-result p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 470
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessageForStoringMetadata(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    .line 243
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;Z)V

    .line 244
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    return-object p1
.end method

.method private getPreferredVisibilities(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 529
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    invoke-interface {v0}, Lorg/briarproject/briar/sharing/SessionParser;->getAllSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 531
    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p1

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 534
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    invoke-interface {v2, p2, v1}, Lorg/briarproject/briar/sharing/SessionParser;->parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    invoke-interface {v0, p3}, Lorg/briarproject/briar/sharing/SessionParser;->getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 194
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 195
    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p1

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 198
    :cond_0
    new-instance p2, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 199
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p2, v0, p1, p3}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/sharing/SharingManagerImpl$1;)V

    return-object p2

    .line 196
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method private getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 187
    new-instance v0, Lorg/briarproject/briar/api/client/SessionId;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    return-object v0
.end method

.method private handleFirstMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/sharing/MessageMetadata;)Lorg/briarproject/briar/sharing/Session;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 204
    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 205
    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->getMessageType()Lorg/briarproject/briar/sharing/MessageType;

    move-result-object v1

    .line 206
    sget-object v2, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    if-ne v1, v2, :cond_0

    .line 207
    new-instance v1, Lorg/briarproject/briar/sharing/Session;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 208
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionEncoder:Lorg/briarproject/briar/sharing/SessionEncoder;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/sharing/SessionEncoder;->encodeSession(Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 209
    invoke-direct/range {v2 .. v7}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 218
    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->getMessageType()Lorg/briarproject/briar/sharing/MessageType;

    move-result-object p4

    .line 219
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Lorg/briarproject/briar/sharing/SessionParser;->parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p5

    .line 220
    sget-object v0, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    if-ne p4, v0, :cond_0

    .line 221
    iget-object p4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/sharing/MessageParser;->parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/InviteMessage;

    move-result-object p2

    .line 222
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, p1, p5, p2}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 223
    :cond_0
    sget-object v0, Lorg/briarproject/briar/sharing/MessageType;->ACCEPT:Lorg/briarproject/briar/sharing/MessageType;

    if-ne p4, v0, :cond_1

    .line 224
    iget-object p4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/sharing/MessageParser;->parseAcceptMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/AcceptMessage;

    move-result-object p2

    .line 225
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, p1, p5, p2}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 226
    :cond_1
    sget-object v0, Lorg/briarproject/briar/sharing/MessageType;->DECLINE:Lorg/briarproject/briar/sharing/MessageType;

    if-ne p4, v0, :cond_2

    .line 227
    iget-object p4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/sharing/MessageParser;->parseDeclineMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/DeclineMessage;

    move-result-object p2

    .line 228
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, p1, p5, p2}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/DeclineMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 229
    :cond_2
    sget-object v0, Lorg/briarproject/briar/sharing/MessageType;->LEAVE:Lorg/briarproject/briar/sharing/MessageType;

    if-ne p4, v0, :cond_3

    .line 230
    iget-object p4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/sharing/MessageParser;->parseLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/LeaveMessage;

    move-result-object p2

    .line 231
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, p1, p5, p2}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 232
    :cond_3
    sget-object v0, Lorg/briarproject/briar/sharing/MessageType;->ABORT:Lorg/briarproject/briar/sharing/MessageType;

    if-ne p4, v0, :cond_4

    .line 233
    iget-object p4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/sharing/MessageParser;->parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/sharing/AbortMessage;

    move-result-object p2

    .line 234
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, p1, p5, p2}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AbortMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 236
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$NKY5g5hAmRyT-lXtkip2qh9ow6M(Lorg/briarproject/briar/sharing/SharingManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->onShareableClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method

.method private onShareableClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 512
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getShareableMajorVersion()I

    move-result v2

    .line 511
    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object v0

    .line 513
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getPreferredVisibilities(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)Ljava/util/Map;

    move-result-object v1

    .line 514
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/Group;

    .line 515
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-nez v3, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {v3, p3}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->min(Lorg/briarproject/bramble/api/sync/Group$Visibility;Lorg/briarproject/bramble/api/sync/Group$Visibility;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v3

    .line 519
    iget-object v4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v5

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v4, p1, v5, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 522
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private parseInvitationRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;)Lorg/briarproject/briar/api/conversation/ConversationRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/sharing/MessageMetadata;",
            "Lorg/briarproject/bramble/api/sync/MessageStatus;",
            ")",
            "Lorg/briarproject/briar/api/conversation/ConversationRequest<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {v0, p1, p3}, Lorg/briarproject/briar/sharing/MessageParser;->getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/sharing/InviteMessage;

    move-result-object v6

    .line 363
    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->wasAccepted()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 364
    invoke-virtual {v6}, Lorg/briarproject/briar/sharing/InviteMessage;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v9, 0x0

    .line 365
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    .line 366
    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->isLocal()Z

    move-result v2

    invoke-virtual {p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v3

    .line 367
    invoke-virtual {p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v4

    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->isRead()Z

    move-result v5

    .line 368
    invoke-virtual {p4}, Lorg/briarproject/briar/sharing/MessageMetadata;->isAvailableToAnswer()Z

    move-result v8

    move-object v7, p2

    .line 366
    invoke-interface/range {v1 .. v9}, Lorg/briarproject/briar/sharing/InvitationFactory;->createInvitationRequest(ZZZZLorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/briar/api/conversation/ConversationRequest;

    move-result-object p1

    return-object p1
.end method

.method private parseInvitationResponse(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Z)Lorg/briarproject/briar/api/sharing/InvitationResponse;
    .locals 12

    move-object v0, p0

    .line 374
    iget-object v1, v0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    .line 375
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/MessageMetadata;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/MessageMetadata;->isLocal()Z

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v7

    .line 376
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v8

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/MessageMetadata;->isRead()Z

    move-result v9

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/MessageMetadata;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v11

    move-object v2, p2

    move-object v3, p1

    move/from16 v10, p5

    .line 374
    invoke-interface/range {v1 .. v11}, Lorg/briarproject/briar/sharing/InvitationFactory;->createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/sharing/InvitationResponse;

    move-result-object v1

    return-object v1
.end method

.method private storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/Session;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionEncoder:Lorg/briarproject/briar/sharing/SessionEncoder;

    invoke-interface {v0, p3}, Lorg/briarproject/briar/sharing/SessionEncoder;->encodeSession(Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-void
.end method


# virtual methods
.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 110
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 111
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v3

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getMajorVersion()I

    move-result v4

    .line 110
    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 114
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "contactId"

    .line 115
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public canBeShared(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 445
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->canBeShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z

    move-result p1

    .line 446
    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 450
    throw p1
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getMajorVersion()I

    move-result v2

    .line 97
    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 102
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract getClientId()Lorg/briarproject/bramble/api/sync/ClientId;
.end method

.method public getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getMajorVersion()I

    move-result v2

    .line 131
    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public getInvitations()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {v1}, Lorg/briarproject/briar/sharing/MessageParser;->getInvitesAvailableToAnswerQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 384
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 385
    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v3

    .line 388
    :try_start_0
    iget-object v4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v4, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/briarproject/bramble/api/contact/Contact;

    .line 389
    invoke-virtual {p0, v5}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v6

    invoke-virtual {v6}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    .line 390
    iget-object v7, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 391
    invoke-interface {v7, v3, v6, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v6

    .line 393
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 394
    iget-object v8, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    .line 395
    invoke-interface {v8, v3, v7}, Lorg/briarproject/briar/sharing/MessageParser;->getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/sharing/InviteMessage;

    move-result-object v7

    .line 396
    invoke-virtual {v7}, Lorg/briarproject/briar/sharing/InviteMessage;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object v7

    .line 397
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 398
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 407
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 408
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/briar/api/sharing/Shareable;

    .line 409
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 410
    iget-object v5, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v4}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v5

    .line 411
    new-instance v6, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;

    invoke-direct {v6, v4, v5, v2}, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;-><init>(Lorg/briarproject/briar/api/sharing/Shareable;ZLjava/util/Collection;)V

    .line 413
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 415
    :cond_3
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 418
    :try_start_1
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :goto_2
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 421
    throw v0
.end method

.method protected abstract getMajorVersion()I
.end method

.method public getMessageHeaders(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
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

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v1

    .line 328
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v7

    .line 329
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {v1}, Lorg/briarproject/briar/sharing/MessageParser;->getMessagesVisibleInUiQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 331
    invoke-interface {v2, p1, v7, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v1

    .line 332
    new-instance v8, Ljava/util/ArrayList;

    .line 333
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 336
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    .line 337
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-interface {v2, v1}, Lorg/briarproject/briar/sharing/MessageParser;->parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/MessageMetadata;

    move-result-object v5

    .line 338
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, p2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageStatus(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;

    move-result-object v6

    .line 339
    invoke-virtual {v5}, Lorg/briarproject/briar/sharing/MessageMetadata;->getMessageType()Lorg/briarproject/briar/sharing/MessageType;

    move-result-object v1

    .line 340
    sget-object v2, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    if-ne v1, v2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 341
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->parseInvitationRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;)Lorg/briarproject/briar/api/conversation/ConversationRequest;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    sget-object v2, Lorg/briarproject/briar/sharing/MessageType;->ACCEPT:Lorg/briarproject/briar/sharing/MessageType;

    if-ne v1, v2, :cond_2

    const/4 v10, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v10

    .line 344
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->parseInvitationResponse(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Z)Lorg/briarproject/briar/api/sharing/InvitationResponse;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_2
    sget-object v2, Lorg/briarproject/briar/sharing/MessageType;->DECLINE:Lorg/briarproject/briar/sharing/MessageType;

    if-ne v1, v2, :cond_0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, v7

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v10

    .line 347
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->parseInvitationResponse(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Z)Lorg/briarproject/briar/api/sharing/InvitationResponse;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v8

    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
.end method

.method getShareableClientVersioningHook()Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;
    .locals 1

    .line 504
    new-instance v0, Lorg/briarproject/briar/sharing/-$$Lambda$SharingManagerImpl$NKY5g5hAmRyT-lXtkip2qh9ow6M;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/sharing/-$$Lambda$SharingManagerImpl$NKY5g5hAmRyT-lXtkip2qh9ow6M;-><init>(Lorg/briarproject/briar/sharing/SharingManagerImpl;)V

    return-object v0
.end method

.method protected abstract getShareableMajorVersion()I
.end method

.method public getSharedWith(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
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

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1

    .line 430
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/contact/Contact;

    .line 431
    iget-object v4, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v5

    invoke-interface {v4, v1, v5, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v4

    sget-object v5, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-ne v4, v5, :cond_0

    .line 432
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 434
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 437
    throw p1
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    invoke-interface {v0, p4}, Lorg/briarproject/briar/sharing/MessageParser;->parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/MessageMetadata;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Lorg/briarproject/briar/sharing/MessageMetadata;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p4

    invoke-direct {p0, p4}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p4

    .line 142
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    move-result-object p4

    if-nez p4, :cond_0

    .line 147
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->handleFirstMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/sharing/MessageMetadata;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p3

    .line 148
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p4}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/sharing/MessageMetadata;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p3

    .line 151
    invoke-static {p4}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    .line 154
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/Session;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method

.method preShareGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 168
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    .line 167
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 175
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 176
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object v3

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getShareableMajorVersion()I

    move-result v4

    .line 175
    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 180
    new-instance p2, Lorg/briarproject/briar/sharing/Session;

    sget-object v2, Lorg/briarproject/briar/sharing/State;->SHARING:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    .line 182
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    .line 183
    invoke-direct {p0, p1, p3, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/Session;)V

    return-void
.end method

.method public removingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method removingShareable(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/sharing/Shareable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 475
    invoke-interface {p2}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    .line 478
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    .line 480
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    .line 481
    invoke-direct {p0, p1, v1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    .line 485
    invoke-static {v2}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/briarproject/briar/sharing/SessionParser;->parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object v1

    .line 486
    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {v3, p1, v1}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object v1

    .line 488
    invoke-static {v2}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/Session;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 491
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    .line 305
    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 308
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    .line 309
    invoke-static {p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/briar/sharing/SessionParser;->parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 311
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, v0, p1}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_0
    iget-object p3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    invoke-interface {p3, v0, p1}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    .line 314
    :goto_0
    invoke-static {p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/Session;)V

    .line 315
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    .line 306
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 317
    :try_start_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    :goto_1
    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 320
    throw p1
.end method

.method public respondToInvitation(Lorg/briarproject/briar/api/sharing/Shareable;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 294
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-interface {p1}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V

    return-void
.end method

.method public sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1

    .line 259
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    .line 260
    invoke-direct {p0, v1, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->canBeShared(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z

    move-result v2
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 287
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 265
    invoke-direct {p0, v1, p2, v0}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Lorg/briarproject/briar/sharing/Session;

    invoke-direct {v0, p2, p1}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 272
    invoke-direct {p0, v1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    move-object v5, v0

    goto :goto_0

    .line 275
    :cond_1
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->sessionParser:Lorg/briarproject/briar/sharing/SessionParser;

    .line 276
    invoke-static {v0}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Lorg/briarproject/briar/sharing/SessionParser;->parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    .line 277
    invoke-static {v0}, Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/sharing/SharingManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    move-object v5, p1

    move-object p1, p2

    .line 280
    :goto_0
    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->engine:Lorg/briarproject/briar/sharing/ProtocolEngine;

    move-object v4, v1

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lorg/briarproject/briar/sharing/ProtocolEngine;->onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/briar/sharing/Session;

    move-result-object p2

    .line 282
    invoke-direct {p0, v1, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/sharing/Session;)V

    .line 283
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    iget-object p1, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 285
    :try_start_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :goto_1
    iget-object p2, p0, Lorg/briarproject/briar/sharing/SharingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 288
    throw p1
.end method
