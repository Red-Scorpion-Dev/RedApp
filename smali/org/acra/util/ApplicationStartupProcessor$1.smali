.class Lorg/acra/util/ApplicationStartupProcessor$1;
.super Ljava/lang/Object;
.source "ApplicationStartupProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/util/ApplicationStartupProcessor;->sendApprovedReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/util/ApplicationStartupProcessor;

.field final synthetic val$starter:Lorg/acra/sender/SenderServiceStarter;


# direct methods
.method constructor <init>(Lorg/acra/util/ApplicationStartupProcessor;Lorg/acra/sender/SenderServiceStarter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/acra/util/ApplicationStartupProcessor$1;->this$0:Lorg/acra/util/ApplicationStartupProcessor;

    iput-object p2, p0, Lorg/acra/util/ApplicationStartupProcessor$1;->val$starter:Lorg/acra/sender/SenderServiceStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/acra/util/ApplicationStartupProcessor$1;->val$starter:Lorg/acra/sender/SenderServiceStarter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/acra/sender/SenderServiceStarter;->startService(ZZ)V

    return-void
.end method
