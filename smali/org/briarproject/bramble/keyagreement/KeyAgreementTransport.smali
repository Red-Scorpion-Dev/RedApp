.class Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;
.super Ljava/lang/Object;
.source "KeyAgreementTransport.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final kac:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

.field private final reader:Lorg/briarproject/bramble/api/record/RecordReader;

.field private final writer:Lorg/briarproject/bramble/api/record/RecordWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p3, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->kac:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    .line 42
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/record/RecordReaderFactory;->createRecordReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/record/RecordReader;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->reader:Lorg/briarproject/bramble/api/record/RecordReader;

    .line 44
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object p1

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object p1

    invoke-interface {p1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 45
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/record/RecordWriterFactory;->createRecordWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/record/RecordWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    return-void
.end method

.method private readRecord(B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;
        }
    .end annotation

    .line 99
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->reader:Lorg/briarproject/bramble/api/record/RecordReader;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/record/RecordReader;->readRecord()Lorg/briarproject/bramble/api/record/Record;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getProtocolVersion()B

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 103
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getRecordType()B

    move-result v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    if-ne v1, p1, :cond_0

    .line 105
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/record/Record;->getPayload()[B

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {p1, v3}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Z)V

    throw p1

    .line 104
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {p1, v4}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Z)V

    throw p1

    .line 102
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {p1, v3}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Z)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lorg/briarproject/bramble/keyagreement/AbortException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private tryToClose(Z)V
    .locals 2

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->kac:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getReader()Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionReader;->dispose(ZZ)V

    .line 85
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->kac:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;->getWriter()Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/plugin/TransportConnectionWriter;->dispose(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private writeRecord(B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    new-instance v1, Lorg/briarproject/bramble/api/record/Record;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1, p2}, Lorg/briarproject/bramble/api/record/Record;-><init>(BB[B)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/record/RecordWriter;->writeRecord(Lorg/briarproject/bramble/api/record/Record;)V

    .line 93
    iget-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->writer:Lorg/briarproject/bramble/api/record/RecordWriter;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/record/RecordWriter;->flush()V

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->kac:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    move-result-object v0

    return-object v0
.end method

.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->kac:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    return-object v0
.end method

.method receiveConfirm()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->readRecord(B)[B

    move-result-object v0

    return-object v0
.end method

.method receiveKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/keyagreement/AbortException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->readRecord(B)[B

    move-result-object v0

    return-object v0
.end method

.method sendAbort(Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 74
    :try_start_0
    new-array v1, v1, [B

    invoke-direct {p0, v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->writeRecord(B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    sget-object v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 79
    :goto_0
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->tryToClose(Z)V

    return-void
.end method

.method sendConfirm([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->writeRecord(B[B)V

    return-void
.end method

.method sendKey([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTransport;->writeRecord(B[B)V

    return-void
.end method
