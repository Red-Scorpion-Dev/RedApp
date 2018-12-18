.class Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;
.super Lorg/briarproject/briar/introduction/AbstractProtocolEngine;
.source "IntroducerProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/introduction/AbstractProtocolEngine<",
        "Lorg/briarproject/briar/introduction/IntroducerSession;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p9}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    return-void
.end method

.method private abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 557
    new-instance v0, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;-><init>(Lorg/briarproject/briar/api/client/SessionId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 560
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v0

    .line 561
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 562
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v1

    .line 563
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 565
    new-instance v6, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 566
    new-instance v7, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-direct {v7, v0, p1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 567
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 568
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p1
.end method

.method private getIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
    .locals 1

    .line 572
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, p2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    return-object p1

    .line 573
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, p2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 574
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    return-object p1

    .line 575
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J
    .locals 2

    .line 593
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLocalTimestamp()J

    move-result-wide v0

    .line 594
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide p1

    .line 593
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
    .locals 1

    .line 579
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, p2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    return-object p1

    .line 580
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, p2}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 581
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    return-object p1

    .line 582
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 589
    invoke-virtual {p0, p1, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result p1

    return p1
.end method

.method private onLocalRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v0

    .line 230
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v2

    .line 229
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 231
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 232
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v4

    .line 233
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v7, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p4

    move-object v8, p3

    .line 232
    invoke-virtual/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JLorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 234
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v4

    .line 235
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    iget-object v7, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 234
    invoke-virtual/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JLorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p3

    .line 237
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 238
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v1, p1, p3}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 240
    new-instance v7, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    invoke-direct {v7, p1, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 241
    new-instance v8, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    invoke-direct {v8, p1, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 242
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    sget-object v4, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p1
.end method

.method private onRemoteAbort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 534
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbortMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    .line 535
    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v1

    .line 536
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 539
    new-instance v2, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;-><init>(Lorg/briarproject/briar/api/client/SessionId;)V

    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 543
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 545
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbortMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    :goto_0
    move-object v7, p1

    move-object v8, v0

    goto :goto_1

    .line 546
    :cond_0
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 547
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbortMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 548
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p3

    invoke-direct {v0, p3, v1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    goto :goto_0

    .line 550
    :goto_1
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    sget-object v4, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 551
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v5

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p1

    .line 549
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 249
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 250
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {v10, v11, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v12, p3

    .line 255
    invoke-direct {v10, v11, v12}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z

    move-result v13

    .line 256
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_3

    if-eqz v13, :cond_2

    .line 257
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSE_A:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_2

    .line 258
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v13, :cond_3

    .line 259
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSE_B:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_3

    .line 260
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 264
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object/from16 v14, p1

    invoke-virtual {v10, v14, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 266
    iget-object v1, v10, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 267
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    .line 271
    invoke-direct {v10, v11, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v3

    .line 273
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getEphemeralPublicKey()[B

    move-result-object v5

    .line 274
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getAcceptTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTransportProperties()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 273
    invoke-virtual/range {v0 .. v9}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[BJLjava/util/Map;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 278
    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTHS:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eqz v13, :cond_5

    .line 282
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v2, v3, :cond_4

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSE_B:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 283
    :cond_4
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 284
    new-instance v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 285
    iget-object v0, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 286
    iget-object v4, v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    :goto_0
    move-object v13, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_1

    .line 288
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v2, v3, :cond_6

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSE_A:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 289
    :cond_6
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 290
    new-instance v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 291
    iget-object v0, v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 292
    iget-object v4, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    goto :goto_0

    .line 296
    :goto_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V

    .line 300
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v12

    .line 301
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v14

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object v0
.end method

.method private onRemoteAcceptWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 312
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 313
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {v10, v11, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v12, p3

    .line 318
    invoke-direct {v10, v11, v12}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 319
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->B_DECLINED:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_2

    .line 320
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v13, :cond_3

    .line 321
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->A_DECLINED:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_3

    .line 322
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 325
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object/from16 v14, p1

    invoke-virtual {v10, v14, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 327
    iget-object v1, v10, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 328
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    .line 332
    invoke-direct {v10, v11, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v3

    .line 333
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getEphemeralPublicKey()[B

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getAcceptTimestamp()J

    move-result-wide v6

    .line 334
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTransportProperties()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 332
    invoke-virtual/range {v0 .. v9}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[BJLjava/util/Map;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    if-eqz v13, :cond_4

    .line 339
    new-instance v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 340
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 341
    iget-object v0, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 342
    iget-object v3, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    :goto_0
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v4, v3

    goto :goto_1

    .line 344
    :cond_4
    new-instance v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 345
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 346
    iget-object v0, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 347
    iget-object v3, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    goto :goto_0

    .line 351
    :goto_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V

    .line 354
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v12

    sget-object v13, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 355
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v14

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object v0
.end method

.method private onRemoteActivate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 499
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 502
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z

    move-result v0

    .line 503
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATE_A:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v1, v2, :cond_1

    .line 505
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 506
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATE_B:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v1, v2, :cond_2

    .line 507
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 511
    :cond_2
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v4

    .line 512
    invoke-direct {p0, p2, v4}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v5

    .line 513
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getMac()[B

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 516
    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eqz v0, :cond_4

    .line 519
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v0, v2, :cond_3

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATE_B:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 520
    :cond_3
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-direct {v0, v2, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 521
    new-instance p3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {p3, v2, p1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    move-object v9, p3

    :goto_0
    move-object v8, v0

    move-object v5, v1

    goto :goto_1

    .line 523
    :cond_4
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v0, v2, :cond_5

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATE_A:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 524
    :cond_5
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 525
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-direct {p1, v2, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    move-object v9, p1

    goto :goto_0

    .line 527
    :goto_1
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v4

    .line 528
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v6

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p1
.end method

.method private onRemoteAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 463
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 466
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z

    move-result v0

    .line 467
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTHS:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTH_A:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v1, v2, :cond_1

    .line 469
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 470
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTH_B:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v1, v2, :cond_2

    .line 471
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 475
    :cond_2
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v4

    .line 476
    invoke-direct {p0, p2, v4}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v5

    .line 477
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getMac()[B

    move-result-object v7

    .line 478
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getSignature()[B

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    .line 477
    invoke-virtual/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[B[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 481
    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_ACTIVATES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTHS:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v0, v2, :cond_3

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTH_B:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 485
    :cond_3
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-direct {v0, v2, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 486
    new-instance p3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {p3, v2, p1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    move-object v9, p3

    :goto_0
    move-object v8, v0

    move-object v5, v1

    goto :goto_1

    .line 488
    :cond_4
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v2, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTHS:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v0, v2, :cond_5

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_AUTH_A:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 489
    :cond_5
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 490
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-direct {p1, v2, p3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    move-object v9, p1

    goto :goto_0

    .line 492
    :goto_1
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v4

    .line 493
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v6

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p1
.end method

.method private onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 361
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 362
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v8, p3

    .line 367
    invoke-direct {v6, v7, v8}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z

    move-result v9

    .line 368
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_3

    if-eqz v9, :cond_2

    .line 369
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSE_A:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_2

    .line 370
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v9, :cond_3

    .line 371
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSE_B:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_3

    .line 372
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 376
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v6, v5, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 378
    iget-object v10, v6, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 379
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getTimestamp()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    .line 383
    invoke-direct {v6, v7, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v10

    .line 384
    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JZ)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 387
    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eqz v9, :cond_5

    .line 391
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v2, v3, :cond_4

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->A_DECLINED:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 392
    :cond_4
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 393
    new-instance v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 394
    iget-object v0, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 395
    iget-object v4, v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    :goto_0
    move-object v9, v1

    move-object v12, v2

    move-object v13, v3

    goto :goto_1

    .line 397
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/introduction/IntroducerState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne v2, v3, :cond_6

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->B_DECLINED:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 398
    :cond_6
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 399
    new-instance v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 400
    iget-object v0, v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 401
    iget-object v4, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    goto :goto_0

    .line 405
    :goto_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V

    .line 408
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v8

    .line 409
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v10

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object v0
.end method

.method private onRemoteDeclineWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 415
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 416
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 418
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v8, p3

    .line 421
    invoke-direct {v6, v7, v8}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 422
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->B_DECLINED:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_2

    .line 423
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v9, :cond_3

    .line 424
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroducerState;->A_DECLINED:Lorg/briarproject/briar/introduction/IntroducerState;

    if-eq v0, v1, :cond_3

    .line 425
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v0

    return-object v0

    .line 428
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v6, v5, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 430
    iget-object v10, v6, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 431
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getTimestamp()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getOtherIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    .line 435
    invoke-direct {v6, v7, v2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/PeerSession;)J

    move-result-wide v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v10

    .line 436
    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->sendDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JZ)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    if-eqz v9, :cond_4

    .line 441
    new-instance v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 442
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 443
    iget-object v0, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 444
    iget-object v3, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    :goto_0
    move-object v12, v1

    move-object v13, v2

    move-object v4, v3

    goto :goto_1

    .line 446
    :cond_4
    new-instance v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 447
    new-instance v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 448
    iget-object v0, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 449
    iget-object v3, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    goto :goto_0

    .line 453
    :goto_1
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V

    .line 456
    new-instance v0, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v8

    sget-object v9, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    .line 457
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v10

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object v0
.end method

.method private senderIsAlice(Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Z
    .locals 0

    .line 306
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteAbort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;J)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;J)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;J)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroducerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroducerState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 134
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteAcceptWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 131
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 198
    sget-object v0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroducerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroducerState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 202
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteActivate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 175
    sget-object v0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroducerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroducerState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 179
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;J)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;J)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;J)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroducerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroducerState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 158
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteDeclineWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 155
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method onIntroduceeRemoved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    .line 102
    iget-object p3, p2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p2

    .line 104
    new-instance p3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    .line 105
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 106
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    iget-object v2, v2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-direct {p3, v0, v1, v2}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V

    :goto_0
    move-object v5, p2

    move-object v6, p3

    goto :goto_1

    .line 107
    :cond_0
    iget-object p2, p2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 108
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p3

    iget-object p3, p3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p2, p3}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 109
    new-instance p2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    .line 110
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p3

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v0

    iget-object v0, v0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 111
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-direct {p2, p3, v0, v1}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V

    .line 112
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p3

    goto :goto_0

    .line 114
    :goto_1
    new-instance p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lorg/briarproject/briar/introduction/IntroducerState;

    .line 115
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getRequestTimestamp()J

    move-result-wide v3

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p2

    .line 113
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method public onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroducerState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroducerState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :pswitch_0
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    .line 65
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onLocalRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroducerSession;

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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual/range {p0 .. p5}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 38
    check-cast p2, Lorg/briarproject/briar/introduction/IntroducerSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    return-object p1
.end method
