.class public final synthetic Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$ucv8I8VE39Ajndg2AOLwxdM_EhI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/tor/TorPlugin;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$ucv8I8VE39Ajndg2AOLwxdM_EhI;->f$0:Lorg/briarproject/bramble/plugin/tor/TorPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$ucv8I8VE39Ajndg2AOLwxdM_EhI;->f$0:Lorg/briarproject/bramble/plugin/tor/TorPlugin;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->lambda$disableNetwork$3(Lorg/briarproject/bramble/plugin/tor/TorPlugin;)V

    return-void
.end method