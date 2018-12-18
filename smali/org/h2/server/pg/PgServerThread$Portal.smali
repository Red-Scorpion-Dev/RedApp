.class Lorg/h2/server/pg/PgServerThread$Portal;
.super Ljava/lang/Object;
.source "PgServerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/server/pg/PgServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Portal"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field prep:Lorg/h2/server/pg/PgServerThread$Prepared;

.field resultColumnFormat:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
