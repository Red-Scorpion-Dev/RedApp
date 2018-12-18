.class public Lorg/briarproject/briar/android/conversation/ConversationViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "ConversationViewModel.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field private final contact:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final contactAuthorId:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ">;"
        }
    .end annotation
.end field

.field private final contactDeleted:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final contactName:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dbExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/contact/ContactManager;)V
    .locals 1
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 44
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contact:Landroid/arch/lifecycle/MutableLiveData;

    .line 45
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contact:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;->INSTANCE:Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$5USoJkKq_wBMRbjQobymrFTdtMg;

    .line 46
    invoke-static {p1, v0}, Landroid/arch/lifecycle/Transformations;->map(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactAuthorId:Landroid/arch/lifecycle/LiveData;

    .line 47
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contact:Landroid/arch/lifecycle/MutableLiveData;

    sget-object v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;->INSTANCE:Lorg/briarproject/briar/android/conversation/-$$Lambda$ghm79HPdplFIyjKKstZvLlI4S0g;

    .line 48
    invoke-static {p1, v0}, Landroid/arch/lifecycle/Transformations;->map(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactName:Landroid/arch/lifecycle/LiveData;

    .line 49
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactDeleted:Landroid/arch/lifecycle/MutableLiveData;

    .line 57
    iput-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->dbExecutor:Ljava/util/concurrent/Executor;

    .line 58
    iput-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 59
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactDeleted:Landroid/arch/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$loadContact$1(Lorg/briarproject/briar/android/conversation/ConversationViewModel;)V
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 75
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/contact/ContactManager;->getContact(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contact:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v3, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 78
    sget-object v2, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Loading contact"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchContactException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :catch_1
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactDeleted:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/identity/AuthorId;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p0

    invoke-virtual {p0}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setContactAlias$2(Lorg/briarproject/briar/android/conversation/ConversationViewModel;Ljava/lang/String;)V
    .locals 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lorg/briarproject/bramble/api/contact/ContactId;

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 90
    :cond_0
    invoke-interface {v0, v1, p1}, Lorg/briarproject/bramble/api/contact/ContactManager;->setContactAlias(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->loadContact()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private loadContact()V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$84zBaMmuwR5dlD6GPJnSkh4Cf4w;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$84zBaMmuwR5dlD6GPJnSkh4Cf4w;-><init>(Lorg/briarproject/briar/android/conversation/ConversationViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method getContact()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contact:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method getContactAuthorId()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactAuthorId:Landroid/arch/lifecycle/LiveData;

    return-object v0
.end method

.method getContactDisplayName()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactName:Landroid/arch/lifecycle/LiveData;

    return-object v0
.end method

.method isContactDeleted()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactDeleted:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method setContactAlias(Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->dbExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$XcyaPAb6QDHfJV0o5jdtkgo2ULo;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationViewModel$XcyaPAb6QDHfJV0o5jdtkgo2ULo;-><init>(Lorg/briarproject/briar/android/conversation/ConversationViewModel;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setContactId(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 65
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->loadContact()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
