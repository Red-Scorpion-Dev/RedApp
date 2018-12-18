.class Lorg/briarproject/bramble/data/MetadataEncoderImpl;
.super Ljava/lang/Object;
.source "MetadataEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/data/MetadataEncoder;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/data/BdfWriterFactory;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/briarproject/bramble/data/MetadataEncoderImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    return-void
.end method

.method private encodeObject(Lorg/briarproject/bramble/api/data/BdfWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 62
    :cond_0
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeLong(J)V

    goto/16 :goto_0

    .line 63
    :cond_1
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeLong(J)V

    goto/16 :goto_0

    .line 64
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeLong(J)V

    goto :goto_0

    .line 65
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeLong(J)V

    goto :goto_0

    .line 66
    :cond_4
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeDouble(D)V

    goto :goto_0

    .line 67
    :cond_5
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeDouble(D)V

    goto :goto_0

    .line 68
    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_7
    instance-of v0, p2, [B

    if-eqz v0, :cond_8

    check-cast p2, [B

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeRaw([B)V

    goto :goto_0

    .line 70
    :cond_8
    instance-of v0, p2, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_9

    check-cast p2, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeRaw([B)V

    goto :goto_0

    .line 71
    :cond_9
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeList(Ljava/util/Collection;)V

    goto :goto_0

    .line 72
    :cond_a
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1, p2}, Lorg/briarproject/bramble/api/data/BdfWriter;->writeDictionary(Ljava/util/Map;)V

    :goto_0
    return-void

    .line 73
    :cond_b
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method


# virtual methods
.method public encode(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/db/Metadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    .line 38
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    iget-object v2, p0, Lorg/briarproject/bramble/data/MetadataEncoderImpl;->bdfWriterFactory:Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/data/BdfWriterFactory;->createWriter(Ljava/io/OutputStream;)Lorg/briarproject/bramble/api/data/BdfWriter;

    move-result-object v2

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    .line 44
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/briarproject/bramble/api/db/Metadata;->REMOVE:[B

    invoke-virtual {v0, v3, v4}, Lorg/briarproject/bramble/api/db/Metadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lorg/briarproject/bramble/data/MetadataEncoderImpl;->encodeObject(Lorg/briarproject/bramble/api/data/BdfWriter;Ljava/lang/Object;)V

    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/briarproject/bramble/api/db/Metadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 52
    throw p1
.end method
