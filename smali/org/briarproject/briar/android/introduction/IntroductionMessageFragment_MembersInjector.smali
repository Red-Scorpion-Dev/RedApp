.class public final Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;
.super Ljava/lang/Object;
.source "IntroductionMessageFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private final introductionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
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
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->introductionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectContactManager(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    return-void
.end method

.method public static injectIntroductionManager(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;->introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->introductionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->injectIntroductionManager(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V

    return-void
.end method
