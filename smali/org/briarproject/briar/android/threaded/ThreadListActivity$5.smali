.class Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;
.super Ljava/lang/Object;
.source "ThreadListActivity.java"

# interfaces
.implements Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onReplyClick(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

.field final synthetic val$item:Lorg/briarproject/briar/android/threaded/ThreadItem;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;->val$item:Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardShown()V
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;->val$item:Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$400(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    .line 299
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    iget-object v0, v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0, p0}, Lorg/briarproject/briar/android/view/TextInputView;->removeOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    return-void
.end method
