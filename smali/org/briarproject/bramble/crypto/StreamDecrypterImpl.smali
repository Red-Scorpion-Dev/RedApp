.class Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;
.super Ljava/lang/Object;
.source "StreamDecrypterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/StreamDecrypter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

.field private finalFrame:Z

.field private final frameCiphertext:[B

.field private final frameHeader:[B

.field private frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final frameNonce:[B

.field private frameNumber:J

.field private final in:Ljava/io/InputStream;

.field private final streamHeaderKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final streamNumber:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/briarproject/bramble/crypto/AuthenticatedCipher;JLorg/briarproject/bramble/api/crypto/SecretKey;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->in:Ljava/io/InputStream;

    .line 48
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    .line 49
    iput-wide p3, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->streamNumber:J

    .line 50
    iput-object p5, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->streamHeaderKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    const/16 p1, 0x18

    .line 51
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNonce:[B

    const/4 p1, 0x4

    .line 52
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameHeader:[B

    const/16 p1, 0x400

    .line 53
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameCiphertext:[B

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    const-wide/16 p1, 0x0

    .line 55
    iput-wide p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNumber:J

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->finalFrame:Z

    return-void
.end method

.method private readStreamHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x52

    .line 121
    new-array v2, v0, [B

    const/16 v7, 0x2a

    .line 122
    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 126
    iget-object v3, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->in:Ljava/io/InputStream;

    rsub-int/lit8 v4, v1, 0x52

    invoke-virtual {v3, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v1, v3

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    const/16 v0, 0x18

    .line 132
    new-array v1, v0, [B

    .line 133
    invoke-static {v2, v9, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v3, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->streamHeaderKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-interface {v0, v9, v3, v1}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    .line 138
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    const/16 v3, 0x18

    const/16 v4, 0x3a

    const/4 v6, 0x0

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v7, :cond_4

    .line 149
    invoke-static {v8, v9}, Lorg/briarproject/bramble/util/ByteUtils;->readUint16([BI)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    .line 153
    invoke-static {v8, v0}, Lorg/briarproject/bramble/util/ByteUtils;->readUint64([BI)J

    move-result-wide v0

    .line 155
    iget-wide v2, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->streamNumber:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/16 v0, 0x20

    .line 157
    new-array v1, v0, [B

    const/16 v2, 0xa

    .line 158
    invoke-static {v8, v2, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    new-instance v0, Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/crypto/SecretKey;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-void

    .line 155
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 151
    :cond_3
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 143
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :catch_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method


# virtual methods
.method public readFrame([B)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    array-length v0, p1

    const/16 v1, 0x3dc

    if-lt v0, v1, :cond_c

    .line 64
    iget-boolean v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->finalFrame:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    return v2

    .line 66
    :cond_0
    iget-wide v3, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNumber:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_b

    .line 68
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->readStreamHeader()V

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v3, v4, :cond_3

    .line 72
    iget-object v5, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameCiphertext:[B

    sub-int/2addr v4, v3

    invoke-virtual {v5, v6, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v2, :cond_2

    add-int/2addr v3, v4

    goto :goto_0

    .line 74
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 78
    :cond_3
    iget-object v4, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNonce:[B

    iget-wide v5, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNumber:J

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lorg/briarproject/bramble/crypto/FrameEncoder;->encodeNonce([BJZ)V

    .line 80
    :try_start_0
    iget-object v4, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v5, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v6, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNonce:[B

    invoke-interface {v4, v0, v5, v6}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    .line 81
    iget-object v7, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v8, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameCiphertext:[B

    const/4 v9, 0x0

    const/16 v10, 0x14

    iget-object v11, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameHeader:[B

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I

    move-result v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 89
    iget-object v4, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameHeader:[B

    invoke-static {v4}, Lorg/briarproject/bramble/crypto/FrameEncoder;->isFinalFrame([B)Z

    move-result v4

    iput-boolean v4, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->finalFrame:Z

    .line 90
    iget-object v4, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameHeader:[B

    invoke-static {v4}, Lorg/briarproject/bramble/crypto/FrameEncoder;->getPayloadLength([B)I

    move-result v4

    .line 91
    iget-object v5, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameHeader:[B

    invoke-static {v5}, Lorg/briarproject/bramble/crypto/FrameEncoder;->getPaddingLength([B)I

    move-result v5

    add-int v6, v4, v5

    if-gt v6, v1, :cond_9

    add-int/lit8 v1, v4, 0x14

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x10

    :goto_1
    if-ge v3, v1, :cond_5

    .line 98
    iget-object v7, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->in:Ljava/io/InputStream;

    iget-object v8, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameCiphertext:[B

    sub-int v9, v1, v3

    invoke-virtual {v7, v8, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v2, :cond_4

    add-int/2addr v3, v7

    goto :goto_1

    .line 99
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 103
    :cond_5
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNonce:[B

    iget-wide v2, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNumber:J

    invoke-static {v1, v2, v3, v0}, Lorg/briarproject/bramble/crypto/FrameEncoder;->encodeNonce([BJZ)V

    .line 105
    :try_start_1
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v3, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNonce:[B

    invoke-interface {v1, v0, v2, v3}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    .line 106
    iget-object v7, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v8, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameCiphertext:[B

    const/16 v9, 0x14

    add-int/lit8 v10, v6, 0x10

    const/4 v12, 0x0

    move-object v11, p1

    invoke-interface/range {v7 .. v12}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I

    move-result v1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v6, :cond_8

    :goto_2
    if-ge v0, v5, :cond_7

    add-int v1, v4, v0

    .line 115
    aget-byte v1, p1, v1

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 116
    :cond_7
    iget-wide v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/briarproject/bramble/crypto/StreamDecrypterImpl;->frameNumber:J

    return v4

    .line 109
    :cond_8
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    :catch_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 93
    :cond_9
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 84
    :cond_a
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 86
    :catch_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 66
    :cond_b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 63
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
