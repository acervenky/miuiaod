.class public Lcom/miui/aod/AODBatteryMeterView;
.super Lcom/miui/aod/widget/GradientLinearLayout;
.source "AODBatteryMeterView.java"

# interfaces
.implements Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryController:Lcom/miui/aod/util/BatteryController;

.field private mBatteryIconView:Lcom/miui/aod/widget/BatteryMeterIconView;

.field private mBatteryTextDigitView:Landroid/widget/TextView;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mIconId:I

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/aod/AODBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/AODBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/aod/widget/GradientLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x7f080000

    iput p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mIconId:I

    iput-object p1, p0, Lcom/miui/aod/AODBatteryMeterView;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/aod/AODBatteryMeterView;->setOrientation(I)V

    const p1, 0x800013

    invoke-virtual {p0, p1}, Lcom/miui/aod/AODBatteryMeterView;->setGravity(I)V

    return-void
.end method

.method private getIconId()I
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/AODBatteryMeterView;->mCharging:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080001

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7f080000

    :goto_0
    return p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/widget/GradientLinearLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/miui/aod/AODApplication;->getBatteryController()Lcom/miui/aod/util/BatteryController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryController:Lcom/miui/aod/util/BatteryController;

    iget-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryController:Lcom/miui/aod/util/BatteryController;

    invoke-virtual {v0, p0}, Lcom/miui/aod/util/BatteryController;->addCallback(Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 7

    iget-boolean p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mCharging:Z

    if-eq p3, p2, :cond_0

    iput-boolean p3, p0, Lcom/miui/aod/AODBatteryMeterView;->mCharging:Z

    iget-object p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/miui/aod/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/aod/BatteryIcon;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/aod/BatteryIcon;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryIconView:Lcom/miui/aod/widget/BatteryMeterIconView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/aod/widget/BatteryMeterIconView;->update(IZZZZZ)V

    iget p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/miui/aod/AODBatteryMeterView;->getIconId()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mLevel:I

    if-eq p1, p2, :cond_3

    :cond_1
    iput p1, p0, Lcom/miui/aod/AODBatteryMeterView;->mLevel:I

    iput-boolean p3, p0, Lcom/miui/aod/AODBatteryMeterView;->mCharging:Z

    invoke-direct {p0}, Lcom/miui/aod/AODBatteryMeterView;->getIconId()I

    move-result p2

    iput p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mIconId:I

    iget-object p2, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryIconView:Lcom/miui/aod/widget/BatteryMeterIconView;

    invoke-virtual {p0}, Lcom/miui/aod/AODBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_2

    const p3, 0x7f09001e

    goto :goto_0

    :cond_2
    const p3, 0x7f09001d

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/aod/widget/BatteryMeterIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/aod/AODBatteryMeterView;->update()V

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/widget/GradientLinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryController:Lcom/miui/aod/util/BatteryController;

    invoke-virtual {v0, p0}, Lcom/miui/aod/util/BatteryController;->removeCallback(Lcom/miui/aod/util/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/miui/aod/widget/GradientLinearLayout;->onFinishInflate()V

    const v0, 0x7f1100b8

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/BatteryMeterIconView;

    iput-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryIconView:Lcom/miui/aod/widget/BatteryMeterIconView;

    const v0, 0x7f1100b7

    invoke-virtual {p0, v0}, Lcom/miui/aod/AODBatteryMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    return-void
.end method

.method public update()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/AODBatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/aod/AODBatteryMeterView;->mLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/aod/AODBatteryMeterView;->invalidate()V

    return-void
.end method
