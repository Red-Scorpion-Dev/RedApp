.class Lorg/briarproject/bramble/sync/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/MessageFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final FORMAT_VERSION_BYTES:[B


# instance fields
.field private final crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 27
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->FORMAT_VERSION_BYTES:[B

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    return-void
.end method

.method private getMessageId(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 6

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string v1, "org.briarproject.bramble/MESSAGE_BLOCK"

    const/4 v2, 0x2

    new-array v3, v2, [[B

    sget-object v4, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->FORMAT_VERSION_BYTES:[B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-interface {v0, v1, v3}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->hash(Ljava/lang/String;[[B)[B

    move-result-object p4

    const/16 v0, 0x8

    .line 49
    new-array v0, v0, [B

    .line 50
    invoke-static {p2, p3, v0, v5}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint64(J[BI)V

    .line 51
    iget-object p2, p0, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    const-string p3, "org.briarproject.bramble/MESSAGE_ID"

    const/4 v1, 0x4

    new-array v1, v1, [[B

    sget-object v3, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->FORMAT_VERSION_BYTES:[B

    aput-object v3, v1, v5

    .line 52
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    aput-object p1, v1, v4

    aput-object v0, v1, v2

    const/4 p1, 0x3

    aput-object p4, v1, p1

    .line 51
    invoke-interface {p2, p3, v1}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->hash(Ljava/lang/String;[[B)[B

    move-result-object p1

    .line 53
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    return-object p2
.end method


# virtual methods
.method public createMessage(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 8

    .line 39
    array-length v0, p4

    if-eqz v0, :cond_1

    .line 40
    array-length v0, p4

    const v1, 0x8000

    if-gt v0, v1, :cond_0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->getMessageId(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    .line 43
    new-instance v0, Lorg/briarproject/bramble/api/sync/Message;

    move-object v2, v0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/briarproject/bramble/api/sync/Message;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;J[B)V

    return-object v0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public createMessage([B)Lorg/briarproject/bramble/api/sync/Message;
    .locals 10

    .line 58
    array-length v0, p1

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    .line 60
    array-length v0, p1

    const v2, 0x8028

    if-gt v0, v2, :cond_0

    const/16 v0, 0x20

    .line 62
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 63
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance v6, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v6, v2}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 65
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/ByteUtils;->readUint64([BI)J

    move-result-wide v7

    .line 66
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v9, v0, [B

    .line 67
    array-length v0, v9

    invoke-static {p1, v1, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    invoke-direct {p0, v6, v7, v8, v9}, Lorg/briarproject/bramble/sync/MessageFactoryImpl;->getMessageId(Lorg/briarproject/bramble/api/sync/GroupId;J[B)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 69
    new-instance p1, Lorg/briarproject/bramble/api/sync/Message;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lorg/briarproject/bramble/api/sync/Message;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;J[B)V

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getRawMessage(Lorg/briarproject/bramble/api/sync/Message;)[B
    .locals 8

    .line 74
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getBody()[B

    move-result-object v0

    .line 75
    array-length v1, v0

    const/16 v2, 0x28

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 76
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7, v1, v4}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint64(J[BI)V

    .line 78
    array-length p1, v0

    invoke-static {v0, v5, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
