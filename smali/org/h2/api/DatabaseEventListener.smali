.class public interface abstract Lorg/h2/api/DatabaseEventListener;
.super Ljava/lang/Object;
.source "DatabaseEventListener.java"

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field public static final STATE_BACKUP_FILE:I = 0x3

.field public static final STATE_CREATE_INDEX:I = 0x1

.field public static final STATE_RECONNECTED:I = 0x4

.field public static final STATE_RECOVER:I = 0x2

.field public static final STATE_SCAN_FILE:I = 0x0

.field public static final STATE_STATEMENT_END:I = 0x6

.field public static final STATE_STATEMENT_PROGRESS:I = 0x7

.field public static final STATE_STATEMENT_START:I = 0x5


# virtual methods
.method public abstract closingDatabase()V
.end method

.method public abstract exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract opened()V
.end method

.method public abstract setProgress(ILjava/lang/String;II)V
.end method
