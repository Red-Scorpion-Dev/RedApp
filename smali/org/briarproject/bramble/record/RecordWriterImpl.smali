.class Lorg/briarproject/bramble/record/RecordWriterImpl;
.super Ljava/lang/Object;
.source "RecordWriterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/record/RecordWriter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final header:[B

.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->header:[B

    .line 23
    iput-object p1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeRecord(Lorg/briarproject/bramble/api/record/Record;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/record/Record;->getPayload()[B

    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->header:[B

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/record/Record;->getProtocolVersion()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 30
    iget-object v1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->header:[B

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/record/Record;->getRecordType()B

    move-result p1

    const/4 v2, 0x1

    aput-byte p1, v1, v2

    .line 31
    array-length p1, v0

    iget-object v1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->header:[B

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lorg/briarproject/bramble/util/ByteUtils;->writeUint16(I[BI)V

    .line 32
    iget-object p1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->header:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 33
    iget-object p1, p0, Lorg/briarproject/bramble/record/RecordWriterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
