.class public interface abstract Lorg/h2/store/InDoubtTransaction;
.super Ljava/lang/Object;
.source "InDoubtTransaction.java"


# static fields
.field public static final COMMIT:I = 0x1

.field public static final IN_DOUBT:I = 0x0

.field public static final ROLLBACK:I = 0x2


# virtual methods
.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract getTransactionName()Ljava/lang/String;
.end method

.method public abstract setState(I)V
.end method
