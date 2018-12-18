.class public final Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;
.super Ljava/lang/Object;
.source "KeyAgreementModule_ProvideConnectionChooserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/keyagreement/ConnectionChooser;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionChooserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->module:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->connectionChooserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;-><init>(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;",
            ">;)",
            "Lorg/briarproject/bramble/keyagreement/ConnectionChooser;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->proxyProvideConnectionChooser(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljava/lang/Object;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideConnectionChooser(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljava/lang/Object;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;->provideConnectionChooser(Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->get()Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/keyagreement/ConnectionChooser;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->module:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->connectionChooserProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->provideInstance(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    move-result-object v0

    return-object v0
.end method
