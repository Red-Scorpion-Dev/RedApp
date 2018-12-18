.class synthetic Lorg/acra/collector/MemoryInfoCollector$1;
.super Ljava/lang/Object;
.source "MemoryInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/collector/MemoryInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$acra$ReportField:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    invoke-static {}, Lorg/acra/ReportField;->values()[Lorg/acra/ReportField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/acra/collector/MemoryInfoCollector$1;->$SwitchMap$org$acra$ReportField:[I

    :try_start_0
    sget-object v0, Lorg/acra/collector/MemoryInfoCollector$1;->$SwitchMap$org$acra$ReportField:[I

    sget-object v1, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/acra/collector/MemoryInfoCollector$1;->$SwitchMap$org$acra$ReportField:[I

    sget-object v1, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/acra/collector/MemoryInfoCollector$1;->$SwitchMap$org$acra$ReportField:[I

    sget-object v1, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
