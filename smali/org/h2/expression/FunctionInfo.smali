.class Lorg/h2/expression/FunctionInfo;
.super Ljava/lang/Object;
.source "FunctionInfo.java"


# instance fields
.field bufferResultSetToLocalTemp:Z

.field dataType:I

.field deterministic:Z

.field name:Ljava/lang/String;

.field nullIfParameterIsNull:Z

.field parameterCount:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/h2/expression/FunctionInfo;->bufferResultSetToLocalTemp:Z

    return-void
.end method
