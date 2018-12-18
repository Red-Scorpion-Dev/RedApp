.class public final Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "ForumModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final forumManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;"
        }
    .end annotation
.end field

.field private final forumPostValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumPostValidator;",
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
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumPostValidator;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->forumManagerProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->forumPostValidatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/forum/ForumPostValidator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectForumManager(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;Lorg/briarproject/briar/api/forum/ForumManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    return-void
.end method

.method public static injectForumPostValidator(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/briar/forum/ForumPostValidator;

    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;->forumPostValidator:Lorg/briarproject/briar/forum/ForumPostValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->forumManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->injectForumManager(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;Lorg/briarproject/briar/api/forum/ForumManager;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->forumPostValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->injectForumPostValidator(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;Ljava/lang/Object;)V

    return-void
.end method
