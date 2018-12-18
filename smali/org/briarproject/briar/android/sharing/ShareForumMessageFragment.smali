.class public Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;
.super Lorg/briarproject/briar/android/sharing/BaseMessageFragment;
.source "ShareForumMessageFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.sharing.ShareForumMessageFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;
    .locals 1

    .line 17
    new-instance v0, Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getButtonText()I
    .locals 1

    const v0, 0x7f1100ba

    return v0
.end method

.method protected getHintText()I
    .locals 1

    const v0, 0x7f1100bc

    return v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 42
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f1100ba

    .line 24
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;->setTitle(I)V

    .line 25
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/sharing/BaseMessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
