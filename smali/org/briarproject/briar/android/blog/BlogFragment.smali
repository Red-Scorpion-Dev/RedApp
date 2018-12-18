.class public Lorg/briarproject/briar/android/blog/BlogFragment;
.super Lorg/briarproject/briar/android/fragment/BaseFragment;
.source "BlogFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;
.implements Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;
.implements Lorg/briarproject/briar/android/controller/SharingController$SharingListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.blog.BlogFragment"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

.field blogController:Lorg/briarproject/briar/android/blog/BlogController;

.field private canDeleteBlog:Z

.field private deleteButton:Landroid/view/MenuItem;

.field private groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private isMyBlog:Z

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field sharingController:Lorg/briarproject/briar/android/controller/SharingController;

.field private writeButton:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->isMyBlog:Z

    iput-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->canDeleteBlog:Z

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/blog/BlogPostAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/view/BriarRecyclerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/briarproject/briar/android/blog/BlogFragment;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->finish()V

    return-void
.end method

.method static synthetic access$1200(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/blog/BlogFragment;IZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogFragment;->displaySnackbar(IZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->setToolbarTitle(Lorg/briarproject/bramble/api/identity/Author;)V

    return-void
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/blog/BlogFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->showWriteButton()V

    return-void
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/blog/BlogFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->enableDeleteButton()V

    return-void
.end method

.method static synthetic access$800(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method static synthetic access$900(Lorg/briarproject/briar/android/blog/BlogFragment;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogFragment;->setToolbarSubTitle(II)V

    return-void
.end method

.method private deleteBlog()V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    new-instance v1, Lorg/briarproject/briar/android/blog/BlogFragment$5;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/blog/BlogFragment$5;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController;->deleteBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method private displaySnackbar(IZ)V
    .locals 2

    .line 331
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const/4 v1, 0x0

    .line 332
    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p2, :cond_0

    .line 335
    new-instance p2, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogFragment$fHpWWJ-qoU9FMLgyBE1Pmu0dCm4;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogFragment$fHpWWJ-qoU9FMLgyBE1Pmu0dCm4;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    .line 337
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 336
    invoke-virtual {p1, v0}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    const v0, 0x7f110031

    .line 339
    invoke-virtual {p1, v0, p2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 341
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method private enableDeleteButton()V
    .locals 2

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->canDeleteBlog:Z

    .line 326
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->deleteButton:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->deleteButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$displaySnackbar$0(Lorg/briarproject/briar/android/blog/BlogFragment;Landroid/view/View;)V
    .locals 1

    .line 335
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public static synthetic lambda$showDeleteDialog$1(Lorg/briarproject/briar/android/blog/BlogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 346
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->deleteBlog()V

    return-void
.end method

.method private loadBlog()V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    new-instance v1, Lorg/briarproject/briar/android/blog/BlogFragment$3;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/blog/BlogFragment$3;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController;->loadBlog(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method private loadBlogPosts(Z)V
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    new-instance v1, Lorg/briarproject/briar/android/blog/BlogFragment$2;

    invoke-direct {v1, p0, p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment$2;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;Z)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController;->loadBlogPosts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method private loadSharedContacts()V
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    new-instance v1, Lorg/briarproject/briar/android/blog/BlogFragment$4;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/blog/BlogFragment$4;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/blog/BlogController;->loadSharingContacts(Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method static newInstance(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/android/blog/BlogFragment;
    .locals 3

    .line 73
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/blog/BlogFragment;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "briar.GROUP_ID"

    .line 76
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 78
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/blog/BlogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setToolbarSubTitle(II)V
    .locals 4

    .line 311
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/activity/BriarActivity;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1101ae

    const/4 v2, 0x2

    .line 313
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {p0, v1, v2}, Lorg/briarproject/briar/android/blog/BlogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setToolbarTitle(Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 345
    new-instance v0, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogFragment$qrC-9syaoeO-0tyGCuChrtzhxyo;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/blog/-$$Lambda$BlogFragment$qrC-9syaoeO-0tyGCuChrtzhxyo;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    .line 347
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1200ca

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f11003a

    .line 349
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/blog/BlogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f11003b

    .line 351
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/blog/BlogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f110062

    const/4 v3, 0x0

    .line 352
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f11003c

    .line 353
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private showWriteButton()V
    .locals 2

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->isMyBlog:Z

    .line 320
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->writeButton:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->writeButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 184
    sget-object v0, Lorg/briarproject/briar/android/blog/BlogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 107
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/blog/BlogFragment;)V

    .line 108
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/blog/BlogController;->setBlogSharingListener(Lorg/briarproject/briar/android/blog/BlogController$BlogSharingListener;)V

    .line 109
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/controller/SharingController;->setSharingListener(Lorg/briarproject/briar/android/controller/SharingController$SharingListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-ne p2, p3, :cond_0

    const p1, 0x7f11002f

    const/4 p2, 0x1

    .line 175
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogFragment;->displaySnackbar(IZ)V

    .line 176
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/blog/BlogFragment;->loadBlogPosts(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-ne p2, p3, :cond_1

    const p1, 0x7f110057

    const/4 p2, 0x0

    .line 178
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogFragment;->displaySnackbar(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAuthorClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/briarproject/briar/android/blog/BlogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "briar.GROUP_ID"

    .line 223
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBlogInvitationAccepted(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/SharingController;->add(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 293
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/SharingController;->getTotalCount()I

    move-result p1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    .line 294
    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result v0

    .line 293
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->setToolbarSubTitle(II)V

    return-void
.end method

.method public onBlogLeft(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/controller/SharingController;->remove(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 300
    iget-object p1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {p1}, Lorg/briarproject/briar/android/controller/SharingController;->getTotalCount()I

    move-result p1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    .line 301
    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->getOnlineCount()I

    move-result v0

    .line 300
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->setToolbarSubTitle(II)V

    return-void
.end method

.method public onBlogPostAdded(Lorg/briarproject/briar/api/blog/BlogPostHeader;Z)V
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->blogController:Lorg/briarproject/briar/android/blog/BlogController;

    new-instance v1, Lorg/briarproject/briar/android/blog/BlogFragment$1;

    invoke-direct {v1, p0, p0, p2}, Lorg/briarproject/briar/android/blog/BlogFragment$1;-><init>(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/DestroyableContext;Z)V

    invoke-interface {v0, p1, v1}, Lorg/briarproject/briar/android/blog/BlogController;->loadBlogPost(Lorg/briarproject/briar/api/blog/BlogPostHeader;Lorg/briarproject/briar/android/controller/handler/ResultExceptionHandler;)V

    return-void
.end method

.method public onBlogPostClick(Lorg/briarproject/briar/android/blog/BlogPostItem;)V
    .locals 0

    .line 215
    invoke-virtual {p1}, Lorg/briarproject/briar/android/blog/BlogPostItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/briar/android/blog/BlogPostFragment;->newInstance(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/android/blog/BlogPostFragment;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method public onBlogRemoved()V
    .locals 0

    .line 377
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/high16 v0, 0x7f0d0000

    .line 131
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090039

    .line 132
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->writeButton:Landroid/view/MenuItem;

    .line 133
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->isMyBlog:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->writeButton:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f09001a

    .line 134
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->deleteButton:Landroid/view/MenuItem;

    .line 135
    iget-boolean v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->canDeleteBlog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->deleteButton:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "briar.GROUP_ID"

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    .line 90
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v0, p3}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    iput-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const p3, 0x7f0c0049

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance p2, Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    .line 95
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p2, p3, p0, v0}, Lorg/briarproject/briar/android/blog/BlogPostAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/blog/OnBlogPostClickListener;Landroid/support/v4/app/FragmentManager;)V

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    const p2, 0x7f09012e

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 97
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p3, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->adapter:Lorg/briarproject/briar/android/blog/BlogPostAdapter;

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showProgressBar()V

    .line 100
    iget-object p2, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110036

    invoke-virtual {p0, p3}, Lorg/briarproject/briar/android/blog/BlogFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(Ljava/lang/String;)V

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No group ID in args"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090039

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x4000000

    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 156
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v3, Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "briar.GROUP_ID"

    .line 159
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogFragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 150
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v3, Lorg/briarproject/briar/android/sharing/ShareBlogActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "briar.GROUP_ID"

    .line 152
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v0, 0x6

    .line 153
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 163
    :pswitch_2
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->showDeleteDialog()V

    return v2

    .line 144
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.GROUP_ID"

    .line 146
    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v0, 0x5

    .line 147
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f09001a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSharingInfoUpdated(II)V
    .locals 0

    .line 306
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/blog/BlogFragment;->setToolbarSubTitle(II)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 114
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStart()V

    .line 115
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->onStart()V

    .line 116
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->loadBlog()V

    .line 117
    invoke-direct {p0}, Lorg/briarproject/briar/android/blog/BlogFragment;->loadSharedContacts()V

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/blog/BlogFragment;->loadBlogPosts(Z)V

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 124
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseFragment;->onStop()V

    .line 125
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->sharingController:Lorg/briarproject/briar/android/controller/SharingController;

    invoke-interface {v0}, Lorg/briarproject/briar/android/controller/SharingController;->onStop()V

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogFragment;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method
