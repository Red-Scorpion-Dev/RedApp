.class public final Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ReblogFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/blog/ReblogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final feedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedController;",
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
            "Lorg/briarproject/briar/android/blog/FeedController;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;->feedControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/blog/ReblogFragment;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectFeedController(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/blog/FeedController;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/blog/ReblogFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/blog/ReblogFragment;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;->feedControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/FeedController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;->injectFeedController(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/blog/FeedController;)V

    return-void
.end method
