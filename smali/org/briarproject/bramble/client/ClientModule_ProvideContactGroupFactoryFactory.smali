.class public final Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;
.super Ljava/lang/Object;
.source "ClientModule_ProvideContactGroupFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;",
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
            "Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->module:Lorg/briarproject/bramble/client/ClientModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/client/ClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;-><init>(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/client/ClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->proxyProvideContactGroupFactory(Lorg/briarproject/bramble/client/ClientModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideContactGroupFactory(Lorg/briarproject/bramble/client/ClientModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/client/ClientModule;->provideContactGroupFactory(Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->get()Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/client/ContactGroupFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->module:Lorg/briarproject/bramble/client/ClientModule;

    iget-object v1, p0, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->provideInstance(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    move-result-object v0

    return-object v0
.end method
