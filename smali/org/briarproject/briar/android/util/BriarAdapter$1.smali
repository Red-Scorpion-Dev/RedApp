.class Lorg/briarproject/briar/android/util/BriarAdapter$1;
.super Landroid/support/v7/util/SortedList$Callback;
.source "BriarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/util/BriarAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/util/SortedList$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/util/BriarAdapter;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/util/BriarAdapter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onChanged(II)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/android/util/BriarAdapter$1;->this$0:Lorg/briarproject/briar/android/util/BriarAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/briarproject/briar/android/util/BriarAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
