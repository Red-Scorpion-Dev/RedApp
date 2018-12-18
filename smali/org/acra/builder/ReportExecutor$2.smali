.class Lorg/acra/builder/ReportExecutor$2;
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

.field final synthetic val$reportBuilder:Lorg/acra/builder/ReportBuilder;

.field final synthetic val$reportFile:Ljava/io/File;

.field final synthetic val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;

.field final synthetic val$showDirectDialog:Z


# direct methods
.method constructor <init>(Lorg/acra/builder/ReportExecutor;Lorg/acra/builder/ReportExecutor$TimeHelper;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor$2;->this$0:Lorg/acra/builder/ReportExecutor;

    iput-object p2, p0, Lorg/acra/builder/ReportExecutor$2;->val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;

    iput-object p3, p0, Lorg/acra/builder/ReportExecutor$2;->val$reportBuilder:Lorg/acra/builder/ReportBuilder;

    iput-object p4, p0, Lorg/acra/builder/ReportExecutor$2;->val$reportFile:Ljava/io/File;

    iput-boolean p5, p0, Lorg/acra/builder/ReportExecutor$2;->val$showDirectDialog:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 208
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for 2000 millis from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/builder/ReportExecutor$2;->val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;

    .line 210
    invoke-static {v3}, Lorg/acra/builder/ReportExecutor$TimeHelper;->access$300(Lorg/acra/builder/ReportExecutor$TimeHelper;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 212
    iget-object v2, p0, Lorg/acra/builder/ReportExecutor$2;->val$sentToastTimeMillis:Lorg/acra/builder/ReportExecutor$TimeHelper;

    invoke-virtual {v2}, Lorg/acra/builder/ReportExecutor$TimeHelper;->getElapsedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 215
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_1

    .line 218
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for Toast to end."

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Finished waiting for Toast"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/acra/builder/ReportExecutor$2;->this$0:Lorg/acra/builder/ReportExecutor;

    iget-object v1, p0, Lorg/acra/builder/ReportExecutor$2;->val$reportBuilder:Lorg/acra/builder/ReportBuilder;

    iget-object v2, p0, Lorg/acra/builder/ReportExecutor$2;->val$reportFile:Ljava/io/File;

    iget-boolean v3, p0, Lorg/acra/builder/ReportExecutor$2;->val$showDirectDialog:Z

    invoke-static {v0, v1, v2, v3}, Lorg/acra/builder/ReportExecutor;->access$400(Lorg/acra/builder/ReportExecutor;Lorg/acra/builder/ReportBuilder;Ljava/io/File;Z)V

    return-void
.end method
