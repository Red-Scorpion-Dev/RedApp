.class Lorg/briarproject/bramble/transport/MutableOutgoingKeys;
.super Ljava/lang/Object;
.source "MutableOutgoingKeys.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private active:Z

.field private final headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final rotationPeriod:J

.field private streamCounter:J

.field private final tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 20
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 21
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getRotationPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->rotationPeriod:J

    .line 22
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getStreamCounter()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->streamCounter:J

    .line 23
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->isActive()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->active:Z

    return-void
.end method


# virtual methods
.method activate()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->active:Z

    return-void
.end method

.method getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method getRotationPeriod()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->rotationPeriod:J

    return-wide v0
.end method

.method getStreamCounter()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->streamCounter:J

    return-wide v0
.end method

.method getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method incrementStreamCounter()V
    .locals 4

    .line 48
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->streamCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->streamCounter:J

    return-void
.end method

.method isActive()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->active:Z

    return v0
.end method

.method snapshot()Lorg/briarproject/bramble/api/transport/OutgoingKeys;
    .locals 9

    .line 27
    new-instance v8, Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v2, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-wide v3, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->rotationPeriod:J

    iget-wide v5, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->streamCounter:J

    iget-boolean v7, p0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->active:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJZ)V

    return-object v8
.end method
