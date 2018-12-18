.class Lorg/acra/legacy/ReportMigrator$1;
.super Ljava/lang/Object;
.source "ReportMigrator.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/legacy/ReportMigrator;->getCrashReportFiles()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/legacy/ReportMigrator;


# direct methods
.method constructor <init>(Lorg/acra/legacy/ReportMigrator;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/acra/legacy/ReportMigrator$1;->this$0:Lorg/acra/legacy/ReportMigrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".stacktrace"

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
