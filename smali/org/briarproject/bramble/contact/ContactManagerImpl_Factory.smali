.class public final Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;
.super Ljava/lang/Object;
.source "ContactManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/contact/ContactManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)",
            "Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newContactManagerImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/identity/IdentityManager;)Lorg/briarproject/bramble/contact/ContactManagerImpl;
    .locals 1

    .line 52
    new-instance v0, Lorg/briarproject/bramble/contact/ContactManagerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/contact/ContactManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactManagerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)",
            "Lorg/briarproject/bramble/contact/ContactManagerImpl;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/bramble/contact/ContactManagerImpl;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/transport/KeyManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/contact/ContactManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->get()Lorg/briarproject/bramble/contact/ContactManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/contact/ContactManagerImpl;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactManagerImpl;

    move-result-object v0

    return-object v0
.end method
