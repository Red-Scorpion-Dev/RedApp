.class public final synthetic Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$kvWKNDUgp64P-21hG_2RMo490TY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$kvWKNDUgp64P-21hG_2RMo490TY;->f$0:Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/transport/-$$Lambda$TransportKeyManagerImpl$kvWKNDUgp64P-21hG_2RMo490TY;->f$0:Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;->lambda$kvWKNDUgp64P-21hG_2RMo490TY(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
