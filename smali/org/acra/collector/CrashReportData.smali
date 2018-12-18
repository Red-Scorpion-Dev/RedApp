.class public final Lorg/acra/collector/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lorg/acra/ReportField;",
        "Lorg/acra/model/Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x456cbac36662225aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getProperty(Lorg/acra/ReportField;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/acra/model/Element;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Lorg/acra/ReportField;Z)V
    .locals 1

    .line 69
    new-instance v0, Lorg/acra/model/BooleanElement;

    invoke-direct {v0, p2}, Lorg/acra/model/BooleanElement;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putNumber(Lorg/acra/ReportField;Ljava/lang/Number;)V
    .locals 1

    .line 65
    new-instance v0, Lorg/acra/model/NumberElement;

    invoke-direct {v0, p2}, Lorg/acra/model/NumberElement;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, p1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putString(Lorg/acra/ReportField;Ljava/lang/String;)V
    .locals 1

    .line 61
    new-instance v0, Lorg/acra/model/StringElement;

    invoke-direct {v0, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 1

    .line 74
    invoke-static {p0}, Lorg/acra/util/JsonUtils;->toJson(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
