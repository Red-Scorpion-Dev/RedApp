.class Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;
.super Ljava/lang/Object;
.source "LanTcpPlugin.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LanAddressComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 304
    check-cast p1, Ljava/net/InetSocketAddress;

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin$LanAddressComparator;->compare(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .locals 2

    .line 309
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-lez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 313
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->access$200(Ljava/net/InetAddress;)I

    move-result p1

    .line 314
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-static {p2}, Lorg/briarproject/bramble/plugin/tcp/LanTcpPlugin;->access$200(Ljava/net/InetAddress;)I

    move-result p2

    sub-int/2addr p2, p1

    return p2
.end method
