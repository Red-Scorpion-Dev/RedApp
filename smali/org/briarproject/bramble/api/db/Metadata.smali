.class public Lorg/briarproject/bramble/api/db/Metadata;
.super Ljava/util/TreeMap;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# static fields
.field public static final REMOVE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    sput-object v0, Lorg/briarproject/bramble/api/db/Metadata;->REMOVE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-void
.end method
