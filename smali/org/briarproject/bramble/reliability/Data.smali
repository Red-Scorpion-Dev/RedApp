.class Lorg/briarproject/bramble/reliability/Data;
.super Lorg/briarproject/bramble/reliability/Frame;
.source "Data.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field static final FOOTER_LENGTH:I = 0x4

.field static final HEADER_LENGTH:I = 0x5

.field static final MAX_LENGTH:I = 0x409

.field static final MAX_PAYLOAD_LENGTH:I = 0x400

.field static final MIN_LENGTH:I = 0x9


# direct methods
.method constructor <init>([B)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/reliability/Frame;-><init>([B)V

    .line 18
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    array-length p1, p1

    const/16 v0, 0x409

    if-gt p1, v0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method getPayloadLength()I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Data;->buf:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x9

    return v0
.end method

.method isLastFrame()Z
    .locals 3

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Data;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method setLastFrame(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/Data;->buf:[B

    const/4 v0, 0x0

    const/16 v1, 0x40

    aput-byte v1, p1, v0

    :cond_0
    return-void
.end method
