.class Lorg/h2/store/LobStorageRemoteInputStream;
.super Ljava/io/InputStream;
.source "LobStorageRemoteInputStream.java"


# instance fields
.field private final handler:Lorg/h2/store/DataHandler;

.field private final hmac:[B

.field private final lob:J

.field private pos:J

.field private remainingBytes:J


# direct methods
.method public constructor <init>(Lorg/h2/store/DataHandler;Lorg/h2/value/ValueLobDb;[BJ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/h2/store/LobStorageRemoteInputStream;->handler:Lorg/h2/store/DataHandler;

    .line 44
    invoke-virtual {p2}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/LobStorageRemoteInputStream;->lob:J

    .line 45
    iput-object p3, p0, Lorg/h2/store/LobStorageRemoteInputStream;->hmac:[B

    .line 46
    iput-wide p4, p0, Lorg/h2/store/LobStorageRemoteInputStream;->remainingBytes:J

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 51
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v1, v2, v0}, Lorg/h2/store/LobStorageRemoteInputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/store/LobStorageRemoteInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, p3

    .line 66
    iget-wide v2, p0, Lorg/h2/store/LobStorageRemoteInputStream;->remainingBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v10, v0

    const/4 p3, -0x1

    if-nez v10, :cond_1

    return p3

    .line 71
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/h2/store/LobStorageRemoteInputStream;->handler:Lorg/h2/store/DataHandler;

    iget-wide v3, p0, Lorg/h2/store/LobStorageRemoteInputStream;->lob:J

    iget-object v5, p0, Lorg/h2/store/LobStorageRemoteInputStream;->hmac:[B

    iget-wide v6, p0, Lorg/h2/store/LobStorageRemoteInputStream;->pos:J

    move-object v8, p1

    move v9, p2

    invoke-interface/range {v2 .. v10}, Lorg/h2/store/DataHandler;->readLob(J[BJ[BII)I

    move-result p1
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return p3

    .line 78
    :cond_2
    iget-wide p2, p0, Lorg/h2/store/LobStorageRemoteInputStream;->remainingBytes:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/h2/store/LobStorageRemoteInputStream;->remainingBytes:J

    .line 79
    iget-wide p2, p0, Lorg/h2/store/LobStorageRemoteInputStream;->pos:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/h2/store/LobStorageRemoteInputStream;->pos:J

    return p1

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public skip(J)J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/h2/store/LobStorageRemoteInputStream;->remainingBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/store/LobStorageRemoteInputStream;->remainingBytes:J

    .line 86
    iget-wide v0, p0, Lorg/h2/store/LobStorageRemoteInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/store/LobStorageRemoteInputStream;->pos:J

    return-wide p1
.end method
