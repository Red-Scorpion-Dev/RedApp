.class Lorg/briarproject/bramble/record/RecordReaderImpl;
.super Ljava/lang/Object;
.source "RecordReaderImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/record/RecordReader;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final header:[B

.field private final in:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->header:[B

    .line 26
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->in:Ljava/io/DataInputStream;

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

    .line 44
    iget-object v0, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public readRecord()Lorg/briarproject/bramble/api/record/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->in:Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->header:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->header:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 33
    iget-object v1, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->header:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    .line 34
    iget-object v2, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->header:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/briarproject/bramble/util/ByteUtils;->readUint16([BI)I

    move-result v2

    if-ltz v2, :cond_0

    const v3, 0xc000

    if-gt v2, v3, :cond_0

    .line 37
    new-array v2, v2, [B

    .line 38
    iget-object v3, p0, Lorg/briarproject/bramble/record/RecordReaderImpl;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 39
    new-instance v3, Lorg/briarproject/bramble/api/record/Record;

    invoke-direct {v3, v0, v1, v2}, Lorg/briarproject/bramble/api/record/Record;-><init>(BB[B)V

    return-object v3

    .line 36
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v0
.end method
