.class Lorg/briarproject/bramble/reliability/SlipDecoder;
.super Ljava/lang/Object;
.source "SlipDecoder.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reliability/ReadHandler;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final END:B = -0x40t

.field private static final ESC:B = -0x25t

.field private static final TEND:B = -0x24t

.field private static final TESC:B = -0x23t


# instance fields
.field private final buf:[B

.field private decodedLength:I

.field private escape:Z

.field private final readHandler:Lorg/briarproject/bramble/api/reliability/ReadHandler;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/reliability/ReadHandler;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    .line 22
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->readHandler:Lorg/briarproject/bramble/api/reliability/ReadHandler;

    .line 26
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    return-void
.end method

.method private reset(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    .line 79
    iput p1, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    return-void
.end method


# virtual methods
.method public handleRead([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_c

    .line 32
    aget-byte v2, p1, v1

    const/16 v3, -0x40

    const/4 v4, 0x1

    if-eq v2, v3, :cond_9

    packed-switch v2, :pswitch_data_0

    .line 70
    iget-boolean v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    iget-object v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    iget v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    goto/16 :goto_2

    .line 70
    :cond_1
    :goto_1
    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto/16 :goto_2

    .line 60
    :pswitch_0
    iget-boolean v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    if-eqz v2, :cond_3

    .line 61
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    .line 62
    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    iget-object v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto/16 :goto_2

    .line 63
    :cond_2
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    iget v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    const/16 v4, -0x25

    aput-byte v4, v2, v3

    goto/16 :goto_2

    .line 65
    :cond_3
    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    iget-object v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto/16 :goto_2

    .line 66
    :cond_4
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    iget v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    const/16 v4, -0x23

    aput-byte v4, v2, v3

    goto :goto_2

    .line 50
    :pswitch_1
    iget-boolean v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    if-eqz v2, :cond_6

    .line 51
    iput-boolean v0, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    .line 52
    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    iget-object v5, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    array-length v5, v5

    if-ne v2, v5, :cond_5

    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto :goto_2

    .line 53
    :cond_5
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    iget v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    aput-byte v3, v2, v4

    goto :goto_2

    .line 55
    :cond_6
    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    iget-object v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_7

    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto :goto_2

    .line 56
    :cond_7
    iget-object v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    iget v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    const/16 v4, -0x24

    aput-byte v4, v2, v3

    goto :goto_2

    .line 46
    :pswitch_2
    iget-boolean v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    if-eqz v2, :cond_8

    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto :goto_2

    .line 47
    :cond_8
    iput-boolean v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    goto :goto_2

    .line 34
    :cond_9
    iget-boolean v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->escape:Z

    if-eqz v2, :cond_a

    .line 35
    invoke-direct {p0, v4}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    goto :goto_2

    .line 37
    :cond_a
    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    if-lez v2, :cond_b

    .line 38
    iget v2, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    new-array v2, v2, [B

    .line 39
    iget-object v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->buf:[B

    iget v4, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->decodedLength:I

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v3, p0, Lorg/briarproject/bramble/reliability/SlipDecoder;->readHandler:Lorg/briarproject/bramble/api/reliability/ReadHandler;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/reliability/ReadHandler;->handleRead([B)V

    .line 42
    :cond_b
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/reliability/SlipDecoder;->reset(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch -0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
