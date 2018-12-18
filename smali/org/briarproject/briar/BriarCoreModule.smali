.class public Lorg/briarproject/briar/BriarCoreModule;
.super Ljava/lang/Object;
.source "BriarCoreModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lorg/briarproject/briar/blog/BlogModule;,
        Lorg/briarproject/briar/client/BriarClientModule;,
        Lorg/briarproject/briar/feed/FeedModule;,
        Lorg/briarproject/briar/feed/DnsModule;,
        Lorg/briarproject/briar/forum/ForumModule;,
        Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;,
        Lorg/briarproject/briar/introduction/IntroductionModule;,
        Lorg/briarproject/briar/messaging/MessagingModule;,
        Lorg/briarproject/briar/privategroup/PrivateGroupModule;,
        Lorg/briarproject/briar/sharing/SharingModule;,
        Lorg/briarproject/briar/test/TestModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initEagerSingletons(Lorg/briarproject/briar/BriarCoreEagerSingletons;)V
    .locals 1

    .line 33
    new-instance v0, Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;)V

    .line 34
    new-instance v0, Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;)V

    .line 35
    new-instance v0, Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;)V

    .line 36
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;)V

    .line 37
    new-instance v0, Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;)V

    .line 38
    new-instance v0, Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;)V

    .line 39
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;)V

    .line 40
    new-instance v0, Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/briar/BriarCoreEagerSingletons;->inject(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;)V

    return-void
.end method
