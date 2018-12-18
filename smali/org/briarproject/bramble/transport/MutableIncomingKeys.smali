.class Lorg/briarproject/bramble/transport/MutableIncomingKeys;
.super Ljava/lang/Object;
.source "MutableIncomingKeys.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final rotationPeriod:J

.field private final tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final window:Lorg/briarproject/bramble/transport/ReorderingWindow;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/transport/IncomingKeys;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 19
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 20
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->rotationPeriod:J

    .line 21
    new-instance v0, Lorg/briarproject/bramble/transport/ReorderingWindow;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBase()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getWindowBitmap()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/briarproject/bramble/transport/ReorderingWindow;-><init>(J[B)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->window:Lorg/briarproject/bramble/transport/ReorderingWindow;

    return-void
.end method


# virtual methods
.method getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method getRotationPeriod()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->rotationPeriod:J

    return-wide v0
.end method

.method getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method getWindow()Lorg/briarproject/bramble/transport/ReorderingWindow;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->window:Lorg/briarproject/bramble/transport/ReorderingWindow;

    return-object v0
.end method

.method snapshot()Lorg/briarproject/bramble/api/transport/IncomingKeys;
    .locals 9

    .line 25
    new-instance v8, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v2, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-wide v3, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->rotationPeriod:J

    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->window:Lorg/briarproject/bramble/transport/ReorderingWindow;

    .line 26
    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/ReorderingWindow;->getBase()J

    move-result-wide v5

    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->window:Lorg/briarproject/bramble/transport/ReorderingWindow;

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/ReorderingWindow;->getBitmap()[B

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JJ[B)V

    return-object v8
.end method
