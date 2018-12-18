.class public final Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/settings/SettingsFragment;",
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

.field private final circumventionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final locationUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->locationUtilsProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->circumventionProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/LocationUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/settings/SettingsFragment;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v6, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectAndroidExecutor(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    return-void
.end method

.method public static injectCircumventionProvider(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    return-void
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static injectLocationUtils(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/system/LocationUtils;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

    return-void
.end method

.method public static injectSettingsManager(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/SettingsManager;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/briar/android/settings/SettingsFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->settingsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/settings/SettingsManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectSettingsManager(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->locationUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/LocationUtils;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectLocationUtils(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/system/LocationUtils;)V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->circumventionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectCircumventionProvider(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;)V

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-void
.end method
