.class Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;
.super Ljava/lang/Object;
.source "SyncRecordWriterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/sync/SyncRecordWriter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

.field private final payload:Ljava/io/ByteArrayOutputStream;

.field private final writer:Lorg/briarproject/bramble/api/record/RecordWriter;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/record/RecordWriter;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->payload:Ljava/io/ByteArrayOutputStream;

    .line 34
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    .line 35
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    return-void
.end method

.method private writeRecord(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    new-instance v1, Lorg/briarproject/bramble/api/record/Record;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->payload:Ljava/io/ByteArrayOutputStream;

    .line 40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Lorg/briarproject/bramble/api/record/Record;-><init>(BB[B)V

    .line 39
    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/record/RecordWriter;->writeRecord(Lorg/briarproject/bramble/api/record/Record;)V

    .line 41
    iget-object p1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->payload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/record/RecordWriter;->flush()V

    return-void
.end method

.method public writeAck(Lorg/briarproject/bramble/api/sync/Ack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Ack;->getMessageIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->payload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writeRecord(B)V

    return-void
.end method

.method public writeMessage(Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->messageFactory:Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/sync/MessageFactory;->getRawMessage(Lorg/briarproject/bramble/api/sync/Message;)[B

    move-result-object p1

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    new-instance v1, Lorg/briarproject/bramble/api/record/Record;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lorg/briarproject/bramble/api/record/Record;-><init>(BB[B)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/record/RecordWriter;->writeRecord(Lorg/briarproject/bramble/api/record/Record;)V

    return-void
.end method

.method public writeOffer(Lorg/briarproject/bramble/api/sync/Offer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Offer;->getMessageIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->payload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 59
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writeRecord(B)V

    return-void
.end method

.method public writeRequest(Lorg/briarproject/bramble/api/sync/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Request;->getMessageIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->payload:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 65
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/sync/SyncRecordWriterImpl;->writeRecord(B)V

    return-void
.end method
