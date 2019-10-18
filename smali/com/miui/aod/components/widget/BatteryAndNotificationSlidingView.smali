.class public Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;
.super Landroid/widget/LinearLayout;
.source "BatteryAndNotificationSlidingView.java"


# instance fields
.field private mBatteryBtn:Lmiui/widget/SlidingButton;

.field private mNotificationBtn:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f1100d9

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->mBatteryBtn:Lmiui/widget/SlidingButton;

    const v0, 0x7f1100da

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->mNotificationBtn:Lmiui/widget/SlidingButton;

    return-void
.end method

.method public setCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->mBatteryBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->mNotificationBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {p0, p2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public update(Lcom/miui/aod/common/StyleInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->mBatteryBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isBatterySwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/BatteryAndNotificationSlidingView;->mNotificationBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isNotificationSwitchOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
