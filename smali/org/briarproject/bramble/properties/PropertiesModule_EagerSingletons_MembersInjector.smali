.class public final Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "PropertiesModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final transportPropertyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final transportPropertyValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->transportPropertyValidatorProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/properties/TransportPropertyValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectTransportPropertyManager(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;->transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    return-void
.end method

.method public static injectTransportPropertyValidator(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/bramble/properties/TransportPropertyValidator;

    iput-object p1, p0, Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;->transportPropertyValidator:Lorg/briarproject/bramble/properties/TransportPropertyValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->transportPropertyValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->injectTransportPropertyValidator(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    invoke-static {p1, v0}, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->injectTransportPropertyManager(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)V

    return-void
.end method
