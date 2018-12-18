.class public abstract Lorg/briarproject/briar/android/threaded/ThreadListActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "ThreadListActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/controller/SharingController$SharingListener;
.implements Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener;
.implements Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListDataSource;
.implements Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener;
.implements Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<G:",
        "Lorg/briarproject/briar/api/client/NamedGroup;",
        "I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        "A:",
        "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter<",
        "TI;>;>",
        "Lorg/briarproject/briar/android/activity/BriarActivity;",
        "Lorg/briarproject/briar/android/controller/SharingController$SharingListener;",
        "Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$ThreadItemListener<",
        "TI;>;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListDataSource;",
        "Lorg/briarproject/briar/android/threaded/ThreadListController$ThreadListListener<",
        "TI;>;",
        "Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field protected static final KEY_REPLY_ID:Ljava/lang/String; = "replyId"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private downButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

.field protected groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field protected list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field private replyId:Lorg/briarproject/bramble/api/sync/MessageId;

.field protected sharingController:Lorg/briarproject/briar/android/controller/SharingController;

.field protected textInput:Lorg/briarproject/briar/android/view/TextInputView;

.field private upButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateUnreadCount()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItemList;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->displayItems(Lorg/briarproject/briar/android/threaded/ThreadItemList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateTextInput()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 50
    sget-object v0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->scrollToItemAtTop(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    return-void
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItem;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->addItem(Lorg/briarproject/briar/android/threaded/ThreadItem;Z)V

    return-void
.end method

.method private addItem(Lorg/briarproject/briar/android/threaded/ThreadItem;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->incrementRevision()V

    .line 392
    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getParentId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->contains(Lorg/briarproject/bramble/api/sync/MessageId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    sget-object p1, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Ignoring item with missing parent"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->add(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    if-eqz p2, :cond_1

    .line 402
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getItemPostedString()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->displaySnackbar(I)V

    .line 403
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->scrollToItemAtTop(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateUnreadCount()V

    :goto_0
    return-void
.end method

.method private displayItems(Lorg/briarproject/briar/android/threaded/ThreadItemList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
            "TI;>;)V"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->setItems(Ljava/util/Collection;)V

    .line 205
    invoke-interface {p1}, Lorg/briarproject/briar/android/threaded/ThreadItemList;->getFirstVisibleItemId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->setItemWithIdVisible(Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 208
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateUnreadCount()V

    .line 209
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getVisibleUnreadPosTop()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Landroid/view/View;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getVisibleUnreadPosBottom()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private scrollToItemAtTop(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->findItemPosition(Lorg/briarproject/briar/android/threaded/ThreadItem;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private updateTextInput()V
    .locals 2

    .line 340
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    const v1, 0x7f1100b7

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setHint(I)V

    .line 342
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/TextInputView;->requestFocus()Z

    .line 343
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/TextInputView;->showSoftKeyboard()V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setHint(I)V

    .line 347
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->setHighlightedItem(Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method private updateUnreadCount()V
    .locals 4

    .line 410
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getUnreadCount()Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;

    move-result-object v0

    .line 411
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    sget-object v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating unread count: top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 415
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->upButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

    iget v2, v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;->top:I

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->setUnreadCount(I)V

    .line 416
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->downButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

    iget v0, v0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;->bottom:I

    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->setUnreadCount(I)V

    return-void
.end method


# virtual methods
.method protected abstract createAdapter(Landroid/support/v7/widget/LinearLayoutManager;)Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/LinearLayoutManager;",
            ")TA;"
        }
    .end annotation
.end method

.method protected displaySnackbar(I)V
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 336
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method protected abstract getController()Lorg/briarproject/briar/android/threaded/ThreadListController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/android/threaded/ThreadListController<",
            "TG;TI;>;"
        }
    .end annotation
.end method

.method public getFirstVisibleMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 148
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 149
    iget-object v2, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v2, v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getItemAt(I)Lorg/briarproject/briar/android/threaded/ThreadItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method protected abstract getItemPostedString()I
.end method

.method protected abstract getMaxTextLength()I
.end method

.method protected loadItems()V
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getRevision()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getController()Lorg/briarproject/briar/android/threaded/ThreadListController;

    move-result-object v1

    new-instance v2, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;

    invoke-direct {v2, p0, p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$3;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;I)V

    invoke-interface {v1, v2}, Lorg/briarproject/briar/android/threaded/ThreadListController;->loadItems(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method protected loadNamedGroup()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getController()Lorg/briarproject/briar/android/threaded/ThreadListController;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListController;->loadNamedGroup(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method protected loadSharingContacts()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getController()Lorg/briarproject/briar/android/threaded/ThreadListController;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$4;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListController;->loadSharingContacts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getHighlightedItem()Lorg/briarproject/briar/android/threaded/ThreadItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->setText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 271
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateTextInput()V

    goto :goto_0

    .line 273
    :cond_0
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c002d

    .line 80
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "briar.GROUP_ID"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 86
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getController()Lorg/briarproject/briar/android/threaded/ThreadListController;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListController;->setGroupId(Lorg/briarproject/bramble/api/sync/GroupId;)V

    const v0, 0x7f090198

    .line 88
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/TextInputView;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    .line 89
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0, p0}, Lorg/briarproject/briar/android/view/TextInputView;->setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V

    const v0, 0x7f0900eb

    .line 90
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 91
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setItemPrefetchEnabled(Z)V

    .line 94
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->createAdapter(Landroid/support/v7/widget/LinearLayoutManager;)Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    .line 96
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity$1;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$1;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const v0, 0x7f0901b3

    .line 119
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/UnreadMessageButton;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->upButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

    const v0, 0x7f090095

    .line 120
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/view/UnreadMessageButton;

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->downButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

    .line 121
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->upButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

    new-instance v1, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListActivity$F2u1Y8CGqYnUzFgbRwcegFwWZPw;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListActivity$F2u1Y8CGqYnUzFgbRwcegFwWZPw;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->downButton:Lorg/briarproject/briar/android/view/UnreadMessageButton;

    new-instance v1, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListActivity$ef9Xi2LTqtaSvMuXq51SotwPayM;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/threaded/-$$Lambda$ThreadListActivity$ef9Xi2LTqtaSvMuXq51SotwPayM;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/UnreadMessageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const-string v0, "replyId"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 139
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/controller/SharingController;->setSharingListener(Lorg/briarproject/briar/android/controller/SharingController$SharingListener;)V

    .line 140
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadSharingContacts()V

    return-void

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No GroupId in intent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onGroupRemoved()V
    .locals 0

    .line 387
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/SharingController;->add(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 313
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/SharingController;->getTotalCount()I

    move-result p1

    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    .line 314
    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result v0

    .line 313
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->setToolbarSubTitle(II)V

    return-void
.end method

.method public bridge synthetic onItemReceived(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onItemReceived(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    return-void
.end method

.method public onItemReceived(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->addItem(Lorg/briarproject/briar/android/threaded/ThreadItem;Z)V

    return-void
.end method

.method protected abstract onNamedGroupLoaded(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TG;)V"
        }
    .end annotation
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 262
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->supportFinishAfterTransition()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onReplyClick(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onReplyClick(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    return-void
.end method

.method public onReplyClick(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 288
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateTextInput()V

    .line 290
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/TextInputView;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->scrollToItemAtTop(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    new-instance v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$5;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/TextInputView;->addOnKeyboardShownListener(Lorg/thoughtcrime/securesms/components/KeyboardAwareLinearLayout$OnKeyboardShownListener;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    if-eqz v0, :cond_0

    const-string v0, "replyId"

    .line 251
    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/MessageId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public onSendClick(Ljava/lang/String;)V
    .locals 3

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getMaxTextLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->utf8IsTooLong(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1101c5

    .line 355
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->displaySnackbar(I)V

    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->adapter:Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;->getHighlightedItem()Lorg/briarproject/briar/android/threaded/ThreadItem;

    move-result-object v0

    .line 359
    new-instance v1, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;-><init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    .line 371
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getController()Lorg/briarproject/briar/android/threaded/ThreadListController;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lorg/briarproject/briar/android/threaded/ThreadListController;->createAndStoreMessage(Ljava/lang/String;Lorg/briarproject/briar/android/threaded/ThreadItem;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    .line 372
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/TextInputView;->hideSoftKeyboard()V

    .line 373
    iget-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->textInput:Lorg/briarproject/briar/android/view/TextInputView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->replyId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 375
    invoke-direct {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->updateTextInput()V

    return-void
.end method

.method public onSharingInfoUpdated(II)V
    .locals 0

    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->setToolbarSubTitle(II)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 233
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 234
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->onStart()V

    .line 235
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadItems()V

    .line 236
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 242
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 243
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->onStop()V

    .line 244
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method

.method public bridge synthetic onUnreadItemVisible(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onUnreadItemVisible(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    return-void
.end method

.method public onUnreadItemVisible(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 279
    invoke-virtual {p1}, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadItem;->setRead(Z)V

    .line 281
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getController()Lorg/briarproject/briar/android/threaded/ThreadListController;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListController;->markItemRead(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    :cond_0
    return-void
.end method

.method protected setToolbarSubTitle(II)V
    .locals 4

    .line 318
    invoke-virtual {p0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1101ae

    const/4 v2, 0x2

    .line 320
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {p0, v1, v2}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
