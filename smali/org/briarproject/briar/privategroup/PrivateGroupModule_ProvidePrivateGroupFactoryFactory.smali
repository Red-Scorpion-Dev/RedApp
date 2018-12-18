.class public final Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;
.super Ljava/lang/Object;
.source "PrivateGroupModule_ProvidePrivateGroupFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

.field private final privateGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;-><init>(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->proxyProvidePrivateGroupFactory(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidePrivateGroupFactory(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
    .locals 0

    .line 43
    check-cast p1, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule;->providePrivateGroupFactory(Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->get()Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->module:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->provideInstance(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    move-result-object v0

    return-object v0
.end method
