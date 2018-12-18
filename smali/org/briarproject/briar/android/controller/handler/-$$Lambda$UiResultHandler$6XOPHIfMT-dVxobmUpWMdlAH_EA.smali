.class public final synthetic Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/controller/handler/UiResultHandler;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/controller/handler/UiResultHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;->f$0:Lorg/briarproject/briar/android/controller/handler/UiResultHandler;

    iput-object p2, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;->f$0:Lorg/briarproject/briar/android/controller/handler/UiResultHandler;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/handler/-$$Lambda$UiResultHandler$6XOPHIfMT-dVxobmUpWMdlAH_EA;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;->lambda$onResult$0(Lorg/briarproject/briar/android/controller/handler/UiResultHandler;Ljava/lang/Object;)V

    return-void
.end method
