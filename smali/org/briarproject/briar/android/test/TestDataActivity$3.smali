.class Lorg/briarproject/briar/android/test/TestDataActivity$3;
.super Ljava/lang/Object;
.source "TestDataActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/test/TestDataActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/test/TestDataActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity$3;->this$0:Lorg/briarproject/briar/android/test/TestDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 102
    iget-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity$3;->this$0:Lorg/briarproject/briar/android/test/TestDataActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->access$200(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
