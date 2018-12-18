.class public Lorg/h2/store/FileStoreOutputStream;
.super Ljava/io/OutputStream;
.source "FileStoreOutputStream.java"


# instance fields
.field private final buffer:[B

.field private final compress:Lorg/h2/tools/CompressTool;

.field private final compressionAlgorithm:Ljava/lang/String;

.field private final page:Lorg/h2/store/Data;

.field private store:Lorg/h2/store/FileStore;


# direct methods
.method public constructor <init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->buffer:[B

    .line 24
    iput-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->store:Lorg/h2/store/FileStore;

    if-eqz p3, :cond_0

    .line 26
    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->compress:Lorg/h2/tools/CompressTool;

    .line 27
    iput-object p3, p0, Lorg/h2/store/FileStoreOutputStream;->compressionAlgorithm:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->compress:Lorg/h2/tools/CompressTool;

    .line 30
    iput-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->compressionAlgorithm:Ljava/lang/String;

    :goto_0
    const/16 p1, 0x10

    .line 32
    invoke-static {p2, p1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->store:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/FileStoreOutputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/FileStore;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iput-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->store:Lorg/h2/store/FileStore;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->store:Lorg/h2/store/FileStore;

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->buffer:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 38
    iget-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->buffer:[B

    invoke-virtual {p0, p1}, Lorg/h2/store/FileStoreOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/store/FileStoreOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    if-lez p3, :cond_3

    .line 49
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 50
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->compress:Lorg/h2/tools/CompressTool;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 51
    array-length v0, p1

    if-eq p3, v0, :cond_1

    .line 52
    :cond_0
    new-array v0, p3, [B

    .line 53
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    const/4 p2, 0x0

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->compress:Lorg/h2/tools/CompressTool;

    iget-object v2, p0, Lorg/h2/store/FileStoreOutputStream;->compressionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/h2/tools/CompressTool;->compress([BLjava/lang/String;)[B

    move-result-object p1

    .line 59
    array-length v0, p1

    .line 60
    iget-object v2, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    add-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 61
    iget-object v2, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2, v0}, Lorg/h2/store/Data;->writeInt(I)V

    .line 62
    iget-object v2, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2, p3}, Lorg/h2/store/Data;->writeInt(I)V

    .line 63
    iget-object p3, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {p3, p1, p2, v0}, Lorg/h2/store/Data;->write([BII)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    add-int/lit8 v2, p3, 0x4

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 66
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0, p3}, Lorg/h2/store/Data;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/Data;->write([BII)V

    .line 69
    :goto_0
    iget-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {p1}, Lorg/h2/store/Data;->fillAligned()V

    .line 70
    iget-object p1, p0, Lorg/h2/store/FileStoreOutputStream;->store:Lorg/h2/store/FileStore;

    iget-object p2, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    iget-object p3, p0, Lorg/h2/store/FileStoreOutputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {p3}, Lorg/h2/store/Data;->length()I

    move-result p3

    invoke-virtual {p1, p2, v1, p3}, Lorg/h2/store/FileStore;->write([BII)V

    :cond_3
    return-void
.end method
