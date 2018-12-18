.class public Lorg/briarproject/briar/android/test/TestDataActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "TestDataActivity.java"


# instance fields
.field private blogPostsSeekBar:Landroid/widget/SeekBar;

.field private blogPostsTextView:Landroid/widget/TextView;

.field private contactsSeekBar:Landroid/widget/SeekBar;

.field private contactsTextView:Landroid/widget/TextView;

.field private forumPostsSeekBar:Landroid/widget/SeekBar;

.field private forumPostsTextView:Landroid/widget/TextView;

.field private forumsSeekBar:Landroid/widget/SeekBar;

.field private forumsTextView:Landroid/widget/TextView;

.field private messagesSeekBar:Landroid/widget/SeekBar;

.field private messagesTextView:Landroid/widget/TextView;

.field testDataCreator:Lorg/briarproject/briar/api/test/TestDataCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->contactsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->messagesTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->blogPostsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumPostsSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/test/TestDataActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumPostsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private createTestData()V
    .locals 6

    .line 154
    iget-object v0, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->testDataCreator:Lorg/briarproject/briar/api/test/TestDataCreator;

    iget-object v1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->contactsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->messagesSeekBar:Landroid/widget/SeekBar;

    .line 155
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->blogPostsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumsSeekBar:Landroid/widget/SeekBar;

    .line 156
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v5, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumPostsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    .line 154
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/api/test/TestDataCreator;->createTestData(IIIII)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/test/TestDataActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lorg/briarproject/briar/android/test/TestDataActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lorg/briarproject/briar/android/test/TestDataActivity;Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lorg/briarproject/briar/android/test/TestDataActivity;->createTestData()V

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 165
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lorg/briarproject/briar/android/test/TestDataActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f0c002c

    .line 51
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->setContentView(I)V

    const p1, 0x7f090193

    .line 52
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->contactsTextView:Landroid/widget/TextView;

    const p1, 0x7f090197

    .line 53
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->messagesTextView:Landroid/widget/TextView;

    const p1, 0x7f09000c

    .line 54
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->blogPostsTextView:Landroid/widget/TextView;

    const p1, 0x7f09000e

    .line 55
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumsTextView:Landroid/widget/TextView;

    const p1, 0x7f09000d

    .line 56
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumPostsTextView:Landroid/widget/TextView;

    const p1, 0x7f09015d

    .line 57
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->contactsSeekBar:Landroid/widget/SeekBar;

    const p1, 0x7f090160

    .line 58
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->messagesSeekBar:Landroid/widget/SeekBar;

    const p1, 0x7f09015c

    .line 59
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->blogPostsSeekBar:Landroid/widget/SeekBar;

    const p1, 0x7f09015f

    .line 60
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumsSeekBar:Landroid/widget/SeekBar;

    const p1, 0x7f09015e

    .line 61
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumPostsSeekBar:Landroid/widget/SeekBar;

    .line 63
    iget-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->contactsSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lorg/briarproject/briar/android/test/TestDataActivity$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/test/TestDataActivity$1;-><init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    iget-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->messagesSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lorg/briarproject/briar/android/test/TestDataActivity$2;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/test/TestDataActivity$2;-><init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    iget-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->blogPostsSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lorg/briarproject/briar/android/test/TestDataActivity$3;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/test/TestDataActivity$3;-><init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 114
    iget-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumsSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lorg/briarproject/briar/android/test/TestDataActivity$4;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/test/TestDataActivity$4;-><init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    iget-object p1, p0, Lorg/briarproject/briar/android/test/TestDataActivity;->forumPostsSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lorg/briarproject/briar/android/test/TestDataActivity$5;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/test/TestDataActivity$5;-><init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f090058

    .line 149
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/test/TestDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/briarproject/briar/android/test/-$$Lambda$TestDataActivity$w0q6Mzhnhk2rzMRF4YNi7BRt_gs;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/test/-$$Lambda$TestDataActivity$w0q6Mzhnhk2rzMRF4YNi7BRt_gs;-><init>(Lorg/briarproject/briar/android/test/TestDataActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/briarproject/briar/android/test/TestDataActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
