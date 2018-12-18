.class Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "MaterialTapTargetPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;


# direct methods
.method constructor <init>(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;)V
    .locals 0

    .line 952
    iput-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 957
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 959
    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 964
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 965
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 966
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 968
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 969
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 971
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 973
    iget-object v1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v1, v1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getTargetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 976
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 978
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :cond_2
    const-string v1, "%s. %s"

    const/4 v2, 0x2

    .line 981
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v4, v4, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v4, v4, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v4}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "%s. %s"

    .line 982
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v3, v3, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v3}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v0, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object v0, v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 988
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 990
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object p1, p1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getPrimaryText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 991
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_0
    iget-object p1, p0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView$AccessibilityDelegate;->this$0:Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;

    iget-object p1, p1, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptView;->mPromptOptions:Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    invoke-virtual {p1}, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 997
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
