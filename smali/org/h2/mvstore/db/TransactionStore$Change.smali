.class public Lorg/h2/mvstore/db/TransactionStore$Change;
.super Ljava/lang/Object;
.source "TransactionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/TransactionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field public mapName:Ljava/lang/String;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
