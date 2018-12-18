.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;->f$0:Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;->f$0:Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$WriteBlogPostActivity$qEUDXkyFKJT7qS3fsqv-g6O5Mqc;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->lambda$storePost$0(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Ljava/lang/String;)V

    return-void
.end method
