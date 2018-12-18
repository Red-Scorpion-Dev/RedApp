.class public interface abstract Lorg/h2/engine/DbObject;
.super Ljava/lang/Object;
.source "DbObject.java"


# static fields
.field public static final AGGREGATE:I = 0xe

.field public static final COMMENT:I = 0xd

.field public static final CONSTANT:I = 0xb

.field public static final CONSTRAINT:I = 0x5

.field public static final FUNCTION_ALIAS:I = 0x9

.field public static final INDEX:I = 0x1

.field public static final RIGHT:I = 0x8

.field public static final ROLE:I = 0x7

.field public static final SCHEMA:I = 0xa

.field public static final SEQUENCE:I = 0x3

.field public static final SETTING:I = 0x6

.field public static final TABLE_OR_VIEW:I = 0x0

.field public static final TRIGGER:I = 0x4

.field public static final USER:I = 0x2

.field public static final USER_DATATYPE:I = 0xc


# virtual methods
.method public abstract checkRename()V
.end method

.method public abstract getChildren()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCreateSQL()Ljava/lang/String;
.end method

.method public abstract getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDatabase()Lorg/h2/engine/Database;
.end method

.method public abstract getDropSQL()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSQL()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract isTemporary()Z
.end method

.method public abstract removeChildrenAndResources(Lorg/h2/engine/Session;)V
.end method

.method public abstract rename(Ljava/lang/String;)V
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setTemporary(Z)V
.end method
