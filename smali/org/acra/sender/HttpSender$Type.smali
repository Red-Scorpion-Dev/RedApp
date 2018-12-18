.class public abstract enum Lorg/acra/sender/HttpSender$Type;
.super Ljava/lang/Enum;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/sender/HttpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/sender/HttpSender$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/sender/HttpSender$Type;

.field public static final enum FORM:Lorg/acra/sender/HttpSender$Type;

.field public static final enum JSON:Lorg/acra/sender/HttpSender$Type;


# instance fields
.field private final contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    new-instance v0, Lorg/acra/sender/HttpSender$Type$1;

    const-string v1, "FORM"

    const-string v2, "application/x-www-form-urlencoded"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/acra/sender/HttpSender$Type$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    .line 111
    new-instance v0, Lorg/acra/sender/HttpSender$Type$2;

    const-string v1, "JSON"

    const-string v2, "application/json"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/acra/sender/HttpSender$Type$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;

    const/4 v0, 0x2

    .line 96
    new-array v0, v0, [Lorg/acra/sender/HttpSender$Type;

    sget-object v1, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/acra/sender/HttpSender$Type;->$VALUES:[Lorg/acra/sender/HttpSender$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-object p3, p0, Lorg/acra/sender/HttpSender$Type;->contentType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/acra/sender/HttpSender$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lorg/acra/sender/HttpSender$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .line 96
    const-class v0, Lorg/acra/sender/HttpSender$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/sender/HttpSender$Type;

    return-object p0
.end method

.method public static values()[Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .line 96
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->$VALUES:[Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v0}, [Lorg/acra/sender/HttpSender$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method


# virtual methods
.method abstract convertReport(Lorg/acra/sender/HttpSender;Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/acra/sender/HttpSender$Type;->contentType:Ljava/lang/String;

    return-object v0
.end method
