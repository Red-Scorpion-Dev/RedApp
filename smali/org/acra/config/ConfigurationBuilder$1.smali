.class synthetic Lorg/acra/config/ConfigurationBuilder$1;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/config/ConfigurationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$acra$ReportingInteractionMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    invoke-static {}, Lorg/acra/ReportingInteractionMode;->values()[Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/acra/config/ConfigurationBuilder$1;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    :try_start_0
    sget-object v0, Lorg/acra/config/ConfigurationBuilder$1;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/acra/config/ConfigurationBuilder$1;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/acra/config/ConfigurationBuilder$1;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    sget-object v1, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
