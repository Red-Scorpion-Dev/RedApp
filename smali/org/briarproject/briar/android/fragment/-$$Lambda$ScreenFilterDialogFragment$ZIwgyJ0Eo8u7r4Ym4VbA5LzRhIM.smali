.class public final synthetic Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

.field private final synthetic f$1:Landroid/widget/CheckBox;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Landroid/widget/CheckBox;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;->f$0:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;->f$0:Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$ScreenFilterDialogFragment$ZIwgyJ0Eo8u7r4Ym4VbA5LzRhIM;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;->lambda$onCreateDialog$0(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Landroid/widget/CheckBox;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method
