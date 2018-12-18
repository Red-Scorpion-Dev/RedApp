.class public Lorg/briarproject/briar/privategroup/PrivateGroupModule;
.super Ljava/lang/Object;
.source "PrivateGroupModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 36
    sget-object v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    return-object p1
.end method

.method provideGroupMessageFactory(Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;)Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideGroupMessageValidator(Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/GroupMessageValidator;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 60
    new-instance v6, Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/GroupMessageValidator;-><init>(Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;)V

    .line 63
    sget-object p1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p6, p1, p2, v6}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v6
.end method

.method providePrivateGroupFactory(Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
