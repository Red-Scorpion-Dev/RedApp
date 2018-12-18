.class public final synthetic Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$_VrUhVzU_zM3bv7Qgdb0Jjnjugg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$_VrUhVzU_zM3bv7Qgdb0Jjnjugg;->f$0:Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$_VrUhVzU_zM3bv7Qgdb0Jjnjugg;->f$0:Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lambda$rotateKeys$0(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V

    return-void
.end method
