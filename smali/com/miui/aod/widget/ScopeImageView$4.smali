.class Lcom/miui/aod/widget/ScopeImageView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScopeImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/ScopeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/widget/ScopeImageView;


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/ScopeImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-boolean p1, p1, Lcom/miui/aod/widget/ScopeImageView;->mLoop:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object p1, p1, Lcom/miui/aod/widget/ScopeImageView;->mPoints:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget v0, v0, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/components/ScopePoint;

    iput-object v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mIndex:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/ScopePoint;

    iput-object p1, v0, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView$4;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
