.class public final Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "AppModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/AppModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeWatchdogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;"
        }
    .end annotation
.end field

.field private final networkUsageLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/NetworkUsageLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final recentEmojiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/vanniktech/emoji/RecentEmoji;",
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
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/NetworkUsageLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/vanniktech/emoji/RecentEmoji;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->androidNotificationManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->networkUsageLoggerProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->dozeWatchdogProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->recentEmojiProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/NetworkUsageLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/vanniktech/emoji/RecentEmoji;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/AppModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAndroidNotificationManager(Ljava/lang/Object;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 57
    check-cast p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;->androidNotificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method

.method public static injectDozeWatchdog(Ljava/lang/Object;Lorg/briarproject/briar/api/android/DozeWatchdog;)V
    .locals 0

    .line 66
    check-cast p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;->dozeWatchdog:Lorg/briarproject/briar/api/android/DozeWatchdog;

    return-void
.end method

.method public static injectNetworkUsageLogger(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    check-cast p1, Lorg/briarproject/briar/android/NetworkUsageLogger;

    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;->networkUsageLogger:Lorg/briarproject/briar/android/NetworkUsageLogger;

    return-void
.end method

.method public static injectRecentEmoji(Ljava/lang/Object;Lcom/vanniktech/emoji/RecentEmoji;)V
    .locals 0

    .line 70
    check-cast p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule$EagerSingletons;->recentEmoji:Lcom/vanniktech/emoji/RecentEmoji;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->androidNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectAndroidNotificationManager(Ljava/lang/Object;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->networkUsageLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectNetworkUsageLogger(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->dozeWatchdogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/DozeWatchdog;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectDozeWatchdog(Ljava/lang/Object;Lorg/briarproject/briar/api/android/DozeWatchdog;)V

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->recentEmojiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vanniktech/emoji/RecentEmoji;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectRecentEmoji(Ljava/lang/Object;Lcom/vanniktech/emoji/RecentEmoji;)V

    return-void
.end method
