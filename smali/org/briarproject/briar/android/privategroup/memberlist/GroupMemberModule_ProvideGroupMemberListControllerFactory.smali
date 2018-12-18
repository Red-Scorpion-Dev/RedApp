.class public final Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;
.super Ljava/lang/Object;
.source "GroupMemberModule_ProvideGroupMemberListControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupMemberListControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->groupMemberListControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;-><init>(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->proxyProvideGroupMemberListController(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGroupMemberListController(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;

    .line 46
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;->provideGroupMemberListController(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->get()Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->groupMemberListControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->provideInstance(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    move-result-object v0

    return-object v0
.end method
