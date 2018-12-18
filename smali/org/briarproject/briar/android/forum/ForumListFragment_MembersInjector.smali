.class public final Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ForumListFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/forum/ForumListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final forumManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
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

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->forumManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->forumSharingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/forum/ForumListFragment;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectForumManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/forum/ForumManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->forumManager:Lorg/briarproject/briar/api/forum/ForumManager;

    return-void
.end method

.method public static injectForumSharingManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumListFragment;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/briar/android/forum/ForumListFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/forum/ForumListFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/forum/ForumListFragment;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/fragment/BaseEventFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->forumManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectForumManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/forum/ForumManager;)V

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->forumSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    return-void
.end method
