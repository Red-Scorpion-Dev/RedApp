.class public Lorg/briarproject/briar/blog/BlogModule;
.super Ljava/lang/Object;
.source "BlogModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBlogFactory(Lorg/briarproject/briar/blog/BlogFactoryImpl;)Lorg/briarproject/briar/api/blog/BlogFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideBlogManager(Lorg/briarproject/briar/blog/BlogManagerImpl;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/api/blog/BlogManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 39
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 40
    invoke-interface {p3, p1}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 41
    sget-object p2, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p4, p2, p3, p1}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    return-object p1
.end method

.method provideBlogPostFactory(Lorg/briarproject/briar/blog/BlogPostFactoryImpl;)Lorg/briarproject/briar/api/blog/BlogPostFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideBlogPostValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/blog/BlogPostValidator;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 64
    new-instance v7, Lorg/briarproject/briar/blog/BlogPostValidator;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/blog/BlogPostValidator;-><init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 67
    sget-object p2, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, v7}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v7
.end method
