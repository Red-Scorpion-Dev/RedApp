.class public final Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;
.super Ljava/lang/Object;
.source "ClientModule_ProvideClientHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/client/ClientHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ClientHelperImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/client/ClientModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/client/ClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ClientHelperImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->module:Lorg/briarproject/bramble/client/ClientModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->clientHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/client/ClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ClientHelperImpl;",
            ">;)",
            "Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;-><init>(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/client/ClientHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/client/ClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ClientHelperImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/client/ClientHelper;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->proxyProvideClientHelper(Lorg/briarproject/bramble/client/ClientModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideClientHelper(Lorg/briarproject/bramble/client/ClientModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/client/ClientHelper;
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/bramble/client/ClientHelperImpl;

    .line 41
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/client/ClientModule;->provideClientHelper(Lorg/briarproject/bramble/client/ClientHelperImpl;)Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/client/ClientHelper;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->get()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/client/ClientHelper;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->module:Lorg/briarproject/bramble/client/ClientModule;

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->clientHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->provideInstance(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v0

    return-object v0
.end method
