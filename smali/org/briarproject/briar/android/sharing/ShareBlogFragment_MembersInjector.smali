.class public final Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ShareBlogFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/sharing/ShareBlogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ShareBlogController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ShareBlogController;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;->controllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ShareBlogController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/sharing/ShareBlogFragment;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectController(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;Lorg/briarproject/briar/android/sharing/ShareBlogController;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;->controller:Lorg/briarproject/briar/android/sharing/ShareBlogController;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lorg/briarproject/briar/android/sharing/ShareBlogFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/ShareBlogController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;Lorg/briarproject/briar/android/sharing/ShareBlogController;)V

    return-void
.end method
