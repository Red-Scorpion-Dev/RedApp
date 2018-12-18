.class public Lorg/briarproject/bramble/properties/PropertiesModule;
.super Ljava/lang/Object;
.source "PropertiesModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getTransportPropertyManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 51
    invoke-interface {p1, p5}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 52
    sget-object p1, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p5}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    .line 54
    invoke-interface {p3, p5}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 55
    sget-object p1, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {p4, p1, v0, v0, p5}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    return-object p5
.end method

.method getValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/properties/TransportPropertyValidator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/properties/TransportPropertyValidator;

    invoke-direct {v0, p2, p3, p4}, Lorg/briarproject/bramble/properties/TransportPropertyValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 39
    sget-object p2, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, v0}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v0
.end method
