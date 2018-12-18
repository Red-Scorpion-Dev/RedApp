.class public Lorg/briarproject/briar/forum/ForumModule;
.super Ljava/lang/Object;
.source "ForumModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;
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
.method provideForumFactory(Lorg/briarproject/briar/forum/ForumFactoryImpl;)Lorg/briarproject/briar/api/forum/ForumFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideForumManager(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/forum/ForumManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 34
    sget-object v0, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    return-object p1
.end method

.method provideForumPostFactory(Lorg/briarproject/briar/forum/ForumPostFactoryImpl;)Lorg/briarproject/briar/api/forum/ForumPostFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideForumPostValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/forum/ForumPostValidator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 55
    new-instance v0, Lorg/briarproject/briar/forum/ForumPostValidator;

    invoke-direct {v0, p2, p3, p4}, Lorg/briarproject/briar/forum/ForumPostValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 57
    sget-object p2, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, v0}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v0
.end method
