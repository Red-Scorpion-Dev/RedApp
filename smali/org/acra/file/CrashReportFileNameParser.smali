.class public final Lorg/acra/file/CrashReportFileNameParser;
.super Ljava/lang/Object;
.source "CrashReportFileNameParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isApproved(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Lorg/acra/file/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-approved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSilent(Ljava/lang/String;)Z
    .locals 1

    .line 38
    sget-object v0, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
