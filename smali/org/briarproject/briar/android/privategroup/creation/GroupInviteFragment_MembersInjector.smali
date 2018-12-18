.class public final Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;
.super Ljava/lang/Object;
.source "GroupInviteFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;",
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
            "Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;->controllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectController(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;->controller:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;)V

    return-void
.end method
