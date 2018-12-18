.class Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;
.super Ljava/lang/Object;
.source "StreamEncrypterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/StreamEncrypter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

.field private final frameCiphertext:[B

.field private final frameHeader:[B

.field private final frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final frameNonce:[B

.field private frameNumber:J

.field private final framePlaintext:[B

.field private final out:Ljava/io/OutputStream;

.field private final streamHeaderKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final streamHeaderNonce:[B

.field private final streamNumber:J

.field private final tag:[B

.field private writeStreamHeader:Z

.field private writeTag:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lorg/briarproject/bramble/crypto/AuthenticatedCipher;J[B[BLorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->out:Ljava/io/OutputStream;

    .line 49
    iput-object p2, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    .line 50
    iput-wide p3, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamNumber:J

    .line 51
    iput-object p5, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->tag:[B

    .line 52
    iput-object p6, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamHeaderNonce:[B

    .line 53
    iput-object p7, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamHeaderKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 54
    iput-object p8, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    const/16 p1, 0x18

    .line 55
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNonce:[B

    const/4 p1, 0x4

    .line 56
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameHeader:[B

    const/16 p1, 0x3dc

    .line 57
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->framePlaintext:[B

    const/16 p1, 0x400

    .line 58
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameCiphertext:[B

    const-wide/16 p1, 0x0

    .line 59
    iput-wide p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNumber:J

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 60
    :goto_0
    iput-boolean p2, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeTag:Z

    .line 61
    iput-boolean p1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeStreamHeader:Z

    return-void
.end method

.method private writeStreamHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2a

    .line 120
    new-array v2, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 121
    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    .line 122
    iget-wide v3, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamNumber:J

    const/4 v1, 0x2

    invoke-static {v3, v4, v2, v1}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint64(J[BI)V

    .line 124
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object v1

    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x52

    .line 126
    new-array v7, v1, [B

    .line 127
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamHeaderNonce:[B

    const/16 v3, 0x18

    invoke-static {v1, v0, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamHeaderKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v5, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->streamHeaderNonce:[B

    invoke-interface {v1, v3, v4, v5}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    .line 132
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    const/4 v3, 0x0

    const/16 v4, 0x2a

    const/16 v6, 0x18

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I

    move-result v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 141
    iput-boolean v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeStreamHeader:Z

    return-void

    .line 136
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->tag:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->tag:[B

    iget-object v2, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->tag:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    iput-boolean v3, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeTag:Z

    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeTag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeTag()V

    .line 149
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeStreamHeader:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeStreamHeader()V

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeFrame([BIIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    if-ltz v0, :cond_7

    if-ltz v2, :cond_7

    add-int v9, v0, v2

    const/16 v3, 0x3dc

    if-gt v9, v3, :cond_6

    .line 72
    iget-wide v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNumber:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_5

    .line 74
    iget-boolean v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeTag:Z

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeTag()V

    .line 76
    :cond_0
    iget-boolean v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeStreamHeader:Z

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->writeStreamHeader()V

    .line 78
    :cond_1
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameHeader:[B

    move/from16 v4, p4

    invoke-static {v3, v4, v0, v2}, Lorg/briarproject/bramble/crypto/FrameEncoder;->encodeHeader([BZII)V

    .line 81
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNonce:[B

    iget-wide v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNumber:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lorg/briarproject/bramble/crypto/FrameEncoder;->encodeNonce([BJZ)V

    .line 83
    :try_start_0
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v5, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNonce:[B

    invoke-interface {v3, v6, v4, v5}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    .line 84
    iget-object v10, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v11, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameHeader:[B

    const/4 v12, 0x0

    const/4 v13, 0x4

    iget-object v14, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameCiphertext:[B

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I

    move-result v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v10, 0x14

    if-ne v3, v10, :cond_4

    .line 91
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->framePlaintext:[B

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-static {v4, v11, v3, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 93
    iget-object v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->framePlaintext:[B

    add-int v5, v0, v3

    aput-byte v11, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNonce:[B

    iget-wide v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNumber:J

    invoke-static {v3, v4, v5, v11}, Lorg/briarproject/bramble/crypto/FrameEncoder;->encodeNonce([BJZ)V

    .line 97
    :try_start_1
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    iget-object v5, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNonce:[B

    invoke-interface {v3, v6, v4, v5}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V

    .line 98
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->cipher:Lorg/briarproject/bramble/crypto/AuthenticatedCipher;

    iget-object v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->framePlaintext:[B

    const/4 v5, 0x0

    iget-object v7, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameCiphertext:[B

    const/16 v8, 0x14

    move v6, v9

    invoke-interface/range {v3 .. v8}, Lorg/briarproject/bramble/crypto/AuthenticatedCipher;->process([BII[BI)I

    move-result v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v9, v9, 0x10

    if-ne v3, v9, :cond_3

    .line 107
    iget-object v3, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->out:Ljava/io/OutputStream;

    iget-object v4, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameCiphertext:[B

    add-int/2addr v0, v10

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v4, v11, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    iget-wide v2, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/briarproject/bramble/crypto/StreamEncrypterImpl;->frameNumber:J

    return-void

    .line 102
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 88
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 72
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 70
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
