.class public final Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;
.super Ljava/lang/Object;
.source "GroupInvitationModule_ProvideInvitationGroupControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupInvitationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->groupInvitationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;-><init>(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->proxyProvideInvitationGroupController(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideInvitationGroupController(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;

    .line 46
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;->provideInvitationGroupController(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->get()Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->groupInvitationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->provideInstance(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationController;

    move-result-object v0

    return-object v0
.end method
