.class public final Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;
.super Ljava/lang/Object;
.source "PropertiesModule_GetTransportPropertyManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientVersioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/properties/PropertiesModule;

.field private final transportPropertyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final validationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/properties/PropertiesModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->module:Lorg/briarproject/bramble/properties/PropertiesModule;

    .line 39
    iput-object p2, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/properties/PropertiesModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;"
        }
    .end annotation

    .line 80
    new-instance v7, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;-><init>(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/properties/PropertiesModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;"
        }
    .end annotation

    .line 66
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 67
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 68
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 69
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 70
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    .line 64
    invoke-static/range {v0 .. v5}, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->proxyGetTransportPropertyManager(Lorg/briarproject/bramble/properties/PropertiesModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetTransportPropertyManager(Lorg/briarproject/bramble/properties/PropertiesModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;
    .locals 6

    .line 96
    move-object v5, p5

    check-cast v5, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 97
    invoke-virtual/range {v0 .. v5}, Lorg/briarproject/bramble/properties/PropertiesModule;->getTransportPropertyManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 96
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->get()Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/properties/TransportPropertyManager;
    .locals 6

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->module:Lorg/briarproject/bramble/properties/PropertiesModule;

    iget-object v1, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->validationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->provideInstance(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-result-object v0

    return-object v0
.end method
