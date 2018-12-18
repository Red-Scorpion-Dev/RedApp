.class public final synthetic Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$Yw4sCrtlZm6F2EKgELQ6InNmiRg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$Yw4sCrtlZm6F2EKgELQ6InNmiRg;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/util/-$$Lambda$UiUtils$Yw4sCrtlZm6F2EKgELQ6InNmiRg;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lorg/briarproject/briar/android/util/UiUtils;->lambda$getGoToSettingsListener$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
