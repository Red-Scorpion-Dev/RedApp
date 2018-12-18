.class Lorg/briarproject/briar/android/blog/BasePostFragment$1;
.super Ljava/lang/Object;
.source "BasePostFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/BasePostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/BasePostFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/BasePostFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BasePostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BasePostFragment;

    invoke-virtual {v1}, Lorg/briarproject/briar/android/blog/BasePostFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/briarproject/briar/android/blog/BlogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "briar.GROUP_ID"

    .line 72
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 73
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BasePostFragment$1;->this$0:Lorg/briarproject/briar/android/blog/BasePostFragment;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BasePostFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBlogPostClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 0

    return-void
.end method
