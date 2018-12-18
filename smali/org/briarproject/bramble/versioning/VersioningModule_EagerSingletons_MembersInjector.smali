.class public final Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "VersioningModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;",
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

.field private final clientVersioningValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningValidator;",
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningValidator;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->clientVersioningValidatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningValidator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectClientVersioningManager(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    return-void
.end method

.method public static injectClientVersioningValidator(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/bramble/versioning/ClientVersioningValidator;

    iput-object p1, p0, Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;->clientVersioningValidator:Lorg/briarproject/bramble/versioning/ClientVersioningValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    invoke-static {p1, v0}, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->injectClientVersioningManager(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->clientVersioningValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->injectClientVersioningValidator(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;Ljava/lang/Object;)V

    return-void
.end method
