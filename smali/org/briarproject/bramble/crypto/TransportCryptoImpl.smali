.class Lorg/briarproject/bramble/crypto/TransportCryptoImpl;
.super Ljava/lang/Object;
.source "TransportCryptoImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/TransportCrypto;


# instance fields
.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    return-void
.end method

.method private deriveHeaderKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 3

    if-eqz p3, :cond_0

    const-string p3, "org.briarproject.bramble.transport/ALICE_HEADER_KEY"

    goto :goto_0

    :cond_0
    const-string p3, "org.briarproject.bramble.transport/BOB_HEADER_KEY"

    .line 108
    :goto_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p2

    .line 109
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p3, p1, v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method private deriveTagKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 3

    if-eqz p3, :cond_0

    const-string p3, "org.briarproject.bramble.transport/ALICE_TAG_KEY"

    goto :goto_0

    :cond_0
    const-string p3, "org.briarproject.bramble.transport/BOB_TAG_KEY"

    .line 101
    :goto_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object p2

    .line 102
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p3, p1, v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method private rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 3

    const/16 v0, 0x8

    .line 93
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 94
    invoke-static {p2, p3, v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint64(J[BI)V

    .line 95
    iget-object p2, p0, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string p3, "org.briarproject.bramble.transport/ROTATE"

    const/4 v2, 0x1

    new-array v2, v2, [[B

    aput-object v0, v2, v1

    invoke-interface {p2, p3, p1, v2}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deriveTransportKeys(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Lorg/briarproject/bramble/api/transport/TransportKeys;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-wide/from16 v6, p3

    move/from16 v3, p5

    xor-int/lit8 v4, v3, 0x1

    .line 42
    invoke-direct {v0, v1, v2, v4}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->deriveTagKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v4

    xor-int/lit8 v5, v3, 0x1

    .line 43
    invoke-direct {v0, v1, v2, v5}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->deriveHeaderKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    .line 44
    invoke-direct {v0, v1, v2, v3}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->deriveTagKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v8

    .line 45
    invoke-direct {v0, v1, v2, v3}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->deriveHeaderKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v1

    .line 47
    invoke-direct {v0, v4, v6, v7}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v3

    .line 48
    invoke-direct {v0, v5, v6, v7}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v9

    const-wide/16 v10, 0x1

    add-long v12, v6, v10

    .line 49
    invoke-direct {v0, v3, v12, v13}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v14

    .line 50
    invoke-direct {v0, v9, v12, v13}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v15

    .line 51
    invoke-direct {v0, v8, v6, v7}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v8

    .line 52
    invoke-direct {v0, v1, v6, v7}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v1

    .line 54
    new-instance v0, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    sub-long v10, v6, v10

    invoke-direct {v0, v4, v5, v10, v11}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V

    .line 56
    new-instance v10, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    invoke-direct {v10, v3, v9, v6, v7}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V

    .line 58
    new-instance v9, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    invoke-direct {v9, v14, v15, v12, v13}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V

    .line 60
    new-instance v11, Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-object v3, v11

    move-object v4, v8

    move-object v5, v1

    move-wide/from16 v6, p3

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JZ)V

    .line 63
    new-instance v7, Lorg/briarproject/bramble/api/transport/TransportKeys;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v4, v10

    move-object v5, v9

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/api/transport/TransportKeys;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V

    return-object v7
.end method

.method public encodeTag([BLorg/briarproject/bramble/api/crypto/SecretKey;IJ)V
    .locals 4

    .line 115
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    if-ltz p3, :cond_2

    const v0, 0xffff

    if-gt p3, v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_1

    const-wide v2, 0xffffffffL

    cmp-long v0, p4, v2

    if-gtz v0, :cond_1

    .line 121
    new-instance v0, Lorg/spongycastle/crypto/digests/Blake2bDigest;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object p2

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, p2, v2, v3, v3}, Lorg/spongycastle/crypto/digests/Blake2bDigest;-><init>([BI[B[B)V

    .line 123
    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    if-lt p2, v1, :cond_0

    const/4 v2, 0x2

    .line 127
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 128
    invoke-static {p3, v2, v3}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    .line 129
    array-length p3, v2

    invoke-interface {v0, v2, v3, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    const/16 p3, 0x8

    .line 130
    new-array p3, p3, [B

    .line 131
    invoke-static {p4, p5, p3, v3}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint64(J[BI)V

    .line 132
    array-length p4, p3

    invoke-interface {v0, p3, v3, p4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 133
    new-array p2, p2, [B

    .line 134
    invoke-interface {v0, p2, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    invoke-static {p2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public rotateTransportKeys(Lorg/briarproject/bramble/api/transport/TransportKeys;J)Lorg/briarproject/bramble/api/transport/TransportKeys;
    .locals 20

    move-object/from16 v0, p0

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getRotationPeriod()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-ltz v5, :cond_0

    return-object p1

    .line 70
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getPreviousIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v4

    .line 71
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v5

    .line 72
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getNextIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v6

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-result-object v7

    .line 74
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getRotationPeriod()J

    move-result-wide v8

    .line 75
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->isActive()Z

    move-result v16

    const-wide/16 v17, 0x1

    add-long v8, v8, v17

    move-wide v13, v8

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    :goto_0
    cmp-long v8, v13, p2

    if-gtz v8, :cond_1

    .line 80
    invoke-virtual {v6}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    add-long v8, v13, v17

    invoke-direct {v0, v5, v8, v9}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    .line 81
    invoke-virtual {v6}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v10

    invoke-direct {v0, v10, v8, v9}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v10

    .line 82
    new-instance v15, Lorg/briarproject/bramble/api/transport/IncomingKeys;

    invoke-direct {v15, v5, v10, v8, v9}, Lorg/briarproject/bramble/api/transport/IncomingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V

    .line 83
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    invoke-direct {v0, v5, v13, v14}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v11

    .line 84
    invoke-virtual {v7}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v5

    invoke-direct {v0, v5, v13, v14}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl;->rotateKey(Lorg/briarproject/bramble/api/crypto/SecretKey;J)Lorg/briarproject/bramble/api/crypto/SecretKey;

    move-result-object v12

    .line 85
    new-instance v7, Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-object v10, v7

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;-><init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;JZ)V

    move-wide v13, v8

    move-object/from16 v19, v5

    move-object v5, v4

    move-object v4, v6

    move-object/from16 v6, v19

    goto :goto_0

    .line 88
    :cond_1
    new-instance v8, Lorg/briarproject/bramble/api/transport/TransportKeys;

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    move-object v1, v8

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/briarproject/bramble/api/transport/TransportKeys;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V

    return-object v8
.end method
