.class Lorg/briarproject/bramble/reliability/Ack;
.super Lorg/briarproject/bramble/reliability/Frame;
.source "Ack.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field static final LENGTH:I = 0xb


# direct methods
.method constructor <init>()V
    .locals 3

    const/16 v0, 0xb

    .line 15
    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/reliability/Frame;-><init>([B)V

    .line 16
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Ack;->buf:[B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/reliability/Frame;-><init>([B)V

    .line 21
    array-length v0, p1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, -0x80

    .line 22
    aput-byte v1, p1, v0

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method getWindowSize()I
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Ack;->buf:[B

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->readUint16([BI)I

    move-result v0

    return v0
.end method

.method setWindowSize(I)V
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Ack;->buf:[B

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    return-void
.end method
