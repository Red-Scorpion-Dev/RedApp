.class public final Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;
.super Ljava/lang/Object;
.source "GroupListModule_ProvideGroupListControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/list/GroupListController;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupListControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->groupListControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;-><init>(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/list/GroupListController;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->proxyProvideGroupListController(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupListController(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/list/GroupListController;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule;->provideGroupListController(Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl;)Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->get()Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/list/GroupListController;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->groupListControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->provideInstance(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListController;

    move-result-object v0

    return-object v0
.end method
