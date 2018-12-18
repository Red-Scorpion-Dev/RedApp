.class public final Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;
.super Ljava/lang/Object;
.source "MessageEncoderImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/MessageEncoderImpl;",
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

.field private final messageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
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
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newMessageEncoderImpl(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/sync/MessageFactory;)Lorg/briarproject/briar/sharing/MessageEncoderImpl;
    .locals 1

    .line 44
    new-instance v0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/MessageEncoderImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/sync/MessageFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageEncoderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/MessageEncoderImpl;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/briarproject/briar/sharing/MessageEncoderImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/MessageEncoderImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/sync/MessageFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->get()Lorg/briarproject/briar/sharing/MessageEncoderImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/MessageEncoderImpl;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageEncoderImpl;

    move-result-object v0

    return-object v0
.end method
