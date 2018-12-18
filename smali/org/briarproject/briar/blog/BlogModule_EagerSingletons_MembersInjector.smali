.class public final Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "BlogModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blogPostValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/blog/BlogPostValidator;",
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
            "Lorg/briarproject/briar/blog/BlogPostValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->blogPostValidatorProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->blogManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/blog/BlogPostValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectBlogManager(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;Lorg/briarproject/briar/api/blog/BlogManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    return-void
.end method

.method public static injectBlogPostValidator(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/blog/BlogPostValidator;

    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;->blogPostValidator:Lorg/briarproject/briar/blog/BlogPostValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->blogPostValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->injectBlogPostValidator(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->blogManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->injectBlogManager(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;Lorg/briarproject/briar/api/blog/BlogManager;)V

    return-void
.end method
