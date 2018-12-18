.class public final Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;
.super Ljava/lang/Object;
.source "AndroidSecureRandomProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
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
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;->appProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAndroidSecureRandomProvider(Landroid/app/Application;)Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;
    .locals 1

    .line 34
    new-instance v0, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;->get()Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;->appProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSecureRandomProvider;

    move-result-object v0

    return-object v0
.end method
