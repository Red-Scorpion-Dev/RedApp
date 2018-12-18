.class abstract Lorg/briarproject/briar/sharing/ProtocolEngineImpl;
.super Ljava/lang/Object;
.source "ProtocolEngineImpl.java"

# interfaces
.implements Lorg/briarproject/briar/sharing/ProtocolEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/sharing/ProtocolEngine<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field protected final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

.field protected final messageParser:Lorg/briarproject/briar/sharing/MessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

.field private final shareableClientId:Lorg/briarproject/bramble/api/sync/ClientId;

.field private final shareableClientVersion:I


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/ClientId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "TS;>;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/system/Clock;",
            "Lorg/briarproject/bramble/api/sync/ClientId;",
            "I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 69
    iput-object p2, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 70
    iput-object p3, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 71
    iput-object p4, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 72
    iput-object p5, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    .line 73
    iput-object p6, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 74
    iput-object p7, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 75
    iput-object p8, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->shareableClientId:Lorg/briarproject/bramble/api/sync/ClientId;

    .line 76
    iput p9, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->shareableClientVersion:I

    return-void
.end method

.method private abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 517
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markInvitesUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)V

    .line 519
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isSubscribed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    :cond_0
    return-void
.end method

.method private abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 525
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)V

    .line 527
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 529
    new-instance v10, Lorg/briarproject/briar/sharing/Session;

    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 530
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object v10
.end method

.method private getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 623
    new-instance p2, Lorg/briarproject/bramble/api/contact/ContactId;

    const-string v0, "contactId"

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    return-object p2
.end method

.method private getLocalTimestamp(Lorg/briarproject/briar/sharing/Session;)J
    .locals 6

    .line 634
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 635
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v2

    .line 636
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v4

    .line 635
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 634
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 2

    .line 628
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 630
    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private isSubscribed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 548
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p1

    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private markInvitationAccepted(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 600
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 601
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/sharing/MessageEncoder;->setInvitationAccepted(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 603
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 605
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private markInvitesUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 535
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    .line 537
    invoke-interface {v1, v0}, Lorg/briarproject/briar/sharing/MessageParser;->getInvitesAvailableToAnswerQuery(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 540
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 539
    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p2

    .line 541
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    const/4 v1, 0x0

    .line 542
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 578
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 579
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    invoke-interface {v1, v0, p3}, Lorg/briarproject/briar/sharing/MessageEncoder;->setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 581
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p3, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 583
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 589
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 590
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/sharing/MessageEncoder;->setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 592
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 594
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private onLocalAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 150
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 154
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markInvitationAccepted(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 156
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v2, p1, v1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 161
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->addShareable(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 163
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v3, Lorg/briarproject/briar/sharing/State;->SHARING:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    .line 169
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v8

    .line 170
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v10

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1

    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private onLocalDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 209
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 213
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v3, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    .line 214
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v8

    .line 215
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v10

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private onLocalInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/briar/sharing/Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 99
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p3

    .line 101
    iget-object p4, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {p4, p1, p3}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 104
    :try_start_0
    sget-object p4, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, p4}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v1, Lorg/briarproject/briar/sharing/State;->REMOTE_INVITED:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 110
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 111
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v8

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 249
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 256
    new-instance v10, Lorg/briarproject/briar/sharing/Session;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 257
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    .line 258
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v8

    move-object v0, v10

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object v10

    :catch_0
    move-exception p1

    .line 251
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;Lorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 364
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 365
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 370
    :cond_1
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 372
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 373
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 372
    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 375
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 376
    invoke-virtual {p0, p3, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getInvitationResponseReceivedEvent(Lorg/briarproject/briar/sharing/AcceptMessage;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/event/Event;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 378
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 379
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AcceptMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v7

    .line 380
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v9

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method private onRemoteAcceptWhenInvited(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 386
    sget-object v0, Lorg/briarproject/briar/sharing/State;->SHARING:Lorg/briarproject/briar/sharing/State;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;Lorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p3

    .line 388
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    if-eq v0, v1, :cond_0

    .line 389
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    :cond_0
    return-object p3
.end method

.method private onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/DeclineMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 416
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 417
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 419
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 422
    :cond_1
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 424
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 425
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 424
    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 428
    :try_start_0
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 434
    invoke-virtual {p0, p3, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getInvitationResponseReceivedEvent(Lorg/briarproject/briar/sharing/DeclineMessage;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/event/Event;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 436
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v2, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 437
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/DeclineMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v7

    .line 438
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v9

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1

    :catch_0
    move-exception p1

    .line 430
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onRemoteInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;ZLorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/briar/sharing/Session;",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;Z",
            "Lorg/briarproject/briar/sharing/State;",
            ")",
            "Lorg/briarproject/briar/sharing/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 293
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 294
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 296
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 299
    :cond_1
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 300
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 302
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 303
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 302
    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 305
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0, p3, v0, p4, v1}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getInvitationRequestReceivedEvent(Lorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/bramble/api/event/Event;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 309
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 310
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v6

    .line 311
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v8

    move-object v0, p1

    move-object v1, p5

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method private onRemoteInviteWhenInvited(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/briar/sharing/Session;",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;)",
            "Lorg/briarproject/briar/sharing/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 317
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 318
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 320
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 323
    :cond_1
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 324
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markMessageAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 326
    iget-object v2, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 327
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v3, p1

    .line 326
    invoke-interface/range {v2 .. v7}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 329
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 331
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0, p3, v0, v1, v2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getInvitationRequestReceivedEvent(Lorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/bramble/api/event/Event;

    move-result-object v0

    .line 332
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 335
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v2, Lorg/briarproject/briar/sharing/State;->SHARING:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 336
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v7

    .line 337
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/InviteMessage;->getTimestamp()J

    move-result-wide v9

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method private onRemoteLeaveWhenInvited(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 466
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 469
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->markInvitesUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)V

    .line 471
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 472
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v6

    .line 473
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v8

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method private onRemoteLeaveWhenLocalLeft(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 479
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 482
    :cond_0
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 483
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v6

    .line 484
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v8

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method private onRemoteLeaveWhenSharing(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 490
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/LeaveMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->isInvalidDependency(Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 493
    :cond_0
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 494
    new-instance v1, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;

    .line 495
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/briarproject/briar/api/sharing/event/ContactLeftShareableEvent;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 497
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 499
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 501
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v2, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 502
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/LeaveMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLocalTimestamp()J

    move-result-wide v7

    .line 503
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getInviteTimestamp()J

    move-result-wide v9

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method private sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 557
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 558
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getLocalTimestamp(Lorg/briarproject/briar/sharing/Session;)J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 556
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 559
    sget-object v9, Lorg/briarproject/briar/sharing/MessageType;->ABORT:Lorg/briarproject/briar/sharing/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method private sendAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 179
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 180
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getLocalTimestamp(Lorg/briarproject/briar/sharing/Session;)J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 178
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeAcceptMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 181
    sget-object v9, Lorg/briarproject/briar/sharing/MessageType;->ACCEPT:Lorg/briarproject/briar/sharing/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method private sendDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 221
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 222
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getLocalTimestamp(Lorg/briarproject/briar/sharing/Session;)J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 220
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeDeclineMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 223
    sget-object v9, Lorg/briarproject/briar/sharing/MessageType;->DECLINE:Lorg/briarproject/briar/sharing/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method private sendInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/bramble/api/sync/Message;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v7, p0

    .line 116
    iget-object v0, v7, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 119
    :try_start_0
    iget-object v1, v7, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v13
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p2

    .line 123
    invoke-direct {p0, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getLocalTimestamp(Lorg/briarproject/briar/sharing/Session;)J

    move-result-wide v3

    move-wide/from16 v5, p4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 124
    iget-object v8, v7, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v9

    .line 125
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v12

    move-object/from16 v14, p3

    .line 124
    invoke-interface/range {v8 .. v14}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeInviteMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfList;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v8

    .line 126
    sget-object v4, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v8

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sendLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 264
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 265
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getLocalTimestamp(Lorg/briarproject/briar/sharing/Session;)J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 263
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeLeaveMessage(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 266
    sget-object v9, Lorg/briarproject/briar/sharing/MessageType;->LEAVE:Lorg/briarproject/briar/sharing/MessageType;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V

    return-object v0
.end method

.method private sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 567
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p3

    move-object v2, p4

    move v7, p5

    invoke-interface/range {v0 .. v9}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 570
    :try_start_0
    iget-object p4, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 p5, 0x1

    invoke-interface {p4, p1, p2, p3, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 572
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private setShareableVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 612
    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    iget-object v2, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->shareableClientId:Lorg/briarproject/bramble/api/sync/ClientId;

    iget v3, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->shareableClientVersion:I

    invoke-interface {v1, p1, v0, v2, v3}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 615
    invoke-static {p3, v1}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->min(Lorg/briarproject/bramble/api/sync/Group$Visibility;Lorg/briarproject/bramble/api/sync/Group$Visibility;)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object p3

    .line 616
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-interface {v1, p1, v0, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method


# virtual methods
.method protected abstract addShareable(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method abstract getInvitationRequestReceivedEvent(Lorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/bramble/api/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "ZZ)",
            "Lorg/briarproject/bramble/api/event/Event;"
        }
    .end annotation
.end method

.method abstract getInvitationResponseReceivedEvent(Lorg/briarproject/briar/sharing/AcceptMessage;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/event/Event;
.end method

.method abstract getInvitationResponseReceivedEvent(Lorg/briarproject/briar/sharing/DeclineMessage;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/event/Event;
.end method

.method protected abstract getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
.end method

.method public onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AbortMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 509
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)V

    .line 510
    new-instance p1, Lorg/briarproject/briar/sharing/Session;

    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 511
    invoke-virtual {p3}, Lorg/briarproject/briar/sharing/AbortMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object p1
.end method

.method public onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 133
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onLocalAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 141
    :pswitch_1
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 346
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 357
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 350
    :pswitch_0
    sget-object v0, Lorg/briarproject/briar/sharing/State;->LOCAL_LEFT:Lorg/briarproject/briar/sharing/State;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;Lorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 348
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteAcceptWhenInvited(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/AcceptMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 355
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 188
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 190
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onLocalDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_1
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/DeclineMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 399
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 409
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 402
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/DeclineMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 407
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInviteAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 82
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :pswitch_0
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    .line 84
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onLocalInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Ljava/lang/String;J)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/briar/sharing/Session;",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;)",
            "Lorg/briarproject/briar/sharing/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 273
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 285
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    const/4 v5, 0x0

    .line 280
    sget-object v6, Lorg/briarproject/briar/sharing/State;->LOCAL_LEFT:Lorg/briarproject/briar/sharing/State;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;ZLorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 278
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteInviteWhenInvited(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 283
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/4 v4, 0x1

    .line 276
    sget-object v5, Lorg/briarproject/briar/sharing/State;->LOCAL_INVITED:Lorg/briarproject/briar/sharing/State;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteInvite(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/InviteMessage;ZLorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onLeaveAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 230
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 234
    :pswitch_0
    sget-object v0, Lorg/briarproject/briar/sharing/State;->LOCAL_LEFT:Lorg/briarproject/briar/sharing/State;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 232
    :pswitch_1
    sget-object v0, Lorg/briarproject/briar/sharing/State;->REMOTE_HANGING:Lorg/briarproject/briar/sharing/State;

    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onLocalLeave(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/State;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    :pswitch_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onLeaveMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 447
    sget-object v0, Lorg/briarproject/briar/sharing/ProtocolEngineImpl$1;->$SwitchMap$org$briarproject$briar$sharing$State:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/Session;->getState()Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/sharing/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 459
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 451
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteLeaveWhenLocalLeft(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 453
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteLeaveWhenSharing(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 449
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->onRemoteLeaveWhenInvited(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;Lorg/briarproject/briar/sharing/LeaveMessage;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    .line 457
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;->abortWithMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/sharing/Session;)Lorg/briarproject/briar/sharing/Session;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
