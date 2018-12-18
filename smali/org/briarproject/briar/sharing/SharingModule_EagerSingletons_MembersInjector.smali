.class public final Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "SharingModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blogSharingValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final forumSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final forumSharingValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumSharingValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumSharingValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->blogSharingValidatorProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->forumSharingValidatorProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->forumSharingManagerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->blogSharingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogSharingValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumSharingValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectBlogSharingManager(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    return-void
.end method

.method public static injectBlogSharingValidator(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lorg/briarproject/briar/sharing/BlogSharingValidator;

    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;->blogSharingValidator:Lorg/briarproject/briar/sharing/BlogSharingValidator;

    return-void
.end method

.method public static injectForumSharingManager(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    return-void
.end method

.method public static injectForumSharingValidator(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/briarproject/briar/sharing/ForumSharingValidator;

    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;->forumSharingValidator:Lorg/briarproject/briar/sharing/ForumSharingValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->blogSharingValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectBlogSharingValidator(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->forumSharingValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectForumSharingValidator(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->forumSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->blogSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectBlogSharingManager(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    return-void
.end method
