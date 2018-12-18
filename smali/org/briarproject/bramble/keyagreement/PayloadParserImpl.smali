.class Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;
.super Ljava/lang/Object;
.source "PayloadParserImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/keyagreement/PayloadParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/data/BdfReaderFactory;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    return-void
.end method


# virtual methods
.method public parse([B)Lorg/briarproject/bramble/api/keyagreement/Payload;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    if-lt p1, v1, :cond_0

    const/16 v0, 0x59

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 50
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException;

    invoke-direct {p1, v2}, Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException;-><init>(Z)V

    throw p1

    .line 53
    :cond_2
    iget-object p1, p0, Lorg/briarproject/bramble/keyagreement/PayloadParserImpl;->bdfReaderFactory:Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/data/BdfReaderFactory;->createReader(Ljava/io/InputStream;)Lorg/briarproject/bramble/api/data/BdfReader;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->readList()Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/data/BdfList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 56
    invoke-interface {p1}, Lorg/briarproject/bramble/api/data/BdfReader;->eof()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 58
    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p1

    .line 59
    array-length v1, p1

    const/16 v4, 0x10

    if-ne v1, v4, :cond_6

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :goto_0
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/data/BdfList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 63
    invoke-virtual {v0, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 66
    sget-object v5, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 67
    new-instance v6, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;

    invoke-direct {v6, v5, v4}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/data/BdfList;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 69
    sget-object v5, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 70
    new-instance v6, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;

    invoke-direct {v6, v5, v4}, Lorg/briarproject/bramble/api/keyagreement/TransportDescriptor;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/data/BdfList;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_5
    new-instance v0, Lorg/briarproject/bramble/api/keyagreement/Payload;

    invoke-direct {v0, p1, v1}, Lorg/briarproject/bramble/api/keyagreement/Payload;-><init>([BLjava/util/List;)V

    return-object v0

    .line 59
    :cond_6
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 56
    :cond_7
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 55
    :cond_8
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 46
    :cond_9
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method
