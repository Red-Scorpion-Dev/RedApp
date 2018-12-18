.class Lorg/briarproject/bramble/keyagreement/PayloadEncoderImpl;
.super Ljava/lang/Object;
.source "PayloadEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/PayloadEncoderImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    return-void
.end method


# virtual methods
.method public encode(Lorg/briarproject/bramble/api/keyagreement/Payload;)[B
    .locals 3

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 33
    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/PayloadEncoderImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/data/BdfWriterFactory;->createWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/data/BdfWriter;

    move-result-object v1

    .line 35
    :try_start_0
    invoke-interface {v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeListStart()V

    .line 36
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/Payload;->getCommitment()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeRaw([B)V

    .line 37
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/Payload;->getTransportDescriptors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;

    .line 38
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;->getDescriptor()Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeList(Ljava/util/Collection;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeListEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
