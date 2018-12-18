.class public interface abstract Lorg/h2/command/CommandInterface;
.super Ljava/lang/Object;
.source "CommandInterface.java"


# static fields
.field public static final ALTER_INDEX_RENAME:I = 0x1

.field public static final ALTER_SCHEMA_RENAME:I = 0x2

.field public static final ALTER_SEQUENCE:I = 0x36

.field public static final ALTER_TABLE_ADD_COLUMN:I = 0x7

.field public static final ALTER_TABLE_ADD_CONSTRAINT_CHECK:I = 0x3

.field public static final ALTER_TABLE_ADD_CONSTRAINT_PRIMARY_KEY:I = 0x6

.field public static final ALTER_TABLE_ADD_CONSTRAINT_REFERENTIAL:I = 0x5

.field public static final ALTER_TABLE_ADD_CONSTRAINT_UNIQUE:I = 0x4

.field public static final ALTER_TABLE_ALTER_COLUMN_CHANGE_TYPE:I = 0xb

.field public static final ALTER_TABLE_ALTER_COLUMN_DEFAULT:I = 0xa

.field public static final ALTER_TABLE_ALTER_COLUMN_NOT_NULL:I = 0x8

.field public static final ALTER_TABLE_ALTER_COLUMN_NULL:I = 0x9

.field public static final ALTER_TABLE_ALTER_COLUMN_RENAME:I = 0x10

.field public static final ALTER_TABLE_ALTER_COLUMN_SELECTIVITY:I = 0xd

.field public static final ALTER_TABLE_DROP_COLUMN:I = 0xc

.field public static final ALTER_TABLE_DROP_CONSTRAINT:I = 0xe

.field public static final ALTER_TABLE_RENAME:I = 0xf

.field public static final ALTER_TABLE_RENAME_CONSTRAINT:I = 0x55

.field public static final ALTER_TABLE_SET_REFERENTIAL_INTEGRITY:I = 0x37

.field public static final ALTER_USER_ADMIN:I = 0x11

.field public static final ALTER_USER_RENAME:I = 0x12

.field public static final ALTER_USER_SET_PASSWORD:I = 0x13

.field public static final ALTER_VIEW:I = 0x14

.field public static final ANALYZE:I = 0x15

.field public static final BACKUP:I = 0x38

.field public static final BEGIN:I = 0x53

.field public static final CALL:I = 0x39

.field public static final CHECKPOINT:I = 0x49

.field public static final CHECKPOINT_SYNC:I = 0x4c

.field public static final COMMENT:I = 0x34

.field public static final COMMIT:I = 0x47

.field public static final COMMIT_TRANSACTION:I = 0x4e

.field public static final CREATE_AGGREGATE:I = 0x16

.field public static final CREATE_ALIAS:I = 0x18

.field public static final CREATE_CONSTANT:I = 0x17

.field public static final CREATE_DOMAIN:I = 0x21

.field public static final CREATE_INDEX:I = 0x19

.field public static final CREATE_LINKED_TABLE:I = 0x1a

.field public static final CREATE_ROLE:I = 0x1b

.field public static final CREATE_SCHEMA:I = 0x1c

.field public static final CREATE_SEQUENCE:I = 0x1d

.field public static final CREATE_TABLE:I = 0x1e

.field public static final CREATE_TRIGGER:I = 0x1f

.field public static final CREATE_USER:I = 0x20

.field public static final CREATE_VIEW:I = 0x22

.field public static final DEALLOCATE:I = 0x23

.field public static final DELETE:I = 0x3a

.field public static final DROP_AGGREGATE:I = 0x24

.field public static final DROP_ALIAS:I = 0x27

.field public static final DROP_ALL_OBJECTS:I = 0x26

.field public static final DROP_CONSTANT:I = 0x25

.field public static final DROP_DOMAIN:I = 0x2f

.field public static final DROP_INDEX:I = 0x28

.field public static final DROP_ROLE:I = 0x29

.field public static final DROP_SCHEMA:I = 0x2a

.field public static final DROP_SEQUENCE:I = 0x2b

.field public static final DROP_TABLE:I = 0x2c

.field public static final DROP_TRIGGER:I = 0x2d

.field public static final DROP_USER:I = 0x2e

.field public static final DROP_VIEW:I = 0x30

.field public static final EXECUTE:I = 0x3b

.field public static final EXPLAIN:I = 0x3c

.field public static final GRANT:I = 0x31

.field public static final INSERT:I = 0x3d

.field public static final MERGE:I = 0x3e

.field public static final NO_OPERATION:I = 0x3f

.field public static final PREPARE:I = 0x33

.field public static final PREPARE_COMMIT:I = 0x4d

.field public static final REPLACE:I = 0x3f

.field public static final REVOKE:I = 0x32

.field public static final ROLLBACK:I = 0x48

.field public static final ROLLBACK_TO_SAVEPOINT:I = 0x4b

.field public static final ROLLBACK_TRANSACTION:I = 0x4f

.field public static final RUNSCRIPT:I = 0x40

.field public static final SAVEPOINT:I = 0x4a

.field public static final SCRIPT:I = 0x41

.field public static final SELECT:I = 0x42

.field public static final SET:I = 0x43

.field public static final SET_AUTOCOMMIT_FALSE:I = 0x46

.field public static final SET_AUTOCOMMIT_TRUE:I = 0x45

.field public static final SHUTDOWN:I = 0x50

.field public static final SHUTDOWN_COMPACT:I = 0x52

.field public static final SHUTDOWN_DEFRAG:I = 0x54

.field public static final SHUTDOWN_IMMEDIATELY:I = 0x51

.field public static final TRUNCATE_TABLE:I = 0x35

.field public static final UNKNOWN:I = 0x0

.field public static final UPDATE:I = 0x44


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close()V
.end method

.method public abstract executeQuery(IZ)Lorg/h2/result/ResultInterface;
.end method

.method public abstract executeUpdate()I
.end method

.method public abstract getCommandType()I
.end method

.method public abstract getMetaData()Lorg/h2/result/ResultInterface;
.end method

.method public abstract getParameters()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isQuery()Z
.end method
