.class public interface abstract Lorg/briarproject/bramble/api/reporting/DevReporter;
.super Ljava/lang/Object;
.source "DevReporter.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract encryptReportToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract sendReports()V
.end method
