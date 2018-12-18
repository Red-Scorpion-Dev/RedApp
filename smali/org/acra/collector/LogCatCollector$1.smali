.class Lorg/acra/collector/LogCatCollector$1;
.super Ljava/lang/Object;
.source "LogCatCollector.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Lorg/acra/model/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/collector/LogCatCollector;

.field final synthetic val$myPidStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/acra/collector/LogCatCollector;Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/acra/collector/LogCatCollector$1;->this$0:Lorg/acra/collector/LogCatCollector;

    iput-object p2, p0, Lorg/acra/collector/LogCatCollector$1;->val$myPidStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/acra/collector/LogCatCollector$1;->apply(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/acra/collector/LogCatCollector$1;->val$myPidStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/collector/LogCatCollector$1;->val$myPidStr:Ljava/lang/String;

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
