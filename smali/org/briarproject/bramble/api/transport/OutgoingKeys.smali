.class public Lorg/briarproject/bramble/api/transport/OutgoingKeys;
.super Ljava/lang/Object;
.source "OutgoingKeys.java"


# instance fields
.field private final active:Z

.field private final headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final rotationPeriod:J

.field private final streamCounter:J

.field private final tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 24
    iput-wide p3, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->rotationPeriod:J

    .line 25
    iput-wide p5, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->streamCounter:J

    .line 26
    iput-boolean p7, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->active:Z

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JZ)V
    .locals 8

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    .line 17
    invoke-direct/range {v0 .. v7}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJZ)V

    return-void
.end method


# virtual methods
.method public getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public getRotationPeriod()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->rotationPeriod:J

    return-wide v0
.end method

.method public getStreamCounter()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->streamCounter:J

    return-wide v0
.end method

.method public getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->active:Z

    return v0
.end method
