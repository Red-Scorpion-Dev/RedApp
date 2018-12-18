.class public final Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;
.super Ljava/lang/Object;
.source "GroupConversationModule_ProvideGroupControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/conversation/GroupController;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final groupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->activityProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->groupControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;-><init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupController;"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/activity/BaseActivity;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    .line 39
    invoke-static {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->proxyProvideGroupController(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupController(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/conversation/GroupController;
    .locals 0

    .line 53
    check-cast p2, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;->provideGroupController(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;)Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->get()Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/conversation/GroupController;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->activityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->groupControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->provideInstance(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    move-result-object v0

    return-object v0
.end method
