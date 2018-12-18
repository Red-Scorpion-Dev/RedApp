.class abstract Lorg/briarproject/bramble/reliability/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field static final ACK_FLAG:B = -0x80t

.field static final FIN_FLAG:B = 0x40t


# instance fields
.field protected final buf:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    return-void
.end method


# virtual methods
.method calculateChecksum()J
    .locals 3

    .line 37
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/briarproject/bramble/reliability/Crc32;->crc([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 56
    instance-of v0, p1, Lorg/briarproject/bramble/reliability/Frame;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 57
    check-cast p1, Lorg/briarproject/bramble/reliability/Frame;

    .line 58
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    aget-byte v0, v0, v1

    iget-object v2, p1, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    aget-byte v2, v2, v1

    if-ne v0, v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/briarproject/bramble/reliability/Frame;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/briarproject/bramble/reliability/Frame;->getSequenceNumber()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method getBuffer()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    return-object v0
.end method

.method getChecksum()J
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x4

    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->readUint32([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method getLength()I
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    array-length v0, v0

    return v0
.end method

.method getSequenceNumber()J
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->readUint32([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 50
    invoke-virtual {p0}, Lorg/briarproject/bramble/reliability/Frame;->getSequenceNumber()J

    move-result-wide v0

    .line 51
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method setChecksum(J)V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x4

    invoke-static {p1, p2, v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    return-void
.end method

.method setSequenceNumber(J)V
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/briarproject/bramble/reliability/Frame;->buf:[B

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint32(J[BI)V

    return-void
.end method
