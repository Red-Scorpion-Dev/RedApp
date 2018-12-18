.class final Lorg/briarproject/briar/android/util/UiUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/util/UiUtils;->makeLinksClickable(Landroid/widget/TextView;Landroid/support/v4/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fm:Landroid/support/v4/app/FragmentManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/briarproject/briar/android/util/UiUtils$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lorg/briarproject/briar/android/util/UiUtils$1;->val$fm:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lorg/briarproject/briar/android/util/UiUtils$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->newInstance(Ljava/lang/String;)Lorg/briarproject/briar/android/widget/LinkDialogFragment;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/util/UiUtils$1;->val$fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/briar/android/widget/LinkDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
