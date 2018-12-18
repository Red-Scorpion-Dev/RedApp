.class final enum Lorg/h2/util/ToDateParser$ConfigParam;
.super Ljava/lang/Enum;
.source "ToDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConfigParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/util/ToDateParser$ConfigParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/util/ToDateParser$ConfigParam;

.field public static final enum TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

.field public static final enum TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;


# instance fields
.field private final defaultFormatStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 204
    new-instance v0, Lorg/h2/util/ToDateParser$ConfigParam;

    const-string v1, "TO_DATE"

    const-string v2, "DD MON YYYY"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/h2/util/ToDateParser$ConfigParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/h2/util/ToDateParser$ConfigParam;->TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

    .line 205
    new-instance v0, Lorg/h2/util/ToDateParser$ConfigParam;

    const-string v1, "TO_TIMESTAMP"

    const-string v2, "DD MON YYYY HH:MI:SS"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/h2/util/ToDateParser$ConfigParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/h2/util/ToDateParser$ConfigParam;->TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;

    const/4 v0, 0x2

    .line 203
    new-array v0, v0, [Lorg/h2/util/ToDateParser$ConfigParam;

    sget-object v1, Lorg/h2/util/ToDateParser$ConfigParam;->TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

    aput-object v1, v0, v3

    sget-object v1, Lorg/h2/util/ToDateParser$ConfigParam;->TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;

    aput-object v1, v0, v4

    sput-object v0, Lorg/h2/util/ToDateParser$ConfigParam;->$VALUES:[Lorg/h2/util/ToDateParser$ConfigParam;

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

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput-object p3, p0, Lorg/h2/util/ToDateParser$ConfigParam;->defaultFormatStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/util/ToDateParser$ConfigParam;
    .locals 1

    .line 203
    const-class v0, Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/util/ToDateParser$ConfigParam;

    return-object p0
.end method

.method public static values()[Lorg/h2/util/ToDateParser$ConfigParam;
    .locals 1

    .line 203
    sget-object v0, Lorg/h2/util/ToDateParser$ConfigParam;->$VALUES:[Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-virtual {v0}, [Lorg/h2/util/ToDateParser$ConfigParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/util/ToDateParser$ConfigParam;

    return-object v0
.end method


# virtual methods
.method getDefaultFormatStr()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/h2/util/ToDateParser$ConfigParam;->defaultFormatStr:Ljava/lang/String;

    return-object v0
.end method
