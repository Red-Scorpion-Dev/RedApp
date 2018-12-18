.class Lorg/briarproject/briar/introduction/IntroduceeSession$Local;
.super Lorg/briarproject/briar/introduction/IntroduceeSession$Common;
.source "IntroduceeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/introduction/IntroduceeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Local"
.end annotation


# instance fields
.field final ephemeralPrivateKey:[B

.field final lastMessageTimestamp:J


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/bramble/api/sync/MessageId;J)V
    .locals 11

    .line 230
    iget-boolean v1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->alice:Z

    iget-object v5, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPublicKey:[B

    iget-object v6, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPrivateKey:[B

    iget-object v7, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->transportProperties:Ljava/util/Map;

    iget-wide v8, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->acceptTimestamp:J

    iget-object v10, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->macKey:[B

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/introduction/IntroduceeSession$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/bramble/api/sync/MessageId;J)V

    return-void
.end method

.method constructor <init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "J[B[B",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;J[B)V"
        }
    .end annotation

    move-object v9, p0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v7, p10

    .line 222
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[BLorg/briarproject/briar/introduction/IntroduceeSession$1;)V

    move-wide v0, p3

    .line 224
    iput-wide v0, v9, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->lastMessageTimestamp:J

    move-object/from16 v0, p6

    .line 225
    iput-object v0, v9, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPrivateKey:[B

    return-void
.end method
