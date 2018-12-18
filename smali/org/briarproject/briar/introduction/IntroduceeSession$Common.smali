.class abstract Lorg/briarproject/briar/introduction/IntroduceeSession$Common;
.super Ljava/lang/Object;
.source "IntroduceeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/introduction/IntroduceeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Common"
.end annotation


# instance fields
.field final acceptTimestamp:J

.field final alice:Z

.field final ephemeralPublicKey:[B

.field final lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field final macKey:[B

.field final transportProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "[B",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;J[B)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-boolean p1, p0, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->alice:Z

    .line 204
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 205
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->ephemeralPublicKey:[B

    .line 206
    iput-object p4, p0, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->transportProperties:Ljava/util/Map;

    .line 207
    iput-wide p5, p0, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->acceptTimestamp:J

    .line 208
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->macKey:[B

    return-void
.end method

.method synthetic constructor <init>(ZLorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[BLorg/briarproject/briar/introduction/IntroduceeSession$1;)V
    .locals 0

    .line 187
    invoke-direct/range {p0 .. p7}, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    return-void
.end method
