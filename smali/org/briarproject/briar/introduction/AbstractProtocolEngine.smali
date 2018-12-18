.class abstract Lorg/briarproject/briar/introduction/AbstractProtocolEngine;
.super Ljava/lang/Object;
.source "AbstractProtocolEngine.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/ProtocolEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/briarproject/briar/introduction/Session;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/introduction/ProtocolEngine<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field protected final clock:Lorg/briarproject/bramble/api/system/Clock;

.field protected final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field protected final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field protected final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field protected final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field protected final messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

.field protected final messageParser:Lorg/briarproject/briar/introduction/MessageParser;

.field protected final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 65
    iput-object p2, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 66
    iput-object p3, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 67
    iput-object p4, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 68
    iput-object p5, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 69
    iput-object p6, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 70
    iput-object p7, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    .line 71
    iput-object p8, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 72
    iput-object p9, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method

.method private sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 139
    invoke-virtual {p4}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p3

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    .line 142
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    const/4 p5, 0x1

    invoke-interface {p3, p1, p4, p2, p5}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 151
    iget-object v2, v0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    .line 152
    iget-object v3, v0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    move-object/from16 v4, p3

    invoke-interface {v3, v1, v4, v2}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v2

    .line 153
    iget-object v3, v0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 154
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v17

    .line 155
    new-instance v3, Lorg/briarproject/briar/api/introduction/IntroductionResponse;

    .line 156
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v7

    .line 157
    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getTimestamp()J

    move-result-wide v8

    .line 158
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/Session;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v14

    move-object/from16 v4, p5

    instance-of v15, v4, Lorg/briarproject/briar/introduction/AcceptMessage;

    .line 159
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/Session;->getRole()Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v18

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v3

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v18}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Lorg/briarproject/briar/api/introduction/Role;)V

    .line 160
    new-instance v4, Lorg/briarproject/briar/api/introduction/event/IntroductionResponseReceivedEvent;

    .line 161
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lorg/briarproject/briar/api/introduction/event/IntroductionResponseReceivedEvent;-><init>(Lorg/briarproject/briar/api/introduction/IntroductionResponse;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 162
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method getLocalTimestamp(JJ)J
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 185
    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    .line 184
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method isInvalidDependency(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 167
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 168
    iget-object v1, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/introduction/MessageEncoder;->setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 172
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 129
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    .line 130
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v5

    move-wide v2, p3

    .line 129
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v6

    .line 131
    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->ABORT:Lorg/briarproject/briar/introduction/MessageType;

    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V

    return-object v6
.end method

.method sendAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[BJLjava/util/Map;Z)Lorg/briarproject/bramble/api/sync/Message;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/briar/introduction/PeerSession;",
            "J[BJ",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;Z)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v0, p0

    .line 89
    iget-object v1, v0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 90
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 91
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v6

    move-wide v3, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    .line 90
    invoke-interface/range {v1 .. v10}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeAcceptMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[BJLjava/util/Map;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v1

    .line 94
    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    move-object p2, p0

    move-object p3, p1

    move-object p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v1

    move/from16 p7, p9

    invoke-direct/range {p2 .. p7}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V

    return-object v1
.end method

.method sendActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v6, p0

    .line 119
    iget-object v7, v6, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 120
    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v8

    .line 121
    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v12

    move-wide/from16 v9, p3

    move-object/from16 v13, p5

    .line 120
    invoke-interface/range {v7 .. v13}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeActivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v7

    .line 122
    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V

    return-object v7
.end method

.method sendAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[B[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v6, p0

    .line 109
    iget-object v7, v6, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 110
    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v8

    .line 111
    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v12

    move-wide/from16 v9, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 110
    invoke-interface/range {v7 .. v14}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeAuthMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v7

    .line 113
    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V

    return-object v7
.end method

.method sendDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JZ)Lorg/briarproject/bramble/api/sync/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 101
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    .line 102
    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v5

    move-wide v2, p3

    .line 101
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeDeclineMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v6

    .line 103
    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    invoke-interface {p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V

    return-object v6
.end method

.method sendRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JLorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v6, p0

    .line 78
    iget-object v7, v6, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 79
    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v8

    .line 80
    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v11

    move-wide/from16 v9, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 79
    invoke-interface/range {v7 .. v13}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeRequestMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v7

    .line 81
    sget-object v2, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    invoke-interface/range {p2 .. p2}, Lorg/briarproject/briar/introduction/PeerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;->sendMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/Message;Z)V

    return-object v7
.end method
