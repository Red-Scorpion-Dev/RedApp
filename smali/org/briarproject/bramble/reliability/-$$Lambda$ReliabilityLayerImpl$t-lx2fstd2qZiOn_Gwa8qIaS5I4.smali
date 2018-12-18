.class public final synthetic Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/reliability/Sender;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;Lorg/briarproject/bramble/reliability/Sender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;->f$0:Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;->f$1:Lorg/briarproject/bramble/reliability/Sender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;->f$0:Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/reliability/-$$Lambda$ReliabilityLayerImpl$t-lx2fstd2qZiOn_Gwa8qIaS5I4;->f$1:Lorg/briarproject/bramble/reliability/Sender;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;->lambda$start$0(Lorg/briarproject/bramble/reliability/ReliabilityLayerImpl;Lorg/briarproject/bramble/reliability/Sender;)V

    return-void
.end method
