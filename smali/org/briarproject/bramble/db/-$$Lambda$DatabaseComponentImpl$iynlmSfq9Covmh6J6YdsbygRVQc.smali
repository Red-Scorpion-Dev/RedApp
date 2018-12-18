.class public final synthetic Lorg/briarproject/bramble/db/-$$Lambda$DatabaseComponentImpl$iynlmSfq9Covmh6J6YdsbygRVQc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/db/DatabaseComponentImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/db/DatabaseComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/db/-$$Lambda$DatabaseComponentImpl$iynlmSfq9Covmh6J6YdsbygRVQc;->f$0:Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/db/-$$Lambda$DatabaseComponentImpl$iynlmSfq9Covmh6J6YdsbygRVQc;->f$0:Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;->lambda$open$0(Lorg/briarproject/bramble/db/DatabaseComponentImpl;)V

    return-void
.end method
