.class public final Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "PrivateGroupModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final groupMessageValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/GroupMessageValidator;",
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
            "Lorg/briarproject/briar/privategroup/GroupMessageValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->groupMessageValidatorProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->groupManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/GroupMessageValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;->groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    return-void
.end method

.method public static injectGroupMessageValidator(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;->groupMessageValidator:Lorg/briarproject/briar/privategroup/GroupMessageValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->groupMessageValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->injectGroupMessageValidator(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->groupManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->injectGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;)V

    return-void
.end method
