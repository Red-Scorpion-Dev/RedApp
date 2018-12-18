.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BasePostFragment$2Q_yRTA5SZC-IosvPW0JvJwHscA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BasePostFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BasePostFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BasePostFragment$2Q_yRTA5SZC-IosvPW0JvJwHscA;->f$0:Lorg/briarproject/briar/android/blog/BasePostFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BasePostFragment$2Q_yRTA5SZC-IosvPW0JvJwHscA;->f$0:Lorg/briarproject/briar/android/blog/BasePostFragment;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/BasePostFragment;->lambda$startPeriodicUpdate$0(Lorg/briarproject/briar/android/blog/BasePostFragment;)V

    return-void
.end method
