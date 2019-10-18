.class public Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;
.super Ljava/lang/Object;
.source "WaveLineDrawer.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/notification/WaveLineDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomInterpolator"
.end annotation


# instance fields
.field public rate:F

.field final synthetic this$0:Lcom/miui/aod/widget/notification/WaveLineDrawer;


# direct methods
.method public constructor <init>(Lcom/miui/aod/widget/notification/WaveLineDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;->this$0:Lcom/miui/aod/widget/notification/WaveLineDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;->rate:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;->rate:F

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;->rate:F

    div-float v0, p1, v0

    sub-float v0, v1, v0

    iget p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;->rate:F

    div-float/2addr p1, p0

    sub-float p0, v1, p1

    mul-float/2addr v0, p0

    sub-float p0, v1, v0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/aod/widget/notification/WaveLineDrawer$CustomInterpolator;->rate:F

    sub-float p0, v1, p0

    sub-float p1, v1, p1

    div-float p0, p1, p0

    :goto_0
    const/4 p1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
