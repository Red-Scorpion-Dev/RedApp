.class public Lorg/briarproject/briar/android/blog/ReblogFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "ReblogFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.blog.ReblogFragment"


# instance fields
.field private blogId:Lorg/briarproject/bramble/api/sync/GroupId;

.field feedController:Lorg/briarproject/briar/android/blog/FeedController;

.field private item:Lorg/briarproject/briar/android/blog/BlogPostItem;

.field private postId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/blog/BlogPostItem;)Lorg/briarproject/briar/android/blog/BlogPostItem;
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->item:Lorg/briarproject/briar/android/blog/BlogPostItem;

    return-object p1
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/blog/ReblogFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/ReblogFragment;->bindViewHolder()V

    return-void
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method private bindViewHolder()V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->item:Lorg/briarproject/briar/android/blog/BlogPostItem;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/ReblogFragment;->hideProgressBar()V

    .line 112
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->item:Lorg/briarproject/briar/android/blog/BlogPostItem;

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->bindItem(Lorg/briarproject/briar/android/blog/BlogPostItem;)V

    .line 113
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->hideReblogButton()V

    .line 115
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/briarproject/briar/android/view/TextInputView;->setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V

    .line 116
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 117
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$600(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/blog/-$$Lambda$ReblogFragment$vvw19CVVvXA-kVvolqU4IAT3Rrc;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$ReblogFragment$vvw19CVVvXA-kVvolqU4IAT3Rrc;-><init>(Lorg/briarproject/briar/android/blog/ReblogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getComment()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/TextInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/TextInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideProgressBar()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$800(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$bindViewHolder$0(Lorg/briarproject/briar/android/blog/ReblogFragment;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$600(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method static newInstance(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/android/blog/ReblogFragment;
    .locals 3

    .line 48
    new-instance v0, Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "briar.GROUP_ID"

    .line 51
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "briar.POST_ID"

    .line 52
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 53
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showProgressBar()V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$800(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lorg/briarproject/briar/android/blog/ReblogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 65
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/ReblogFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/ReblogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    .line 74
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v1, "briar.GROUP_ID"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->blogId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 75
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string v1, "briar.POST_ID"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->postId:Lorg/briarproject/bramble/api/sync/MessageId;

    const/4 p3, 0x0

    const v0, 0x7f0c0053

    .line 77
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    new-instance p2, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;-><init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Landroid/view/View;Lorg/briarproject/briar/android/blog/ReblogFragment$1;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    .line 79
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {p2}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$100(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/blog/BlogPostViewHolder;

    move-result-object p2

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->postId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-virtual {p2, v0}, Lorg/briarproject/briar/android/blog/BlogPostViewHolder;->setTransitionName(Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 80
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {p2}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 81
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/ReblogFragment;->showProgressBar()V

    return-object p1
.end method

.method public onSendClick(Ljava/lang/String;)V
    .locals 3

    .line 122
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->ui:Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;->access$200(Lorg/briarproject/briar/android/blog/ReblogFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->hideSoftKeyboard()V

    .line 123
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/ReblogFragment;->getComment()Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->item:Lorg/briarproject/briar/android/blog/BlogPostItem;

    new-instance v2, Lorg/briarproject/briar/android/blog/ReblogFragment$2;

    invoke-direct {v2, p0, p0}, Lorg/briarproject/briar/android/blog/ReblogFragment$2;-><init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, p1, v2}, Lorg/briarproject/briar/android/blog/FeedController;->repeatPost(Lorg/briarproject/briar/android/blog/BlogPostItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    .line 131
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/ReblogFragment;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 88
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 91
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->feedController:Lorg/briarproject/briar/android/blog/FeedController;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->blogId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v2, p0, Lorg/briarproject/briar/android/blog/ReblogFragment;->postId:Lorg/briarproject/bramble/api/sync/MessageId;

    new-instance v3, Lorg/briarproject/briar/android/blog/ReblogFragment$1;

    invoke-direct {v3, p0, p0}, Lorg/briarproject/briar/android/blog/ReblogFragment$1;-><init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1, v2, v3}, Lorg/briarproject/briar/android/blog/FeedController;->loadBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method
