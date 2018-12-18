.class Lorg/briarproject/bramble/reliability/SlipEncoder;
.super Ljava/lang/Object;
.source "SlipEncoder.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reliability/WriteHandler;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final END:B = -0x40t

.field private static final ESC:B = -0x25t

.field private static final TEND:B = -0x24t

.field private static final TESC:B = -0x23t


# instance fields
.field private final writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/reliability/WriteHandler;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/reliability/SlipEncoder;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    return-void
.end method


# virtual methods
.method public handleWrite([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 27
    :goto_0
    array-length v3, p1

    const/16 v4, -0x25

    const/16 v5, -0x40

    if-ge v0, v3, :cond_2

    .line 28
    aget-byte v3, p1, v0

    if-eq v3, v5, :cond_0

    aget-byte v3, p1, v0

    if-ne v3, v4, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    new-array v0, v2, [B

    .line 30
    aput-byte v5, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x1

    .line 31
    :goto_1
    array-length v7, p1

    if-ge v1, v7, :cond_5

    .line 32
    aget-byte v7, p1, v1

    if-ne v7, v5, :cond_3

    add-int/lit8 v7, v6, 0x1

    .line 33
    aput-byte v4, v0, v6

    add-int/lit8 v6, v7, 0x1

    const/16 v8, -0x24

    .line 34
    aput-byte v8, v0, v7

    goto :goto_2

    .line 35
    :cond_3
    aget-byte v7, p1, v1

    if-ne v7, v4, :cond_4

    add-int/lit8 v7, v6, 0x1

    .line 36
    aput-byte v4, v0, v6

    add-int/lit8 v6, v7, 0x1

    const/16 v8, -0x23

    .line 37
    aput-byte v8, v0, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v6, 0x1

    .line 39
    aget-byte v8, p1, v1

    aput-byte v8, v0, v6

    move v6, v7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v2, v3

    .line 42
    aput-byte v5, v0, v2

    .line 43
    iget-object p1, p0, Lorg/briarproject/bramble/reliability/SlipEncoder;->writeHandler:Lorg/briarproject/bramble/api/reliability/WriteHandler;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/reliability/WriteHandler;->handleWrite([B)V

    return-void
.end method
