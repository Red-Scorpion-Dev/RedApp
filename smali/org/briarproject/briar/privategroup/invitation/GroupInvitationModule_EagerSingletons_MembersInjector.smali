.class public final Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "GroupInvitationModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupInvitationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final groupInvitationValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->groupInvitationValidatorProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    return-void
.end method

.method public static injectGroupInvitationValidator(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;->groupInvitationValidator:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->groupInvitationValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->injectGroupInvitationValidator(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->injectGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V

    return-void
.end method
