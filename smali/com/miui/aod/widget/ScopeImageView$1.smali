.class Lcom/miui/aod/widget/ScopeImageView$1;
.super Ljava/lang/Object;
.source "ScopeImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iget v1, v1, Lcom/miui/aod/components/ScopePoint;->x:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v4, v4, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    iget v4, v4, Lcom/miui/aod/components/ScopePoint;->x:F

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iput v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mX:F

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iget v1, v1, Lcom/miui/aod/components/ScopePoint;->y:F

    mul-float/2addr v1, p1

    iget-object v4, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v4, v4, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    iget v4, v4, Lcom/miui/aod/components/ScopePoint;->y:F

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iput v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mY:F

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iget v1, v1, Lcom/miui/aod/components/ScopePoint;->w:F

    mul-float/2addr v1, p1

    iget-object v4, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v4, v4, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    iget v4, v4, Lcom/miui/aod/components/ScopePoint;->w:F

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mW:F

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iget v1, v1, Lcom/miui/aod/components/ScopePoint;->h:F

    mul-float/2addr v1, p1

    iget-object v4, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v4, v4, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    iget v4, v4, Lcom/miui/aod/components/ScopePoint;->h:F

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/miui/aod/widget/ScopeImageView;->mH:F

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mEnd:Lcom/miui/aod/components/ScopePoint;

    iget v1, v1, Lcom/miui/aod/components/ScopePoint;->r:F

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object v1, v1, Lcom/miui/aod/widget/ScopeImageView;->mStart:Lcom/miui/aod/components/ScopePoint;

    iget v1, v1, Lcom/miui/aod/components/ScopePoint;->r:F

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    iput p1, v0, Lcom/miui/aod/widget/ScopeImageView;->mRotate:F

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/aod/widget/ScopeImageView;->mNeedDrawBitmap:Z

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {p1, v2}, Lcom/miui/aod/widget/ScopeImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView$1;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeImageView;->invalidate()V

    return-void
.end method
