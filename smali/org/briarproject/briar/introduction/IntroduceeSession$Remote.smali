.class Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;
.super Lorg/briarproject/briar/introduction/IntroduceeSession$Common;
.source "IntroduceeSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/introduction/IntroduceeSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Remote"
.end annotation


# instance fields
.field final author:Lorg/briarproject/bramble/api/identity/Author;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 9

    .line 250
    iget-boolean v1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->alice:Z

    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v4, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->ephemeralPublicKey:[B

    iget-object v5, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->transportProperties:Ljava/util/Map;

    iget-wide v6, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->acceptTimestamp:J

    iget-object v8, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->macKey:[B

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/IntroduceeSession$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method constructor <init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "[B",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;J[B)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p6

    move-object/from16 v7, p8

    .line 244
    invoke-direct/range {v0 .. v8}, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[BLorg/briarproject/briar/introduction/IntroduceeSession$1;)V

    move-object v1, p2

    .line 246
    iput-object v1, v0, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-void
.end method
