.class Lorg/briarproject/bramble/data/BdfWriterImpl;
.super Ljava/lang/Object;
.source "BdfWriterImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/data/BdfWriter;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private writeInt16(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 87
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shl-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeInt32(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 92
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shl-int/lit8 v1, p1, 0x8

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 93
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shl-int/lit8 v1, p1, 0x10

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shl-int/lit8 p1, p1, 0x18

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeInt64(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x38

    shr-long v2, p1, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 99
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v2, 0x8

    shl-long v2, p1, v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 100
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v2, 0x10

    shl-long v2, p1, v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 101
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v2, 0x18

    shl-long v2, p1, v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v2, 0x20

    shl-long v2, p1, v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 103
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v2, 0x28

    shl-long v2, p1, v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 104
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v2, 0x30

    shl-long v2, p1, v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 105
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    shl-long/2addr p1, v1

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 153
    sget-object v0, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 154
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 155
    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeLong(J)V

    goto/16 :goto_1

    .line 156
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeLong(J)V

    goto/16 :goto_1

    .line 157
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeLong(J)V

    goto/16 :goto_1

    .line 158
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeLong(J)V

    goto :goto_1

    .line 159
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeDouble(D)V

    goto :goto_1

    .line 160
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeDouble(D)V

    goto :goto_1

    .line 161
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeRaw([B)V

    goto :goto_1

    .line 163
    :cond_9
    instance-of v0, p1, Lorg/briarproject/bramble/api/Bytes;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/briarproject/bramble/api/Bytes;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/Bytes;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeRaw([B)V

    goto :goto_1

    .line 164
    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeList(Ljava/util/Collection;)V

    goto :goto_1

    .line 165
    :cond_b
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeDictionary(Ljava/util/Map;)V

    goto :goto_1

    .line 166
    :cond_c
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 153
    :cond_d
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeNull()V

    :goto_1
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

    .line 54
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

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

    .line 49
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public writeDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeString(Ljava/lang/String;)V

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 187
    :cond_1
    iget-object p1, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v0, -0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeDictionaryEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeDictionaryStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt64(J)V

    return-void
.end method

.method public writeList(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 148
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v0, -0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeListEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeListStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x80

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x7f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x7fff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 74
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p1

    int-to-short p1, p1

    .line 75
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt16(S)V

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    .line 77
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p1

    .line 78
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt32(I)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt64(J)V

    :goto_0
    return-void
.end method

.method public writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeRaw([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    array-length v0, p1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 134
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 135
    :cond_0
    array-length v0, p1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 137
    array-length v0, p1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt16(S)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 140
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt32(I)V

    .line 142
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 117
    array-length v0, p1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 119
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 120
    :cond_0
    array-length v0, p1

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 122
    array-length v0, p1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt16(S)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 125
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/briarproject/bramble/data/BdfWriterImpl;->writeInt32(I)V

    .line 127
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/data/BdfWriterImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
