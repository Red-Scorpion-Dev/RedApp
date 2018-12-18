.class public final Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "BlogFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/blog/BlogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/BlogController;",
            ">;"
        }
    .end annotation
.end field

.field private final sharingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingController;",
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
            "Lorg/briarproject/briar/android/blog/BlogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingController;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->blogControllerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->sharingControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/BlogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/blog/BlogFragment;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectBlogController(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/blog/BlogController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    return-void
.end method

.method public static injectSharingController(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/controller/SharingController;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/blog/BlogFragment;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->blogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/BlogController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->injectBlogController(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/blog/BlogController;)V

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->sharingControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/SharingController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->injectSharingController(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/controller/SharingController;)V

    return-void
.end method
