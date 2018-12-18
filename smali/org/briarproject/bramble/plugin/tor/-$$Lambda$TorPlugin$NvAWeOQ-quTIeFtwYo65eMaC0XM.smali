.class public final synthetic Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/tor/TorPlugin;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/network/NetworkStatus;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;->f$0:Lorg/briarproject/bramble/plugin/tor/TorPlugin;

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;->f$1:Lorg/briarproject/bramble/api/network/NetworkStatus;

    iput-boolean p3, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;->f$0:Lorg/briarproject/bramble/plugin/tor/TorPlugin;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;->f$1:Lorg/briarproject/bramble/api/network/NetworkStatus;

    iget-boolean v2, p0, Lorg/briarproject/bramble/plugin/tor/-$$Lambda$TorPlugin$NvAWeOQ-quTIeFtwYo65eMaC0XM;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/plugin/tor/TorPlugin;->lambda$updateConnectionStatus$4(Lorg/briarproject/bramble/plugin/tor/TorPlugin;Lorg/briarproject/bramble/api/network/NetworkStatus;Z)V

    return-void
.end method
