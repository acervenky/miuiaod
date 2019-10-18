.class Lcom/miui/aod/components/widget/ClockPanelSelectView$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ClockPanelSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/widget/ClockPanelSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$1;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    const p0, 0x3e23d70a    # 0.16f

    return p0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
