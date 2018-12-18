.class public final Lorg/acra/file/ReportLocator;
.super Ljava/lang/Object;
.source "ReportLocator.java"


# static fields
.field private static final APPROVED_FOLDER_NAME:Ljava/lang/String; = "ACRA-approved"

.field private static final UNAPPROVED_FOLDER_NAME:Ljava/lang/String; = "ACRA-unapproved"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApprovedFolder()Ljava/io/File;
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    const-string v1, "ACRA-approved"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getApprovedReports()[Ljava/io/File;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->getApprovedFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Ljava/io/File;

    return-object v0

    .line 55
    :cond_0
    new-instance v1, Lorg/acra/file/LastModifiedComparator;

    invoke-direct {v1}, Lorg/acra/file/LastModifiedComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getUnapprovedFolder()Ljava/io/File;
    .locals 3

    .line 29
    iget-object v0, p0, Lorg/acra/file/ReportLocator;->context:Landroid/content/Context;

    const-string v1, "ACRA-unapproved"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUnapprovedReports()[Ljava/io/File;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/acra/file/ReportLocator;->getUnapprovedFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/io/File;

    return-object v0

    :cond_0
    return-object v0
.end method
