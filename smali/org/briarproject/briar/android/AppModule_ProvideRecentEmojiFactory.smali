.class public final Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideRecentEmojiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/vanniktech/emoji/RecentEmoji;",
        ">;"
    }
.end annotation


# instance fields
.field private final lifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/AppModule;

.field private final recentEmojiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/RecentEmojiImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/RecentEmojiImpl;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->module:Lorg/briarproject/briar/android/AppModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->recentEmojiProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/RecentEmojiImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;-><init>(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/vanniktech/emoji/RecentEmoji;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/AppModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/RecentEmojiImpl;",
            ">;)",
            "Lcom/vanniktech/emoji/RecentEmoji;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 39
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->proxyProvideRecentEmoji(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lcom/vanniktech/emoji/RecentEmoji;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideRecentEmoji(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Ljava/lang/Object;)Lcom/vanniktech/emoji/RecentEmoji;
    .locals 0

    .line 53
    check-cast p2, Lorg/briarproject/briar/android/RecentEmojiImpl;

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/AppModule;->provideRecentEmoji(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/briar/android/RecentEmojiImpl;)Lcom/vanniktech/emoji/RecentEmoji;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vanniktech/emoji/RecentEmoji;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/vanniktech/emoji/RecentEmoji;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->module:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->lifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->recentEmojiProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->provideInstance(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/vanniktech/emoji/RecentEmoji;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->get()Lcom/vanniktech/emoji/RecentEmoji;

    move-result-object v0

    return-object v0
.end method
