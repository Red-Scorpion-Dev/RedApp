.class Lorg/briarproject/briar/android/blog/WriteBlogPostActivity$1;
.super Ljava/lang/Object;
.source "WriteBlogPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity$1;->this$0:Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity$1;->this$0:Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;->access$000(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
