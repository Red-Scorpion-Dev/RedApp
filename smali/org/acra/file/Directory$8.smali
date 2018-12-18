.class final enum Lorg/acra/file/Directory$8;
.super Lorg/acra/file/Directory;
.source "Directory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/file/Directory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lorg/acra/file/Directory;-><init>(Ljava/lang/String;ILorg/acra/file/Directory$1;)V

    return-void
.end method


# virtual methods
.method public getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 102
    new-instance p1, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
