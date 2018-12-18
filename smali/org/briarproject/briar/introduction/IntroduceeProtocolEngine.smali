.class Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;
.super Lorg/briarproject/briar/introduction/AbstractProtocolEngine;
.source "IntroduceeProtocolEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/introduction/AbstractProtocolEngine<",
        "Lorg/briarproject/briar/introduction/IntroduceeSession;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

.field private final keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

.field private final transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/introduction/IntroductionCrypto;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p9}, Lorg/briarproject/briar/introduction/AbstractProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 82
    iput-object p10, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    .line 83
    iput-object p11, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 84
    iput-object p12, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    return-void
.end method

.method private abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 524
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markRequestsUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)V

    .line 527
    invoke-direct {p0, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroduceeSession;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->sendAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 530
    new-instance v1, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;-><init>(Lorg/briarproject/briar/api/client/SessionId;)V

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 533
    sget-object v4, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 534
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v8

    move-object v3, p2

    .line 533
    invoke-static/range {v3 .. v8}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method private addSessionId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 550
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    invoke-interface {v1, v0, p3}, Lorg/briarproject/briar/introduction/MessageEncoder;->addSessionId(Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/api/client/SessionId;)V

    .line 552
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p3, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 554
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroduceeSession;)J
    .locals 4

    .line 543
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocalTimestamp()J

    move-result-wide v0

    .line 544
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v2

    .line 543
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->getLocalTimestamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .locals 0

    .line 539
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result p1

    return p1
.end method

.method private markRequestAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 575
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 576
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    invoke-interface {v1, v0, p3}, Lorg/briarproject/briar/introduction/MessageEncoder;->setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 578
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p3, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 580
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private markRequestsUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    .line 561
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/briar/introduction/MessageParser;->getRequestsAvailableToAnswerQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 565
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 564
    invoke-interface {v1, p1, p2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p2

    .line 566
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

    .line 567
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markRequestAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 569
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private onLocalAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 272
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markRequestsUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)V

    .line 275
    iget-object v0, v10, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-interface {v0}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->generateKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v12

    .line 277
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object v13

    .line 278
    iget-object v0, v10, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 279
    invoke-interface {v0, v11}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->getLocalProperties(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;

    move-result-object v14

    const-wide/16 v0, 0x1

    add-long v0, p3, v0

    move-object/from16 v15, p2

    .line 282
    invoke-direct {v10, v15}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroduceeSession;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v16

    move-object v5, v12

    move-wide/from16 v6, v16

    move-object v8, v14

    .line 283
    invoke-virtual/range {v0 .. v9}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->sendAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[BJLjava/util/Map;Z)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    .line 286
    iget-object v0, v10, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, v11, v4}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 289
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :pswitch_0
    sget-object v3, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    move-object/from16 v2, p2

    move-object v5, v12

    move-object v6, v13

    move-wide/from16 v7, v16

    move-object v9, v14

    invoke-static/range {v2 .. v9}, Lorg/briarproject/briar/introduction/IntroduceeSession;->addLocalAccept(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/Message;[B[BJLjava/util/Map;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onLocalAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_1
    sget-object v3, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    .line 296
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    move-object/from16 v2, p2

    move-wide/from16 v5, v16

    .line 295
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0

    .line 291
    :pswitch_2
    sget-object v3, Lorg/briarproject/briar/introduction/IntroduceeState;->LOCAL_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

    move-object/from16 v2, p2

    move-object v5, v12

    move-object v6, v13

    move-wide/from16 v7, v16

    move-object v9, v14

    invoke-static/range {v2 .. v9}, Lorg/briarproject/briar/introduction/IntroduceeSession;->addLocalAccept(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/Message;[B[BJLjava/util/Map;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onLocalAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 406
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-interface {v0, p2}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->deriveMasterKey(Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->deriveMacKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v8

    .line 408
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->deriveMacKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v9

    .line 409
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v1

    iget-boolean v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    if-eqz v1, :cond_0

    move-object v1, v8

    goto :goto_0

    :cond_0
    move-object v1, v9

    .line 410
    :goto_0
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v2, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v2

    .line 411
    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v5

    invoke-interface {v4, v1, p2, v5}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->authMac(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/identity/AuthorId;)[B

    move-result-object v6

    .line 412
    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v2

    invoke-interface {v4, v1, v2}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->sign(Lorg/briarproject/bramble/api/crypto/SecretKey;[B)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    sget-object v2, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    if-ne v1, v2, :cond_1

    .line 418
    invoke-direct {p0, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroduceeSession;)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->sendAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[B[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    .line 420
    sget-object v2, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    move-object v1, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lorg/briarproject/briar/introduction/IntroduceeSession;->addLocalAuth(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 414
    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 415
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0
.end method

.method private onLocalDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markRequestsUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)V

    const-wide/16 v0, 0x1

    add-long/2addr p3, v0

    .line 312
    invoke-direct {p0, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroduceeSession;)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 313
    invoke-virtual/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->sendDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;JZ)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p3

    .line 316
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {p4, p1, p3}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 320
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object p1

    sget-object p4, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroduceeState;

    if-ne p1, p4, :cond_0

    sget-object p1, Lorg/briarproject/briar/introduction/IntroduceeState;->LOCAL_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    goto :goto_0

    .line 321
    :goto_1
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v2

    .line 322
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    move-object v0, p2

    .line 321
    invoke-static/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method private onRemoteAbort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 511
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markRequestsUnavailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)V

    .line 514
    new-instance v0, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/api/introduction/event/IntroductionAbortedEvent;-><init>(Lorg/briarproject/briar/api/client/SessionId;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 517
    sget-object v3, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    .line 518
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocalTimestamp()J

    move-result-wide v5

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbortMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    move-object v2, p2

    .line 517
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method private onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 329
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 330
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 332
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AcceptMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 337
    :cond_1
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroduceeState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->REMOTE_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 339
    :goto_0
    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    if-ne v0, v1, :cond_3

    .line 341
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 342
    invoke-static {p2, v0, p3}, Lorg/briarproject/briar/introduction/IntroduceeSession;->addRemoteAccept(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p2

    .line 341
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onLocalAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 345
    :cond_3
    invoke-static {p2, v0, p3}, Lorg/briarproject/briar/introduction/IntroduceeSession;->addRemoteAccept(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method private onRemoteActivate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 485
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 490
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getMac()[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->verifyActivateMac([BLorg/briarproject/briar/introduction/IntroduceeSession;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getTransportKeys()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getTransportKeys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/transport/KeyManager;->activateKeys(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/Map;)V

    .line 503
    :cond_1
    sget-object v3, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    .line 504
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocalTimestamp()J

    move-result-wide v5

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/ActivateMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    move-object v2, p2

    .line 503
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 492
    :catch_0
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method private onRemoteAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    .line 427
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {v6, v14, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    iget-object v0, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, v15}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v7

    .line 432
    :try_start_0
    iget-object v0, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getMac()[B

    move-result-object v1

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    invoke-interface {v0, v1, v14, v2}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->verifyAuthMac([BLorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    .line 433
    iget-object v0, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/AuthMessage;->getSignature()[B

    move-result-object v1

    invoke-interface {v0, v1, v14}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->verifySignature([BLorg/briarproject/briar/introduction/IntroduceeSession;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 437
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v0

    iget-wide v0, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->acceptTimestamp:J

    .line 438
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v2

    iget-wide v2, v2, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->acceptTimestamp:J

    .line 437
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v0, -0x1

    cmp-long v2, v11, v0

    if-eqz v2, :cond_1

    const/16 v16, 0x0

    .line 443
    :try_start_1
    iget-object v0, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 444
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v1

    iget-object v2, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/bramble/api/contact/ContactManager;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    .line 450
    iget-object v0, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 451
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    .line 452
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v2

    .line 451
    invoke-interface {v0, v15, v1, v2}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    .line 456
    iget-object v7, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 457
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v9

    new-instance v10, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getMasterKey()[B

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v1

    iget-boolean v13, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/db/ContactExistsException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    move-object/from16 v8, p1

    move-object v5, v14

    move v14, v1

    .line 457
    :try_start_2
    invoke-interface/range {v7 .. v14}, Lorg/briarproject/bramble/api/transport/KeyManager;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Ljava/util/Map;

    move-result-object v1
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/ContactExistsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 462
    :try_start_3
    iget-object v2, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    .line 463
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v4

    iget-object v4, v4, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->transportProperties:Ljava/util/Map;

    .line 462
    invoke-interface {v2, v15, v3, v4}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->addRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Map;)V

    .line 466
    new-instance v2, Lorg/briarproject/briar/api/introduction/event/IntroductionSucceededEvent;

    invoke-direct {v2, v0}, Lorg/briarproject/briar/api/introduction/event/IntroductionSucceededEvent;-><init>(Lorg/briarproject/bramble/api/contact/Contact;)V

    .line 467
    invoke-virtual {v15, v2}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V
    :try_end_3
    .catch Lorg/briarproject/bramble/api/db/ContactExistsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_0
    move-object v5, v14

    :catch_1
    move-object/from16 v1, v16

    :catch_2
    :goto_0
    move-object v7, v1

    .line 475
    iget-object v0, v6, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-interface {v0, v5}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->activateMac(Lorg/briarproject/briar/introduction/IntroduceeSession;)[B

    move-result-object v8

    .line 476
    invoke-direct {v6, v5}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->getLocalTimestamp(Lorg/briarproject/briar/introduction/IntroduceeSession;)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->sendActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/PeerSession;J[B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    move-object/from16 v1, p3

    .line 479
    invoke-static {v9, v1, v0, v7}, Lorg/briarproject/briar/introduction/IntroduceeSession;->awaitActivate(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AuthMessage;Lorg/briarproject/bramble/api/sync/Message;Ljava/util/Map;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_3
    move-object v9, v14

    .line 435
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    return-object v0
.end method

.method private onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 351
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 352
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 358
    :cond_1
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 361
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 362
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 366
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getIntroducer()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v0

    iget-object v5, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p3

    .line 365
    invoke-virtual/range {v1 .. v6}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V

    .line 369
    sget-object v7, Lorg/briarproject/briar/introduction/IntroduceeState;->REMOTE_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 370
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v8

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocalTimestamp()J

    move-result-wide v9

    .line 371
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/DeclineMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v11

    move-object v6, p2

    .line 369
    invoke-static/range {v6 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method private onRemoteRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 237
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-direct/range {p0 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v1

    return-object v1

    .line 241
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v7, v1, v2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markRequestAvailableToAnswer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->addSessionId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)V

    .line 248
    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 249
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 252
    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1, v7}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v1

    .line 253
    iget-object v2, v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getIntroducer()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    .line 254
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    .line 253
    invoke-interface {v2, v7, v3, v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v1

    .line 255
    iget-object v2, v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 256
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v22

    .line 257
    new-instance v2, Lorg/briarproject/briar/api/introduction/IntroductionRequest;

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v10

    .line 258
    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getTimestamp()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 259
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getText()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v22}, Lorg/briarproject/briar/api/introduction/IntroductionRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;ZLorg/briarproject/bramble/api/identity/AuthorInfo;)V

    .line 261
    new-instance v3, Lorg/briarproject/briar/api/introduction/event/IntroductionRequestReceivedEvent;

    .line 262
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lorg/briarproject/briar/api/introduction/event/IntroductionRequestReceivedEvent;-><init>(Lorg/briarproject/briar/api/introduction/IntroductionRequest;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 263
    invoke-virtual {v7, v3}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 266
    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroduceeState;

    move-object/from16 v2, p3

    invoke-static {v8, v1, v2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->addRemoteRequest(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v1

    return-object v1
.end method

.method private onRemoteResponseWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 378
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRequestTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 379
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->isInvalidDependency(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 385
    :cond_1
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->markMessageVisibleInUi(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 388
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    .line 389
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/briar/api/client/MessageTracker;->trackMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;JZ)V

    .line 393
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getIntroducer()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v0

    iget-object v5, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p3

    .line 392
    invoke-virtual/range {v1 .. v6}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->broadcastIntroductionResponseReceivedEvent(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)V

    .line 396
    sget-object v7, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v8

    .line 397
    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocalTimestamp()J

    move-result-wide v9

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v11

    move-object v6, p2

    .line 396
    invoke-static/range {v6 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeSession;->clear(Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/IntroduceeState;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteAbort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

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

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 96
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 106
    :pswitch_0
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    .line 100
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onLocalAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;J)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 153
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 155
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteResponseWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteAccept(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
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

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 212
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 214
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteActivate(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 222
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

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

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 193
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 195
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteAuth(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 203
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

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

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 115
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :pswitch_0
    new-instance p1, Lorg/briarproject/briar/api/client/ProtocolStateException;

    invoke-direct {p1}, Lorg/briarproject/briar/api/client/ProtocolStateException;-><init>()V

    throw p1

    .line 119
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onLocalDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;J)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 173
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 175
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteResponseWhenDeclined(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 184
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteDecline(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
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

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 0

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual/range {p0 .. p5}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method

.method public onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 134
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine$1;->$SwitchMap$org$briarproject$briar$introduction$IntroduceeState:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 136
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRemoteRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->abort(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/Session;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 53
    check-cast p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1
.end method
