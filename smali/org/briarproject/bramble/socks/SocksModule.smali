.class public Lorg/briarproject/bramble/socks/SocksModule;
.super Ljava/lang/Object;
.source "SocksModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideTorSocketFactory()Ljavax/net/SocketFactory;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 19
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "127.0.0.1"

    const v2, 0xe6aa

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 21
    new-instance v1, Lorg/briarproject/bramble/socks/SocksSocketFactory;

    const/16 v2, 0x1388

    const/16 v3, 0x7530

    invoke-direct {v1, v0, v2, v3}, Lorg/briarproject/bramble/socks/SocksSocketFactory;-><init>(Ljava/net/SocketAddress;II)V

    return-object v1
.end method
