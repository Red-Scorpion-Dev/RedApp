.class public final synthetic Lorg/briarproject/briar/android/-$$Lambda$BriarService$BkJfLTeqW7E73GIT4qbbHMf1btM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/BriarService;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/BriarService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/-$$Lambda$BriarService$BkJfLTeqW7E73GIT4qbbHMf1btM;->f$0:Lorg/briarproject/briar/android/BriarService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/-$$Lambda$BriarService$BkJfLTeqW7E73GIT4qbbHMf1btM;->f$0:Lorg/briarproject/briar/android/BriarService;

    invoke-static {v0}, Lorg/briarproject/briar/android/BriarService;->lambda$shutdownFromBackground$3(Lorg/briarproject/briar/android/BriarService;)V

    return-void
.end method
