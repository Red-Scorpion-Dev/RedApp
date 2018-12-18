.class public final Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;
.super Ljava/lang/Object;
.source "MessageParserImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final privateGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
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
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->authorFactoryProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newMessageParserImpl(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;
    .locals 1

    .line 56
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;-><init>(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;

    .line 41
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/identity/AuthorFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;-><init>(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->get()Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->authorFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;

    move-result-object v0

    return-object v0
.end method
