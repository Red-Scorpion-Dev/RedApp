.class public final synthetic Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;

.field private final synthetic f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;->f$0:Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;->f$0:Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/keyagreement/-$$Lambda$ConnectionChooserImpl$Nn_9nFRTFdFFkvCCFZuVtn18WQQ;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;->lambda$submit$0(Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;Ljava/util/concurrent/Callable;)V

    return-void
.end method
