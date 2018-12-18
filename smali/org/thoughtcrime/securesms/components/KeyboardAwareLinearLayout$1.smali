.class Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;
.super Ljava/lang/Object;
.source "KeyboardAwareLinearLayout.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->postOnKeyboardClose(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;->this$0:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    iput-object p2, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardHidden()V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;->this$0:Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;

    invoke-virtual {v0, p0}, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout;->removeOnKeyboardHiddenListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardHiddenListener;)V

    .line 208
    iget-object v0, p0, Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
