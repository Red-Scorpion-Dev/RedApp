.class Lorg/briarproject/bramble/keyagreement/AbortException;
.super Ljava/lang/Exception;
.source "AbortException.java"


# instance fields
.field receivedAbort:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/keyagreement/AbortException;-><init>(Ljava/lang/Exception;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Exception;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 22
    iput-boolean p2, p0, Lorg/briarproject/bramble/keyagreement/AbortException;->receivedAbort:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-boolean p1, p0, Lorg/briarproject/bramble/keyagreement/AbortException;->receivedAbort:Z

    return-void
.end method
