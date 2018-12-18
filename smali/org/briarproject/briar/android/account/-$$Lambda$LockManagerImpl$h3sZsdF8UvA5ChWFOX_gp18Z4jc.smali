.class public final synthetic Lorg/briarproject/briar/android/account/-$$Lambda$LockManagerImpl$h3sZsdF8UvA5ChWFOX_gp18Z4jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/account/LockManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/account/LockManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/account/-$$Lambda$LockManagerImpl$h3sZsdF8UvA5ChWFOX_gp18Z4jc;->f$0:Lorg/briarproject/briar/android/account/LockManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/account/-$$Lambda$LockManagerImpl$h3sZsdF8UvA5ChWFOX_gp18Z4jc;->f$0:Lorg/briarproject/briar/android/account/LockManagerImpl;

    invoke-static {v0}, Lorg/briarproject/briar/android/account/LockManagerImpl;->lambda$loadSettings$0(Lorg/briarproject/briar/android/account/LockManagerImpl;)V

    return-void
.end method
