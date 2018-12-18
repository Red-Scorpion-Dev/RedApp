.class public final Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;
.super Ljava/lang/Object;
.source "GroupRevealModule_ProvideRevealContactsControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

.field private final revealContactsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->revealContactsControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;-><init>(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->proxyProvideRevealContactsController(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideRevealContactsController(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljava/lang/Object;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;
    .locals 0

    .line 45
    check-cast p1, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;

    .line 46
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;->provideRevealContactsController(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->get()Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->module:Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->revealContactsControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->provideInstance(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    move-result-object v0

    return-object v0
.end method
