.class public final enum Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;
.super Ljava/lang/Enum;
.source "ToDateTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToDateTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatTokenEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum AM_PM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum BC_AD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum CC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum D:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DAY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DDD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum DY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum E:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum EE:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FF:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum HH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum HH12:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum HH24:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum I:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum IY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum IYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum IYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum J:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MI:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MON:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum MONTH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum Q:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum RM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum RR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum RRRR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SCC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SSSSS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum SYYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum TZR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum Y:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum YY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum YYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

.field public static final enum YYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;


# instance fields
.field private final patternToUse:Ljava/util/regex/Pattern;

.field private final toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 540
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "YYYY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 542
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "SYYYY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SYYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 544
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "IYYY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 545
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "YYY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 546
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "IYY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 547
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "YY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 548
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "IY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 550
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "SCC"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SCC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 552
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "CC"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 554
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "RRRR"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RRRR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 556
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "RR"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 558
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "BC_AD"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    sget-object v14, Lorg/h2/util/ToDateTokenizer;->PATTERN_BC_AD:Ljava/util/regex/Pattern;

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v14}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->BC_AD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 560
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "MONTH"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MONTH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 562
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "MON"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MON:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 564
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "MM"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    const/16 v14, 0xe

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 566
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "RM"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    const/16 v14, 0xf

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 568
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "DDD"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    const/16 v14, 0x10

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DDD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 570
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "DAY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    const/16 v14, 0x11

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DAY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 572
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "DD"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    const/16 v14, 0x12

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 574
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "DY"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    const/16 v14, 0x13

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 575
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "HH24"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x14

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH24:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 576
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "HH12"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x15

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH12:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 578
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "HH"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x16

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 580
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "MI"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x17

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MI:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 582
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "SSSSS"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x18

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SSSSS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 583
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "SS"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x19

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 585
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "FF"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    sget-object v14, Lorg/h2/util/ToDateTokenizer;->PATTERN_FF:Ljava/util/regex/Pattern;

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2, v14}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->FF:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 587
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "TZH"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x1b

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 589
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "TZM"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x1c

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 591
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "TZR"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x1d

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 594
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "TZD"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    const/16 v14, 0x1e

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 596
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "AM_PM"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    sget-object v14, Lorg/h2/util/ToDateTokenizer;->PATTERN_AM_PM:Ljava/util/regex/Pattern;

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v2, v14}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->AM_PM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 600
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "EE"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v14, 0x20

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EE:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 604
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "E"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v14, 0x21

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->E:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 605
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "Y"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v14, 0x22

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->Y:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 606
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "I"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    const/16 v14, 0x23

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->I:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 608
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "Q"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    const/16 v14, 0x24

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->Q:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 610
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "D"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    const/16 v14, 0x25

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->D:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 613
    new-instance v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const-string v1, "J"

    sget-object v2, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    const/16 v14, 0x26

    invoke-direct {v0, v1, v14, v2}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;-><init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->J:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v0, 0x27

    .line 538
    new-array v0, v0, [Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v3

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SYYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v4

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IYYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v5

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v6

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IYY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v7

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->YY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v8

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->IY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v9

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SCC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v10

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CC:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v11

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RRRR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v12

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    aput-object v1, v0, v13

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->BC_AD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MONTH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MON:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->RM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DDD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DAY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->DY:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH24:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH12:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->HH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->MI:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SSSSS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->SS:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->FF:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZH:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZR:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->TZD:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->AM_PM:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EE:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->E:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->Y:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->I:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->Q:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->D:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->J:Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->$VALUES:[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EMPTY_LIST:Ljava/util/List;

    .line 618
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->values()[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/util/ToDateTokenizer$ToDateParslet;",
            ")V"
        }
    .end annotation

    .line 639
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 640
    iput-object p3, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;

    const-string p1, "^(%s)"

    const/4 p2, 0x1

    .line 641
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->patternToUse:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/h2/util/ToDateTokenizer$ToDateParslet;Ljava/util/regex/Pattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/util/ToDateTokenizer$ToDateParslet;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 630
    iput-object p3, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;

    .line 631
    iput-object p4, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->patternToUse:Ljava/util/regex/Pattern;

    return-void
.end method

.method static getTokensInQuestion(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;",
            ">;"
        }
    .end annotation

    .line 653
    sget-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EMPTY_LIST:Ljava/util/List;

    .line 654
    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 655
    invoke-static {}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->initCache()V

    :cond_0
    if-eqz p0, :cond_1

    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    .line 659
    sget-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_1
    if-nez v0, :cond_2

    .line 662
    sget-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method private static declared-synchronized initCache()V
    .locals 11

    const-class v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    monitor-enter v0

    .line 668
    :try_start_0
    sget-object v1, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_4

    .line 669
    invoke-static {}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->values()[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 671
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 673
    invoke-virtual {v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 674
    invoke-virtual {v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 675
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 676
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 679
    :cond_0
    invoke-virtual {v5}, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    .line 683
    sget-object v8, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_2

    .line 685
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 686
    sget-object v9, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->CACHE:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_2
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 693
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 667
    monitor-exit v0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;
    .locals 1

    .line 538
    const-class v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    return-object p0
.end method

.method public static values()[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;
    .locals 1

    .line 538
    sget-object v0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->$VALUES:[Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    invoke-virtual {v0}, [Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;

    return-object v0
.end method


# virtual methods
.method parseFormatStrWithToken(Lorg/h2/util/ToDateParser;)Z
    .locals 3

    .line 703
    iget-object v0, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->patternToUse:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getFormatStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 706
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v2, p0, Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;->toDateParslet:Lorg/h2/util/ToDateTokenizer$ToDateParslet;

    invoke-interface {v2, p1, p0, v0}, Lorg/h2/util/ToDateTokenizer$ToDateParslet;->parse(Lorg/h2/util/ToDateParser;Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;Ljava/lang/String;)V

    :cond_0
    return v1
.end method
