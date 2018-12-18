.class public final Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "PrivateMessageFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;",
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
    iput-object p1, p0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)",
            "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newPrivateMessageFactoryImpl(Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;
    .locals 1

    .line 35
    new-instance v0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;)",
            "Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;->get()Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;

    move-result-object v0

    return-object v0
.end method
