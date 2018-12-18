.class public Lorg/briarproject/bramble/api/transport/IncomingKeys;
.super Ljava/lang/Object;
.source "IncomingKeys.java"


# instance fields
.field private final headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final rotationPeriod:J

.field private final tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final windowBase:J

.field private final windowBitmap:[B


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V
    .locals 9

    const/4 v0, 0x4

    .line 19
    new-array v8, v0, [B

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v8}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJ[B)V

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJ[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 27
    iput-wide p3, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->rotationPeriod:J

    .line 28
    iput-wide p5, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->windowBase:J

    .line 29
    iput-object p7, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->windowBitmap:[B

    return-void
.end method


# virtual methods
.method public getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public getRotationPeriod()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->rotationPeriod:J

    return-wide v0
.end method

.method public getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public getWindowBase()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->windowBase:J

    return-wide v0
.end method

.method public getWindowBitmap()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/IncomingKeys;->windowBitmap:[B

    return-object v0
.end method
