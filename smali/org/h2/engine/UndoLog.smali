.class public Lorg/h2/engine/UndoLog;
.super Ljava/lang/Object;
.source "UndoLog.java"


# instance fields
.field private final database:Lorg/h2/engine/Database;

.field private file:Lorg/h2/store/FileStore;

.field private final largeTransactions:Z

.field private memoryUndo:I

.field private final records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/UndoLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private rowBuff:Lorg/h2/store/Data;

.field private storedEntries:I

.field private final storedEntriesPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/h2/engine/Session;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    .line 23
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    .line 38
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->largeTransactions:Z

    iput-boolean p1, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    return-void
.end method

.method private saveIfPossible(Lorg/h2/engine/UndoLogRecord;Lorg/h2/store/Data;)V
    .locals 1

    .line 210
    invoke-virtual {p1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/UndoLogRecord;->canStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, p2, v0, p0}, Lorg/h2/engine/UndoLogRecord;->save(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V

    .line 212
    iget p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    :cond_0
    return-void
.end method


# virtual methods
.method add(Lorg/h2/engine/UndoLogRecord;)V
    .locals 7

    .line 154
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-boolean v0, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    const-wide/16 v1, 0x30

    const/16 v3, 0x1000

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 156
    iget p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    .line 157
    iget p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMaxMemoryUndo()I

    move-result v0

    if-le p1, v0, :cond_8

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p1

    if-nez p1, :cond_8

    .line 160
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->createTempFile()Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    const-string v5, "rw"

    invoke-virtual {v0, p1, v5, v4}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    .line 163
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v4}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    .line 164
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v1, v2}, Lorg/h2/store/FileStore;->setLength(J)V

    .line 166
    :cond_0
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-static {p1, v3}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 168
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UndoLogRecord;

    .line 169
    invoke-virtual {p1, v3}, Lorg/h2/store/Data;->checkCapacity(I)V

    .line 170
    invoke-virtual {v1, p1, p0}, Lorg/h2/engine/UndoLogRecord;->append(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    .line 171
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v1

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_2

    .line 172
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v2}, Lorg/h2/store/FileStore;->getFilePointer()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lorg/h2/store/FileStore;->write([BII)V

    .line 174
    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    iget p1, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    .line 178
    iput v4, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    .line 179
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/FileStore;->autoDelete()V

    return-void

    .line 184
    :cond_4
    invoke-virtual {p1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v0

    if-nez v0, :cond_5

    .line 185
    iget v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    .line 187
    :cond_5
    iget v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v5, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getMaxMemoryUndo()I

    move-result v5

    if-le v0, v5, :cond_8

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-nez v0, :cond_8

    .line 190
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    if-nez v0, :cond_6

    .line 191
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->createTempFile()Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    const-string v5, "rw"

    invoke-virtual {v0, p1, v5, v4}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    .line 193
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v4}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    .line 194
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    .line 195
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-static {p1, v3}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    .line 196
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    .line 197
    :goto_1
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 198
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/UndoLogRecord;

    .line 199
    invoke-direct {p0, v0, p1}, Lorg/h2/engine/UndoLog;->saveIfPossible(Lorg/h2/engine/UndoLogRecord;Lorg/h2/store/Data;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :cond_6
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    invoke-direct {p0, p1, v0}, Lorg/h2/engine/UndoLog;->saveIfPossible(Lorg/h2/engine/UndoLogRecord;Lorg/h2/store/Data;)V

    .line 204
    :cond_7
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/FileStore;->autoDelete()V

    :cond_8
    return-void
.end method

.method clear()V
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    .line 63
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 64
    iput v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    .line 65
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeAndDeleteSilently()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    .line 68
    iput-object v0, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    :cond_0
    return-void
.end method

.method public getLast()Lorg/h2/engine/UndoLogRecord;
    .locals 8

    .line 78
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 79
    iget-boolean v1, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-gez v0, :cond_1

    .line 80
    iget v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    if-lez v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 82
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 83
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 86
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-static {v1, v0}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v1

    .line 87
    iget-object v5, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v5, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    .line 88
    iget-object v5, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 89
    :goto_0
    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 90
    invoke-static {v1, p0}, Lorg/h2/engine/UndoLogRecord;->loadFromBuffer(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)Lorg/h2/engine/UndoLogRecord;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget v5, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    goto :goto_0

    .line 94
    :cond_0
    iget v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    .line 95
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v3, v4}, Lorg/h2/store/FileStore;->setLength(J)V

    .line 96
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UndoLogRecord;

    .line 101
    invoke-virtual {v1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    iget-object v3, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMaxMemoryUndo()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v3, v0, :cond_4

    .line 105
    iget-object v5, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/engine/UndoLogRecord;

    .line 106
    invoke-virtual {v5}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    iget-object v6, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    iget-object v7, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v5, v6, v7, p0}, Lorg/h2/engine/UndoLogRecord;->load(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V

    .line 108
    iget v6, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    if-nez v4, :cond_3

    move-object v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v2, v0, :cond_5

    .line 115
    iget-object v3, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/UndoLogRecord;

    .line 116
    invoke-virtual {v3}, Lorg/h2/engine/UndoLogRecord;->invalidatePos()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {v4}, Lorg/h2/engine/UndoLogRecord;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/h2/engine/UndoLog;->seek(J)V

    :cond_6
    return-object v1
.end method

.method getTable(I)Lorg/h2/table/Table;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/Table;

    return-object p1
.end method

.method getTableId(Lorg/h2/table/Table;)I
    .locals 3

    .line 224
    invoke-virtual {p1}, Lorg/h2/table/Table;->getId()I

    move-result v0

    .line 225
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 226
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method removeLast(Z)V
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 139
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UndoLogRecord;

    .line 140
    invoke-virtual {v1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget v1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x400

    if-le v0, p1, :cond_1

    and-int/lit16 p1, v0, 0x3ff

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_1
    return-void
.end method

.method seek(J)V
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    const-wide/16 v1, 0x10

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/FileStore;->seek(J)V

    return-void
.end method

.method size()I
    .locals 2

    .line 47
    iget-boolean v0, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 50
    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 51
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
