.class Lorg/briarproject/bramble/data/MetadataParserImpl;
.super Ljava/lang/Object;
.source "MetadataParserImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/data/MetadataParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/bramble/data/MetadataParserImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    return-void
.end method

.method private parseObject(Lorg/briarproject/bramble/api/data/BdfReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    return-object p1

    .line 59
    :cond_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 60
    :cond_1
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasLong()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 61
    :cond_2
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasDouble()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 62
    :cond_3
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasString()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_4
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasRaw()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readRaw()[B

    move-result-object p1

    return-object p1

    .line 64
    :cond_5
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasList()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readList()Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1

    .line 65
    :cond_6
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->hasDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1

    .line 66
    :cond_7
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private parseValue([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    iget-object p1, p0, Lorg/briarproject/bramble/data/MetadataParserImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/data/BdfReaderFactory;->createReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/data/BdfReader;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/data/MetadataParserImpl;->parseObject(Lorg/briarproject/bramble/api/data/BdfReader;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->eof()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method


# virtual methods
.method public parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 36
    :try_start_0
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/db/Metadata;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/briarproject/bramble/api/db/Metadata;->REMOVE:[B

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lorg/briarproject/bramble/data/MetadataParserImpl;->parseValue([B)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 42
    throw p1
.end method
