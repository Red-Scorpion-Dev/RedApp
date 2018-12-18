.class public final synthetic Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/PoliteExecutor;

.field private final synthetic f$1:J

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/PoliteExecutor;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;->f$0:Lorg/briarproject/bramble/PoliteExecutor;

    iput-wide p2, p0, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;->f$1:J

    iput-object p4, p0, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;->f$0:Lorg/briarproject/bramble/PoliteExecutor;

    iget-wide v1, p0, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;->f$1:J

    iget-object v3, p0, Lorg/briarproject/bramble/-$$Lambda$PoliteExecutor$Lhtp6tpdaSoSplu828CNOD0u06w;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/PoliteExecutor;->lambda$execute$0(Lorg/briarproject/bramble/PoliteExecutor;JLjava/lang/Runnable;)V

    return-void
.end method
