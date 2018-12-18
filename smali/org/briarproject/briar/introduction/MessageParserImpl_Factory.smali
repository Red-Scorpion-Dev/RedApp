.class public final Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;
.super Ljava/lang/Object;
.source "MessageParserImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/introduction/MessageParserImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
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
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)",
            "Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newMessageParserImpl(Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/introduction/MessageParserImpl;
    .locals 1

    .line 33
    new-instance v0, Lorg/briarproject/briar/introduction/MessageParserImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/introduction/MessageParserImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageParserImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)",
            "Lorg/briarproject/briar/introduction/MessageParserImpl;"
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/briarproject/briar/introduction/MessageParserImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/introduction/MessageParserImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;->get()Lorg/briarproject/briar/introduction/MessageParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/introduction/MessageParserImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageParserImpl;

    move-result-object v0

    return-object v0
.end method
