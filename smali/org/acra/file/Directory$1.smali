.class final enum Lorg/acra/file/Directory$1;
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

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lorg/acra/file/Directory;-><init>(Ljava/lang/String;ILorg/acra/file/Directory$1;)V

    return-void
.end method


# virtual methods
.method public getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "/"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/acra/file/Directory;->ROOT:Lorg/acra/file/Directory;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/acra/file/Directory;->FILES:Lorg/acra/file/Directory;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/acra/file/Directory;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
