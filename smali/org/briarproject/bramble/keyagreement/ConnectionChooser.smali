.class interface abstract Lorg/briarproject/bramble/keyagreement/ConnectionChooser;
.super Ljava/lang/Object;
.source "ConnectionChooser.java"


# virtual methods
.method public abstract poll(J)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract submit(Ljava/util/concurrent/Callable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;",
            ">;)V"
        }
    .end annotation
.end method
