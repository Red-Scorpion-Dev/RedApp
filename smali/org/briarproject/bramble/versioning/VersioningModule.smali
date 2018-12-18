.class public Lorg/briarproject/bramble/versioning/VersioningModule;
.super Ljava/lang/Object;
.source "VersioningModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideClientVersioningManager(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 37
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 38
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerService(Lorg/briarproject/bramble/api/lifecycle/Service;)V

    .line 39
    invoke-interface {p3, p1}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 40
    sget-object p2, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p4, p2, p3, p1}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    return-object p1
.end method

.method provideClientVersioningValidator(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/bramble/versioning/ClientVersioningValidator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 50
    new-instance v0, Lorg/briarproject/bramble/versioning/ClientVersioningValidator;

    invoke-direct {v0, p1, p2, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 52
    sget-object p1, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p4, p1, p2, v0}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v0
.end method
