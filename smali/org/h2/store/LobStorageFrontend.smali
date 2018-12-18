.class public Lorg/h2/store/LobStorageFrontend;
.super Ljava/lang/Object;
.source "LobStorageFrontend.java"

# interfaces
.implements Lorg/h2/store/LobStorageInterface;


# static fields
.field public static final TABLE_ID_SESSION_VARIABLE:I = -0x1

.field public static final TABLE_RESULT:I = -0x3

.field public static final TABLE_TEMP:I = -0x2


# instance fields
.field private final handler:Lorg/h2/store/DataHandler;


# direct methods
.method public constructor <init>(Lorg/h2/store/DataHandler;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/h2/store/LobStorageFrontend;->handler:Lorg/h2/store/DataHandler;

    return-void
.end method


# virtual methods
.method public copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;
    .locals 0

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/h2/store/LobStorageFrontend;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, p2, p3, v0}, Lorg/h2/value/ValueLobDb;->createTempBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/h2/store/LobStorageFrontend;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p1, p2, p3, v0}, Lorg/h2/value/ValueLobDb;->createTempClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    const-wide p3, 0x7fffffffffffffffL

    :cond_0
    move-wide v4, p3

    .line 61
    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance p4, Lorg/h2/store/LobStorageRemoteInputStream;

    iget-object v1, p0, Lorg/h2/store/LobStorageFrontend;->handler:Lorg/h2/store/DataHandler;

    move-object v0, p4

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/h2/store/LobStorageRemoteInputStream;-><init>(Lorg/h2/store/DataHandler;Lorg/h2/value/ValueLobDb;[BJ)V

    invoke-direct {p3, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p3
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllForTable(I)V
    .locals 0

    .line 82
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeLob(Lorg/h2/value/ValueLobDb;)V
    .locals 0

    return-void
.end method

.method public setTable(Lorg/h2/value/ValueLobDb;I)V
    .locals 0

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
