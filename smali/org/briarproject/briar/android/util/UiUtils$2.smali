.class final Lorg/briarproject/briar/android/util/UiUtils$2;
.super Landroid/text/style/ClickableSpan;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/util/UiUtils;->onSingleLinkClick(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/briarproject/briar/android/util/UiUtils$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lorg/briarproject/briar/android/util/UiUtils$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
