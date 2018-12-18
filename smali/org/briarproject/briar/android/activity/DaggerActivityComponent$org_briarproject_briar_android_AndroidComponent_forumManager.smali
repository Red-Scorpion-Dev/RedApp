.class Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;
.super Ljava/lang/Object;
.source "DaggerActivityComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/activity/DaggerActivityComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "org_briarproject_briar_android_AndroidComponent_forumManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lorg/briarproject/briar/api/forum/ForumManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidComponent:Lorg/briarproject/briar/android/AndroidComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/AndroidComponent;)V
    .locals 0

    .line 2587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2588
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2582
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;->get()Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/forum/ForumManager;
    .locals 2

    .line 2593
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2594
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->forumManager()Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2593
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    return-object v0
.end method
