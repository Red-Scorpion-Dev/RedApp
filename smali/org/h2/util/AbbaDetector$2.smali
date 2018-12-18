.class final Lorg/h2/util/AbbaDetector$2;
.super Ljava/lang/SecurityManager;
.source "AbbaDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/AbbaDetector;->begin(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/h2/util/AbbaDetector$2;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/h2/util/AbbaDetector$2;->clazz:Ljava/lang/Class;

    return-void
.end method
