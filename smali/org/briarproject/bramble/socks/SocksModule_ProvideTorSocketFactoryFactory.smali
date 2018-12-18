.class public final Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;
.super Ljava/lang/Object;
.source "SocksModule_ProvideTorSocketFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljavax/net/SocketFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/socks/SocksModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/socks/SocksModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;->module:Lorg/briarproject/bramble/socks/SocksModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/socks/SocksModule;)Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;-><init>(Lorg/briarproject/bramble/socks/SocksModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/socks/SocksModule;)Ljavax/net/SocketFactory;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;->proxyProvideTorSocketFactory(Lorg/briarproject/bramble/socks/SocksModule;)Ljavax/net/SocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideTorSocketFactory(Lorg/briarproject/bramble/socks/SocksModule;)Ljavax/net/SocketFactory;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/bramble/socks/SocksModule;->provideTorSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/SocketFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;->get()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljavax/net/SocketFactory;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;->module:Lorg/briarproject/bramble/socks/SocksModule;

    invoke-static {v0}, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;->provideInstance(Lorg/briarproject/bramble/socks/SocksModule;)Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method
