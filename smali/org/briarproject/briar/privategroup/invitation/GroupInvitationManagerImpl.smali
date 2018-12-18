.class Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;
.super Lorg/briarproject/briar/client/ConversationClientImpl;
.source "GroupInvitationManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;
.implements Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;
.implements Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field private final creatorEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/CreatorSession;",
            ">;"
        }
    .end annotation
.end field

.field private final inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/InviteeSession;",
            ">;"
        }
    .end annotation
.end field

.field private final messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

.field private final peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "Lorg/briarproject/briar/privategroup/invitation/PeerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

.field private final privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

.field private final sessionEncoder:Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;

.field private final sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/SessionParser;Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/briarproject/briar/client/ConversationClientImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;)V

    .line 91
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 92
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 93
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 94
    iput-object p8, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 95
    iput-object p9, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    .line 96
    iput-object p10, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 97
    iput-object p11, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionEncoder:Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;

    .line 98
    invoke-interface {p12}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;->createCreatorEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->creatorEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    .line 99
    invoke-interface {p12}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;->createInviteeEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    .line 100
    invoke-interface {p12}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;->createPeerEngine()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    return-void
.end method

.method private addingMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 504
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p3

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p3

    .line 505
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v0

    .line 506
    invoke-direct {p0, p1, p3, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-direct {v0, p3, p2}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 516
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-interface {p2, p1, v0}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p2

    .line 517
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    goto :goto_0

    .line 520
    :cond_0
    sget-object p2, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->MEMBER_ADDED:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    .line 521
    invoke-static {v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 520
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p2

    .line 522
    invoke-static {v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    .line 525
    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 527
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

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessageForStoringMetadata(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    .line 251
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;Z)V

    .line 252
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    return-object p1
.end method

.method private getPreferredVisibilities(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)Ljava/util/Map;
    .locals 4
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

    .line 607
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 608
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    invoke-interface {v0}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->getAllSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 610
    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p1

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 612
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 613
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    invoke-interface {v2, v1}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object v2

    .line 614
    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/Role;->CREATOR:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v2, v3, :cond_0

    .line 615
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 616
    invoke-interface {v2, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseCreatorSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 618
    :cond_0
    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/Role;->INVITEE:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v2, v3, :cond_1

    .line 619
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 620
    invoke-interface {v2, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseInviteeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;->getState()Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 622
    :cond_1
    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/Role;->PEER:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v2, v3, :cond_2

    .line 623
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 624
    invoke-interface {v2, p2, v1}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parsePeerSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object v1

    .line 625
    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;->getState()Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 627
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-object v0
.end method

.method private getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    invoke-interface {v0, p3}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 181
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 182
    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_1

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 185
    :cond_0
    new-instance p2, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 186
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p2, v0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$1;)V

    return-object p2

    .line 183
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method private getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 174
    new-instance v0, Lorg/briarproject/briar/api/client/SessionId;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    return-object v0
.end method

.method private handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    invoke-interface {v0, p4}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object v0

    .line 557
    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/Role;->CREATOR:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 559
    invoke-interface {v0, p3, p4}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseCreatorSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p3

    .line 560
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->creatorEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/Role;->INVITEE:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 563
    invoke-interface {v0, p3, p4}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseInviteeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p3

    .line 564
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 565
    :cond_1
    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/Role;->PEER:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v0, v1, :cond_2

    .line 566
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 567
    invoke-interface {v0, p3, p4}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parsePeerSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p3

    .line 568
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 570
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/briarproject/briar/privategroup/invitation/Session;",
            ">(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/briar/privategroup/invitation/LocalAction;",
            "TS;",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 357
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->INVITE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    if-eq p2, v0, :cond_3

    .line 359
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->JOIN:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    if-ne p2, v0, :cond_0

    .line 360
    invoke-interface {p4, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 361
    :cond_0
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    if-ne p2, v0, :cond_1

    .line 362
    invoke-interface {p4, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 363
    :cond_1
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->MEMBER_ADDED:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    if-ne p2, v0, :cond_2

    .line 364
    invoke-interface {p4, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onMemberAddedAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 366
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 358
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private handleFirstMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 191
    invoke-virtual {p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 192
    invoke-virtual {p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getMessageType()Lorg/briarproject/briar/privategroup/invitation/MessageType;

    move-result-object v5

    .line 193
    sget-object p4, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne v5, p4, :cond_0

    .line 194
    new-instance v6, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    .line 195
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p4

    invoke-direct {v6, p4, v0}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 196
    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    sget-object p4, Lorg/briarproject/briar/privategroup/invitation/MessageType;->JOIN:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne v5, p4, :cond_1

    .line 198
    new-instance v6, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    .line 199
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p4

    invoke-direct {v6, p4, v0}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 200
    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 209
    invoke-virtual {p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getMessageType()Lorg/briarproject/briar/privategroup/invitation/MessageType;

    move-result-object v4

    .line 210
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    invoke-interface {p4, p5}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object p4

    .line 211
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/Role;->CREATOR:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne p4, v0, :cond_0

    .line 212
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 213
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p4, v0, p5}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseCreatorSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v5

    .line 214
    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->creatorEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 215
    :cond_0
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/Role;->INVITEE:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne p4, v0, :cond_1

    .line 216
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 217
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p4, v0, p5}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseInviteeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object v5

    .line 218
    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 219
    :cond_1
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/Role;->PEER:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne p4, v0, :cond_2

    .line 220
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 221
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p4, v0, p5}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parsePeerSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object v5

    .line 222
    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;)Lorg/briarproject/briar/privategroup/invitation/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/briarproject/briar/privategroup/invitation/Session;",
            ">(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "Lorg/briarproject/bramble/api/data/BdfList;",
            "Lorg/briarproject/briar/privategroup/invitation/MessageType;",
            "TS;",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine<",
            "TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 231
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne p4, v0, :cond_0

    .line 232
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->parseInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;

    move-result-object p2

    .line 233
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/InviteMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 234
    :cond_0
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/MessageType;->JOIN:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne p4, v0, :cond_1

    .line 235
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->parseJoinMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/JoinMessage;

    move-result-object p2

    .line 236
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onJoinMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/JoinMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 237
    :cond_1
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/MessageType;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne p4, v0, :cond_2

    .line 238
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->parseLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;

    move-result-object p2

    .line 239
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/LeaveMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 240
    :cond_2
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/MessageType;->ABORT:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne p4, v0, :cond_3

    .line 241
    iget-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/privategroup/invitation/AbortMessage;

    move-result-object p2

    .line 242
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Lorg/briarproject/briar/privategroup/invitation/AbortMessage;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    return-object p1

    .line 244
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$gDS9XEbP-ig_dwR00I94xY-g5cY(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->onPrivateGroupClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method

.method private onPrivateGroupClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 589
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    .line 590
    invoke-interface {v0, p1, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object v0

    .line 592
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getPreferredVisibilities(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)Ljava/util/Map;

    move-result-object v1

    .line 593
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/sync/Group;

    .line 594
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    if-nez v3, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    invoke-static {v3, p3}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->min(Lorg/briarproject/bramble/api/sync/Group$Visibility;Lorg/briarproject/bramble/api/sync/Group$Visibility;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v3

    .line 598
    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    .line 601
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private parseGroupInvitationItem(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {v0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;

    move-result-object p1

    .line 487
    iget-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 488
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getSalt()[B

    move-result-object p1

    .line 487
    invoke-interface {p3, v0, v1, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object p1

    .line 489
    new-instance p3, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    invoke-direct {p3, p1, p2}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;-><init>(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/bramble/api/contact/Contact;)V

    return-object p3
.end method

.method private parseInvitationRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 407
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v12

    .line 409
    iget-object v2, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    move-object/from16 v4, p3

    invoke-interface {v2, v1, v4}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/privategroup/invitation/InviteMessage;

    move-result-object v2

    .line 410
    iget-object v3, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 411
    invoke-virtual {v2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    .line 412
    invoke-virtual {v2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getSalt()[B

    move-result-object v7

    .line 411
    invoke-interface {v3, v5, v6, v7}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v13

    .line 414
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->wasAccepted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 415
    invoke-virtual {v2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 416
    :goto_0
    new-instance v1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;

    .line 417
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->isLocal()Z

    move-result v8

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v9

    .line 418
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->isRead()Z

    move-result v11

    .line 419
    invoke-virtual {v2}, Lorg/briarproject/briar/privategroup/invitation/InviteMessage;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->isAvailableToAnswer()Z

    move-result v15

    move-object v3, v1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v16}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Ljava/lang/String;ZZ)V

    return-object v1
.end method

.method private parseInvitationResponse(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Z)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;
    .locals 14

    .line 425
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    move-object v1, p0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v11

    .line 426
    new-instance v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    .line 427
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->isLocal()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v8

    .line 428
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->isRead()Z

    move-result v10

    .line 429
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v13

    move-object v2, v0

    move-object/from16 v3, p2

    move-object v4, p1

    move/from16 v12, p5

    invoke-direct/range {v2 .. v13}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/sync/GroupId;)V

    return-object v0
.end method

.method private storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionEncoder:Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;

    invoke-interface {v0, p3}, Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;->encodeSession(Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 258
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-void
.end method


# virtual methods
.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 119
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 120
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v4, 0x0

    .line 119
    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-interface {v2, p1, v3, v5, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 123
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "contactId"

    .line 124
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {v2, p1, v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    sget-object v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v0, p1, v1, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroups(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/Group;

    .line 133
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->privateGroupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->isMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->addingMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 128
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public addingMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContactsByAuthorId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/Contact;

    .line 497
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->addingMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 111
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public getInvitations()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {v1}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->getInvitesAvailableToAnswerQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 437
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v2

    .line 440
    :try_start_0
    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/contact/Contact;

    .line 441
    invoke-virtual {p0, v4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v5

    invoke-virtual {v5}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    .line 442
    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 443
    invoke-interface {v6, v2, v5, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v5

    .line 445
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 446
    invoke-direct {p0, v2, v4, v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->parseGroupInvitationItem(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 450
    :try_start_1
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :goto_1
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 453
    throw v0
.end method

.method public getMessageHeaders(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;
    .locals 10
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

    .line 374
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    .line 375
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {v1}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->getMessagesVisibleInUiQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 378
    invoke-interface {v2, p1, v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v1

    .line 379
    new-instance v7, Ljava/util/ArrayList;

    .line 380
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 383
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-interface {v2, v1}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;

    move-result-object v5

    .line 385
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, p2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageStatus(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;

    move-result-object v6

    .line 386
    invoke-virtual {v5}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getMessageType()Lorg/briarproject/briar/privategroup/invitation/MessageType;

    move-result-object v1

    .line 387
    sget-object v2, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne v1, v2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    .line 388
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->parseInvitationRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_1
    sget-object v2, Lorg/briarproject/briar/privategroup/invitation/MessageType;->JOIN:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne v1, v2, :cond_2

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v9

    .line 391
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->parseInvitationResponse(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Z)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_2
    sget-object v2, Lorg/briarproject/briar/privategroup/invitation/MessageType;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    if-ne v1, v2, :cond_0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v9

    .line 394
    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->parseInvitationResponse(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Z)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v7

    :catch_0
    move-exception p1

    .line 400
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method getPrivateGroupClientVersioningHook()Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;
    .locals 1

    .line 583
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/-$$Lambda$GroupInvitationManagerImpl$gDS9XEbP-ig_dwR00I94xY-g5cY;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/privategroup/invitation/-$$Lambda$GroupInvitationManagerImpl$gDS9XEbP-ig_dwR00I94xY-g5cY;-><init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;)V

    return-object v0
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->messageParser:Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    invoke-interface {v0, p4}, Lorg/briarproject/briar/privategroup/invitation/MessageParser;->parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p4

    invoke-direct {p0, p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p4

    .line 157
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object p4

    if-nez p4, :cond_0

    .line 162
    invoke-direct {p0, p1, p2, p3, v5}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleFirstMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p3

    .line 163
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/privategroup/invitation/MessageMetadata;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p3

    .line 166
    invoke-static {p4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    .line 169
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isInvitationAllowed(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 461
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    .line 462
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1

    .line 464
    :try_start_0
    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 465
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    sget-object v4, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v5, 0x0

    .line 464
    invoke-interface {v3, v1, p1, v4, v5}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object p1

    .line 467
    invoke-direct {p0, v1, v0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object p2

    .line 468
    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v3, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 470
    sget-object v3, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v3, :cond_0

    .line 480
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return v5

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return v2

    .line 474
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 475
    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseCreatorSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;->getState()Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object p1

    sget-object p2, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->START:Lorg/briarproject/briar/privategroup/invitation/CreatorState;
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 480
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 478
    :try_start_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    :goto_1
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 481
    throw p1
.end method

.method public onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method

.method public removingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public removingGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 534
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    .line 537
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    .line 539
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    .line 540
    invoke-direct {p0, p1, v1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    .line 544
    invoke-static {v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v4

    .line 543
    invoke-direct {p0, p1, v3, v1, v4}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->handleAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/LocalAction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object v1

    .line 546
    invoke-static {v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 549
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

    .line 307
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 311
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    .line 312
    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 315
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 316
    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseInviteeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 318
    iget-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-interface {p3, v0, p1}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    goto :goto_0

    .line 319
    :cond_0
    iget-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->inviteeEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-interface {p3, v0, p1}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    .line 321
    :goto_0
    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V

    .line 322
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    .line 313
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

    .line 324
    :try_start_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    :goto_1
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 327
    throw p1
.end method

.method public respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 301
    invoke-virtual {p2}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V

    return-void
.end method

.method public revealRelationship(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    .line 337
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 340
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 341
    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parsePeerSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    move-result-object p1

    .line 343
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->peerEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onJoinAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    .line 345
    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V

    .line 346
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    .line 338
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    :try_start_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :goto_0
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 351
    throw p1
.end method

.method public sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;J[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v1, p0

    .line 265
    invoke-direct {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSessionId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v0

    .line 266
    iget-object v2, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v2

    .line 269
    :try_start_0
    iget-object v3, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-object v4, p2

    invoke-interface {v3, v2, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v3

    .line 270
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 271
    invoke-direct {p0, v2, v3, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-object v4, p1

    invoke-direct {v0, v3, p1}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;)V

    .line 278
    invoke-direct {p0, v2, v3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    move-object v6, v0

    move-object v0, v3

    goto :goto_0

    .line 281
    :cond_0
    iget-object v4, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->sessionParser:Lorg/briarproject/briar/privategroup/invitation/SessionParser;

    .line 282
    invoke-static {v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/briarproject/briar/privategroup/invitation/SessionParser;->parseCreatorSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    move-result-object v3

    .line 283
    invoke-static {v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object v6, v3

    .line 286
    :goto_0
    iget-object v4, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->creatorEngine:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;

    move-object v5, v2

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngine;->onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/privategroup/invitation/Session;Ljava/lang/String;J[B)Lorg/briarproject/briar/privategroup/invitation/Session;

    move-result-object v3

    check-cast v3, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    .line 289
    invoke-direct {p0, v2, v0, v3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/privategroup/invitation/Session;)V

    .line 290
    iget-object v0, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 292
    :try_start_1
    new-instance v3, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :goto_1
    iget-object v3, v1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 295
    throw v0
.end method
