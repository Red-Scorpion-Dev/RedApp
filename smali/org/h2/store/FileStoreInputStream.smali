.class public Lorg/h2/store/FileStoreInputStream;
.super Ljava/io/InputStream;
.source "FileStoreInputStream.java"


# instance fields
.field private final alwaysClose:Z

.field private final compress:Lorg/h2/tools/CompressTool;

.field private endOfFile:Z

.field private final page:Lorg/h2/store/Data;

.field private remainingInBuffer:I

.field private store:Lorg/h2/store/FileStore;


# direct methods
.method public constructor <init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    .line 30
    iput-boolean p4, p0, Lorg/h2/store/FileStoreInputStream;->alwaysClose:Z

    if-eqz p3, :cond_0

    .line 32
    invoke-static {}, Lorg/h2/tools/CompressTool;->getInstance()Lorg/h2/tools/CompressTool;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 34
    iput-object p3, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    :goto_0
    const/16 p3, 0x10

    .line 36
    invoke-static {p2, p3}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->length()J

    move-result-wide p2

    const-wide/16 v0, 0x30

    cmp-long p4, p2, v0

    if-gtz p4, :cond_1

    .line 39
    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    goto :goto_1

    .line 41
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStoreInputStream;->fillBuffer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 44
    iget-object p1, p1, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    if-gtz v0, :cond_6

    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 92
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->openFile()V

    .line 93
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v2}, Lorg/h2/store/FileStore;->getFilePointer()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 94
    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 98
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 99
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    .line 100
    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    if-gez v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 106
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 108
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    .line 110
    :cond_3
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    iget v4, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->setPos(I)V

    .line 111
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->fillAligned()V

    .line 112
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    sub-int/2addr v0, v2

    .line 113
    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->reset()V

    .line 114
    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    .line 115
    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v4, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v4}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4, v2, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 116
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 117
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    .line 118
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->compress:Lorg/h2/tools/CompressTool;

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    .line 120
    iget v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 121
    iget-object v2, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    iget v4, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-virtual {v2, v1, v3, v4}, Lorg/h2/store/Data;->read([BII)V

    .line 122
    iget-object v2, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->reset()V

    .line 123
    iget-object v2, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 124
    iget-object v2, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2, v3}, Lorg/h2/tools/CompressTool;->expand([B[BI)V

    .line 125
    iput v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    .line 127
    :cond_4
    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->alwaysClose:Z

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeFile()V

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private readBlock([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/h2/store/FileStoreInputStream;->fillBuffer()V

    .line 78
    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 81
    :cond_0
    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 82
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/Data;->read([BII)V

    .line 83
    iget p1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    return p3
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    :goto_0
    return v0
.end method

.method public close()V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/FileStore;->close()V

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iput-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/h2/store/FileStoreInputStream;->store:Lorg/h2/store/FileStore;

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lorg/h2/store/FileStoreInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/h2/store/FileStoreInputStream;->fillBuffer()V

    .line 152
    iget-boolean v0, p0, Lorg/h2/store/FileStoreInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileStoreInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 156
    iget v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/store/FileStoreInputStream;->remainingInBuffer:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/store/FileStoreInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/store/FileStoreInputStream;->readBlock([BII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method
