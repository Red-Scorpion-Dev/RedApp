.class public final Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;
.super Ljava/lang/Object;
.source "DnsModule_ProvideDnsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/Dns;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/feed/DnsModule;

.field private final noDnsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/NoDns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/feed/DnsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/DnsModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/NoDns;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->module:Lorg/briarproject/briar/feed/DnsModule;

    .line 20
    iput-object p2, p0, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->noDnsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/feed/DnsModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/DnsModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/NoDns;",
            ">;)",
            "Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;-><init>(Lorg/briarproject/briar/feed/DnsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/feed/DnsModule;Ljavax/inject/Provider;)Lokhttp3/Dns;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/feed/DnsModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/feed/NoDns;",
            ">;)",
            "Lokhttp3/Dns;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->proxyProvideDns(Lorg/briarproject/briar/feed/DnsModule;Ljava/lang/Object;)Lokhttp3/Dns;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDns(Lorg/briarproject/briar/feed/DnsModule;Ljava/lang/Object;)Lokhttp3/Dns;
    .locals 0

    .line 38
    check-cast p1, Lorg/briarproject/briar/feed/NoDns;

    .line 39
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/feed/DnsModule;->provideDns(Lorg/briarproject/briar/feed/NoDns;)Lokhttp3/Dns;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Dns;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->get()Lokhttp3/Dns;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Dns;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->module:Lorg/briarproject/briar/feed/DnsModule;

    iget-object v1, p0, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->noDnsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->provideInstance(Lorg/briarproject/briar/feed/DnsModule;Ljavax/inject/Provider;)Lokhttp3/Dns;

    move-result-object v0

    return-object v0
.end method
