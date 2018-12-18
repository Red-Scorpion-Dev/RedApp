.class Lorg/briarproject/bramble/plugin/tcp/MappingResult;
.super Ljava/lang/Object;
.source "MappingResult.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final external:Ljava/net/InetAddress;

.field private final internal:Ljava/net/InetAddress;

.field private final port:I

.field private final succeeded:Z


# direct methods
.method constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->internal:Ljava/net/InetAddress;

    .line 24
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->external:Ljava/net/InetAddress;

    .line 25
    iput p3, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->port:I

    .line 26
    iput-boolean p4, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->succeeded:Z

    return-void
.end method


# virtual methods
.method getExternal()Ljava/net/InetSocketAddress;
    .locals 3

    .line 36
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->external:Ljava/net/InetAddress;

    iget v2, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getInternal()Ljava/net/InetSocketAddress;
    .locals 3

    .line 31
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->internal:Ljava/net/InetAddress;

    iget v2, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method isUsable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->external:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->port:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tcp/MappingResult;->succeeded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
