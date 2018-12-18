.class Lorg/acra/builder/ReportExecutor$1;
.super Ljava/lang/Thread;
.source "ReportExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/builder/ReportExecutor;->execute(Lorg/acra/builder/ReportBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/builder/ReportExecutor;

.field final synthetic val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;


# direct methods
.method constructor <init>(Lorg/acra/builder/ReportExecutor;Lorg/acra/builder/ReportExecutor$TimeHelper;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor$1;->this$0:Lorg/acra/builder/ReportExecutor;

    iput-object p2, p0, Lorg/acra/builder/ReportExecutor$1;->val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 163
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor$1;->this$0:Lorg/acra/builder/ReportExecutor;

    invoke-static {v0}, Lorg/acra/builder/ReportExecutor;->access$100(Lorg/acra/builder/ReportExecutor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/builder/ReportExecutor$1;->this$0:Lorg/acra/builder/ReportExecutor;

    invoke-static {v1}, Lorg/acra/builder/ReportExecutor;->access$200(Lorg/acra/builder/ReportExecutor;)Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resToastText()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 164
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor$1;->val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/acra/builder/ReportExecutor$TimeHelper;->setInitialTimeMillis(J)V

    .line 165
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
