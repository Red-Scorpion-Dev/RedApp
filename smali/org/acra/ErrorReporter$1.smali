.class Lorg/acra/ErrorReporter$1;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Lorg/acra/ExceptionHandlerInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/acra/ErrorReporter$1;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeExceptionHandler(Lorg/acra/ErrorReporter;)V
    .locals 0

    return-void
.end method
