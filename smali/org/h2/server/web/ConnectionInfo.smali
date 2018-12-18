.class public Lorg/h2/server/web/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/server/web/ConnectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public driver:Ljava/lang/String;

.field lastAccess:I

.field name:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x7c

    .line 47
    invoke-static {p1, v1, v0}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1, v0}, Lorg/h2/server/web/ConnectionInfo;->get([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0}, Lorg/h2/server/web/ConnectionInfo;->get([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;

    const/4 v0, 0x2

    .line 50
    invoke-static {p1, v0}, Lorg/h2/server/web/ConnectionInfo;->get([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    const/4 v0, 0x3

    .line 51
    invoke-static {p1, v0}, Lorg/h2/server/web/ConnectionInfo;->get([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    return-void
.end method

.method private static get([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lorg/h2/server/web/ConnectionInfo;

    invoke-virtual {p0, p1}, Lorg/h2/server/web/ConnectionInfo;->compareTo(Lorg/h2/server/web/ConnectionInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/server/web/ConnectionInfo;)I
    .locals 1

    .line 64
    iget v0, p0, Lorg/h2/server/web/ConnectionInfo;->lastAccess:I

    iget p1, p1, Lorg/h2/server/web/ConnectionInfo;->lastAccess:I

    invoke-static {v0, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method getString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lorg/h2/util/StringUtils;->arrayCombine([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
