.class Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;
.super Ljava/lang/Object;
.source "SyncRecordReaderImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/SyncRecordReader;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private eof:Z

.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

.field private nextRecord:Lorg/briarproject/bramble/api/record/Record;

.field private final reader:Lorg/briarproject/bramble/api/record/RecordReader;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordReader;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof:Z

    .line 44
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 45
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->reader:Lorg/briarproject/bramble/api/record/RecordReader;

    return-void
.end method

.method private getNextRecordType()B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getRecordType()B

    move-result v0

    return v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private readMessageIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getPayload()[B

    move-result-object v0

    .line 105
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 106
    array-length v1, v0

    const/16 v2, 0x20

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    div-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 108
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 109
    new-array v5, v2, [B

    .line 110
    invoke-static {v0, v4, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v6, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v6, v5}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    return-object v1

    .line 106
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 105
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private readRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    if-nez v0, :cond_3

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->reader:Lorg/briarproject/bramble/api/record/RecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/record/RecordReader;->readRecord()Lorg/briarproject/bramble/api/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getProtocolVersion()B

    move-result v0

    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getRecordType()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public eof()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 82
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->readRecord()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    .line 86
    iput-boolean v2, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof:Z

    return v2
.end method

.method public hasAck()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->getNextRecordType()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->getNextRecordType()B

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOffer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->getNextRecordType()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->eof()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->getNextRecordType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readAck()Lorg/briarproject/bramble/api/sync/Ack;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->hasAck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/briarproject/bramble/api/sync/Ack;

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->readMessageIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/Ack;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readMessage()Lorg/briarproject/bramble/api/sync/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getPayload()[B

    move-result-object v0

    .line 127
    array-length v1, v0

    const/16 v2, 0x28

    if-le v1, v2, :cond_1

    const/16 v1, 0x20

    .line 130
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ByteUtils;->readUint64([BI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->nextRecord:Lorg/briarproject/bramble/api/record/Record;

    .line 133
    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/sync/MessageFactory;->createMessage([B)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_3
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readOffer()Lorg/briarproject/bramble/api/sync/Offer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->hasOffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lorg/briarproject/bramble/api/sync/Offer;

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->readMessageIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/Offer;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method

.method public readRequest()Lorg/briarproject/bramble/api/sync/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lorg/briarproject/bramble/api/sync/Request;

    invoke-direct {p0}, Lorg/briarproject/bramble/sync/SyncRecordReaderImpl;->readMessageIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/Request;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method
