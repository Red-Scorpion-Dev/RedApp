.class public final Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;
.super Ljava/lang/Object;
.source "NotificationCleanupService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/NotificationCleanupService;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/NotificationCleanupService;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/NotificationCleanupService;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/NotificationCleanupService;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/NotificationCleanupService;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/NotificationCleanupService;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/NotificationCleanupService;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/NotificationCleanupService;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    return-void
.end method
