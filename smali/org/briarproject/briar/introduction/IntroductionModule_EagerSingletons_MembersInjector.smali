.class public final Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "IntroductionModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final introductionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final introductionValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionValidator;",
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
            "Lorg/briarproject/briar/introduction/IntroductionValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->introductionValidatorProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->introductionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectIntroductionManager(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;->introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

    return-void
.end method

.method public static injectIntroductionValidator(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/briarproject/briar/introduction/IntroductionValidator;

    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;->introductionValidator:Lorg/briarproject/briar/introduction/IntroductionValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->introductionValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->injectIntroductionValidator(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->introductionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->injectIntroductionManager(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V

    return-void
.end method
