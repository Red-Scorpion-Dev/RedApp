.class public final Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;
.super Ljava/lang/Object;
.source "RecentEmojiImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/RecentEmojiImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final dbExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->androidExecutorProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;)",
            "Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newRecentEmojiImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Lorg/briarproject/bramble/api/settings/SettingsManager;)Lorg/briarproject/briar/android/RecentEmojiImpl;
    .locals 1

    .line 53
    new-instance v0, Lorg/briarproject/briar/android/RecentEmojiImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/RecentEmojiImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/RecentEmojiImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;)",
            "Lorg/briarproject/briar/android/RecentEmojiImpl;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/RecentEmojiImpl;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/settings/SettingsManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/RecentEmojiImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/system/AndroidExecutor;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->get()Lorg/briarproject/briar/android/RecentEmojiImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/RecentEmojiImpl;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->dbExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->androidExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/RecentEmojiImpl;

    move-result-object v0

    return-object v0
.end method
