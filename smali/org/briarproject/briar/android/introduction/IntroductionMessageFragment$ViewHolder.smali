.class Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;
.super Ljava/lang/Object;
.source "IntroductionMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final avatar1:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final avatar2:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final contactName1:Landroid/widget/TextView;

.field private final contactName2:Landroid/widget/TextView;

.field private final message:Lorg/briarproject/briar/android/view/TextInputView;

.field private final notPossible:Landroid/widget/TextView;

.field private final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f090130

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f090049

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->avatar1:Lde/hdodenhof/circleimageview/CircleImageView;

    const v0, 0x7f09004a

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->avatar2:Lde/hdodenhof/circleimageview/CircleImageView;

    const v0, 0x7f0900fd

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->contactName1:Landroid/widget/TextView;

    const v0, 0x7f0900fe

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->contactName2:Landroid/widget/TextView;

    const v0, 0x7f0900de

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->notPossible:Landroid/widget/TextView;

    const v0, 0x7f0900dd

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/TextInputView;

    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->message:Lorg/briarproject/briar/android/view/TextInputView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lorg/briarproject/briar/android/view/TextInputView;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->message:Lorg/briarproject/briar/android/view/TextInputView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->avatar1:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->avatar2:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->contactName1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->contactName2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment$ViewHolder;->notPossible:Landroid/widget/TextView;

    return-object p0
.end method
