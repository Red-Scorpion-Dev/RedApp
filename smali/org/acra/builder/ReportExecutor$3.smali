.class Lorg/acra/builder/ReportExecutor$3;
.super Ljava/lang/Thread;
.source "ReportExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/builder/ReportExecutor;->dialogAndEnd(Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/builder/ReportExecutor;


# direct methods
.method constructor <init>(Lorg/acra/builder/ReportExecutor;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor$3;->this$0:Lorg/acra/builder/ReportExecutor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 250
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor$3;->this$0:Lorg/acra/builder/ReportExecutor;

    invoke-static {v0}, Lorg/acra/builder/ReportExecutor;->access$100(Lorg/acra/builder/ReportExecutor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Warning: Acra may behave differently with a debugger attached"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 251
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
